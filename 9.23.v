(* 
Popositional types - assertions written in higher order pred. logic
Propositions values proofs of such propositions
Key Concept: value must chck out against their declaed types
Coq type-checks which ensures that a proof is valid when it is.

Logic: 
  prop (assertions) and judgements( true, false)
    0 = 0, 1 = 0, every even number greater than 2 is the sum of 2 primes
    true - but why
    false - but why
    we don't know (not true, but also not false)
    law of the excluded middle - not a part of the constructive logic
*)


(*
exact will say this element is a proof the the current goal
*)

Theorem f: nat -> nat.
Proof.
intros.
exact H.
Qed.

Theorem f1: nat -> nat.
Proof.
intros.
exact 0.
Qed.

Print f1.


(*
Proof Assistant
- Language for expressing computaiton types and values
- Language for expressing propostional types and values
- A set of tactics to help users build computational and proof term that 
  type check
- A proof script is not a proof (or a program).  The proof is the value 
  constructed by applying the set of tactics to the goal.  If you print the
  value of a proppostional type, you will see the proof term constructed by
  execution of the proof script.
*)

(*
Tactics
- simpl: apply functions, expand defn
- reflxivity:  apply thm stating everything is equal to itself
- intros: move hypothesis or forall into context turning it into an assumption
- rewrite: replace terms in goal based on assume or provedn equality
- destruct: consider the separate ways value can be constructed
- 
*)

Theorem foo: forall n: nat, n=n.
Proof.
intros.
reflexivity.
Qed.

(*
Proof techniques
- proof by rewriting
- proof by case analysis
*)


Theorem foo2: forall n: nat, n+0 = n.
Proof.
intros.
destruct n.
reflexivity.


