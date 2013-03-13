#include <stdio.h>
#include <string.h>

#include "pool.h"
#include "ast.h"

void
print_constant(Constant *con)
{
	int i, c;
	long *n;

	c = con->count;
	n = con->elems;

	for (i = 0; i < c; i++)
		printf("%ld ", *n++);
}

void
print_variable(Variable *var)
{
	printf("%s", var->name);
}

void
print_function(Function *func)
{
	int i, c;
	Expression **es;

	printf("{\n");

	c = func->count;
	es = func->stmts;

	for (i = 0; i < c; i++) {
		print_expression(*es++);
		printf("\n");
	}

	printf("\n}\n");

	return;
}

void 
print_expression(Expression *exp) 
{
	if (exp->tgt != NULL) {
		print_variable(exp->tgt);
		printf("←");
	}

	switch (exp->type) {
	case EXPR_LIT: 
		print_constant(exp->value); 
		break;
	case EXPR_VAR: 
		print_variable(exp->value); 
		break;
	case EXPR_APP:
		print_application(exp->value);
		break;
	}
}

void
print_application(Application *app)
{
	Expression *lft;

	lft = app->lft;

	if (lft != NULL) {
		switch (lft->type) {
		case EXPR_LIT:
			print_constant(lft->value);
			break;
		case EXPR_VAR:
			print_variable(lft->value);
			break;
		case EXPR_APP:
			printf("(");
			print_application(lft->value);
			printf(")");
			break;
		}
	}
	
	printf(" ");
	print_variable(app->fn);
	printf(" ");
	print_expression(app->rgt);
}

void
print_global(Global *global)
{
        printf("%s←", global->var->name);

	switch (global->type) {
		case GLOBAL_CONST:
			print_constant(global->value);
			break;
		case GLOBAL_FUNC:
			print_function(global->value);
			break;
	}


        return;
}

void
print_module(Module *module)
{
        int i;

        for (i=0; i < module->count; i++) {
                print_global(module->globals[i]);
                printf("\n");
        }

        return;
}

Module *
new_module(Pool *p, int count)
{
	size_t s;
	Module *res;
	Global **buf;

	s = sizeof(Module) + count * sizeof(Global *);
	
	if ((buf = pool_alloc(p, s)) == NULL) {
		fprintf(stderr, "new_module: failed to create node");
		return NULL;
	}
	
	res = (Module *) (buf + count);
	res->count = count;
	res->globals = buf;

	return res;
}

Global *
new_global(Pool *p, Variable *v, enum global_type t, void *val)
{
	Global *res;

	res = NEW_NODE(p, Global);

	res->var = v;
	res->type = t;
	res->value = val;

	return res;
}

Constant *
new_constant(Pool *p, int count)
{
	size_t s;
	Constant *res;
	long *buf;

	s = sizeof(Constant) + count * sizeof(long);

	if ((buf = pool_alloc(p, s)) == NULL) {
		fprintf(stderr, "new_constant: failed to create node");
		return NULL;
	}

	res = (Constant *) (buf + count);
	res->count = count;
	res->elems = buf;

	return res;
}

Function *
new_function(Pool *p, Expression **es, int c)
{
	Function *res;

	res = NEW_NODE(p, Function);

	res->count = c;
	res->stmts = es;
	
	return res;
}

Expression *
new_expression(Pool *p, enum expr_type t, Variable *nam, void *val) 
{
	Expression *exp;

	exp = NEW_NODE(p, Expression);

	exp->type = t;
	exp->tgt = nam;
	exp->value = val;

	return exp;
}

Application *
new_application(Pool *p, Variable *fn, Expression *lft, Expression *rgt)
{
	Application *app;

	app = NEW_NODE(p, Application);

	app->fn = fn;
	app->lft = lft;
	app->rgt = rgt;

	return app;
}

Variable *
new_variable(Pool *p, char *n, int l)
{
	char *str;
	Variable *res;

	res = NEW_NODE(p, Variable);
	str = pool_alloc(p, sizeof(char) * (l + 1));

	strncpy(str, n, l);
	res->name = str;

	return res;
}

Integer *
new_int(Pool *p, long v)
{
	Integer *res;

	res = NEW_NODE(p, Integer);

	res->value = v;

	return res;
}

Module *
copy_module(Pool *p, Module *m)
{
	int i, c;
	Module *res;
	Global **tgs, **sgs;

	c = m->count;
	res = new_module(p, c);
	tgs = res->globals;
	sgs = m->globals;
	res->count = c;

	for (i = 0; i < c; i++) 
		*tgs++ = *sgs++;

	return res;
}

Global *
copy_global(Pool *p, Global *g)
{
	Variable *v;
	enum global_type t;
	void *val;

	v = copy_variable(p, g->var);
	t = g->type;
	switch (t) {
		case GLOBAL_FUNC:
			val = copy_function(p, g->value);
			break;
		case GLOBAL_CONST:
			val = copy_constant(p, g->value);
			break;
	}

	return new_global(p, v, t, val);
}

Constant *
copy_constant(Pool *p, Constant *cnst)
{
	int i, c;
	Constant *res;
	long *tns, *sns;

	c = cnst->count;
	res = new_constant(p, c);
	res->count = c;
	tns = res->elems;
	sns = cnst->elems;

	for (i = 0; i < c; i++)
		*tns++ = *sns++;

	return res;
}

Function *
copy_function(Pool *p, Function *ofn)
{
	int i, c;
	Expression **es, **esi, **stmts;
	Function *fn;
	
	c = ofn->count;
	stmts = ofn->stmts;
	esi = es = pool_alloc(p, c * sizeof(Expression *));
	
	for (i = 0; i < c; i++)
		*esi++ = copy_expression(p, *stmts++);

	fn = NEW_NODE(p, Function);

	fn->count = c;
	fn->stmts = es;
	
	return fn;
}

Expression *
copy_expression(Pool *p, Expression *oe)
{
	Expression *exp;

	exp = NEW_NODE(p, Expression);

	exp->type = oe->type;
	exp->tgt = oe->tgt == NULL ? NULL : copy_variable(p, oe->tgt);
	
	switch (exp->type) {
	case EXPR_LIT:
		exp->value = copy_constant(p, exp->value);
		break;
	case EXPR_VAR:
		exp->value = copy_variable(p, exp->value);
		break;
	case EXPR_APP:
		exp->value = copy_application(p, exp->value);
		break;
	}

	return exp;
}

Application *
copy_application(Pool *p, Application *oa)
{
	Application *app;

	app = NEW_NODE(p, Application);

	app->fn = copy_variable(p, oa->fn);
	app->lft = oa->lft == NULL ? NULL : copy_expression(p, oa->lft);
	app->rgt = copy_expression(p, oa->rgt);

	return app;
}

Variable *
copy_variable(Pool *p, Variable *var)
{
	return new_variable(p, var->name, strlen(var->name));
}

Integer *
copy_int(Pool *p, Integer *n)
{
	return new_int(p, n->value);
}

