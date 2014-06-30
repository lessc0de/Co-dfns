VarType←{(⍺[;1],0)[⍺[;0]⍳⊂⍵]}
Split←{' '((≠(/∘⊢)(1,(1↓(¯1⌽=))))⊂(≠(/∘⊢)⊢))⍵}
Sel←{~∨/⍺:⍵ ⋄ g←⍵⍵⍣(⊢/⍺) ⋄ 2=⍴⍺:⍺⍺⍣(⊣/⍺)g ⍵ ⋄ (¯1↓⍺)⍺⍺ g ⍵}
Prop←{(¯1⌽P∊⊂⍺)/P←(⊂''),,↑⍵[;3]}
Kids←{((⍺+⊃⍵)=0⌷⍉⍵)⊂[0]⍵}
GEPI←{{ConstInt(Int32Type)⍵ 0}¨⍵}
Eachk←{(1↑⍵)⍪⊃⍪/(+\(⊃=⊢)0⌷⍉k←1↓⍵)(⊂⍺⍺)⌸k}
Comment←{⍺}
ByElem←{(⍺[;1]∊⊂⍵)⌿⍺}
ByDepth←{(⍵=⍺[;0])⌿⍺}
Bind←{
  (A⍳⊂'name')≥⍴A←0⌷⍉⊃0 3⌷Ast←⍵:Ast⊣(⊃0 3⌷Ast)⍪←'name'⍺
  Ast⊣((0 3)(Ni 1)⊃Ast){⍺,⍵,⍨' ' ''⊃⍨0=⍴⍺}←⍺
}
E←{⍎'⎕SIGNAL ',⍕⍵}