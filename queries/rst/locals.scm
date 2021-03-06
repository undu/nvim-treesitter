;; Scopes

(document) @scope

(directive) @scope

;; Definitions

(substitution_definition
  name: (substitution) @definition)

(footnote
  name: (label) @definition)

(citation
  name: (label) @definition)

(target
  name: (reference) @definition)

; Inline targets
(target) @definition

; The role directive can define a new role
((directive
  name: (type) @_type
  body: (body) @definition)
 (#match? @_type "role::"))

;; References

[
 (substitution_reference)
 (footnote_reference)
 (citation_reference)
 (reference)
 (role)
] @reference
