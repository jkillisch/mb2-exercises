library(DiagrammeR)

grViz(
  "
digraph decision_tree {
  node [shape=box, style=filled, color=lightblue]

Start -> 'Münze A Kopf' [label='P(X₁ = Kopf) = .5']
Start -> 'Münze A Zahl' [label='P(X₁ = Zahl) = .5']

'Münze A Kopf' -> 'Münze B Kopf' [label='P(X₂ = Kopf) = .7']
'Münze A Kopf' -> 'Münze B Zahl' [label='P(X₂ = Zahl) = .3']

'Münze A Zahl' -> 'Münze B Kopf ' [label='P(X₂ = Kopf) = .7']
'Münze A Zahl' -> 'Münze B Zahl ' [label='P(X₂ = Zahl) = .3']

'Münze B Kopf' -> end1 [color=transparent]
'Münze B Zahl' -> end2 [color=transparent]
'Münze B Kopf ' -> end3 [color=transparent]
'Münze B Zahl ' -> end4 [color=transparent]

end1 [color=transparent, label='P(X₁ = Kopf ∩ X₂ = Kopf) = .35']
end2 [color=transparent, label='P(X₁ = Kopf ∩ X₂ = Zahl) = .15']
end3 [color=transparent, label='P(X₁ = Zahl ∩ X₂ = Kopf) = .35']
end4 [color=transparent, label='P(X₁ = Zahl ∩ X₂ = Zahl) = .15']
}
"
)

grViz(
  "
digraph decision_tree {
  node [shape=box, style=filled, color=lightblue]

Start -> 'Item 1 gelöst' [label='P(U₁ = 1 | θ)']
Start -> 'Item 1 nicht gelöst' [label='P(U₁ = 0 | θ)']

'Item 1 gelöst' -> 'Item 2 gelöst' [label='P(U₂ = 1 | θ)']
'Item 1 gelöst' -> 'Item 2 nicht gelöst' [label='P(U₂ = 0 | θ)']

'Item 1 nicht gelöst' -> 'Item 2 gelöst ' [label='P(U₂ = 1 | θ)']
'Item 1 nicht gelöst' -> 'Item 2 nicht gelöst ' [label='P(U₂ = 0 | θ)']

'Item 2 gelöst' -> end1 [color=transparent]
'Item 2 nicht gelöst' -> end2 [color=transparent]
'Item 2 gelöst ' -> end3 [color=transparent]
'Item 2 nicht gelöst ' -> end4 [color=transparent]

end1 [color=transparent, label='P(U₁ = 1 ∩ U₂ = 1 | θ)\n=P(U₁ = 1 | θ)P(U₂ = 1 | θ)']
end2 [color=transparent, label='P(U₁ = 1 ∩ U₂ = 0 | θ)\n=P(U₁ = 1 | θ)P(U₂ = 0 | θ)']
end3 [color=transparent, label='P(U₁ = 0 ∩ U₂ = 1 | θ)\n=P(U₁ = 0 | θ)P(U₂ = 1 | θ)']
end4 [color=transparent, label='P(U₁ = 0 ∩ U₂ = 0 | θ)\n=P(U₁ = 0 | θ)P(U₂ = 0 | θ)']
}
"
)
