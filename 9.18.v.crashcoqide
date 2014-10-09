Inductive list (A: Type): Type  :=
 |nil: list A
 |cons: A -> list A -> list A
.

(*Inductive bool: Set :=
| true
| false
.

Inductive nat: Set :=
| O: nat
| S: nat -> nat
.


Definition n0 := O.
Definition n1 := (S O).
Definition n1' := (S n0).
Definition n2 := (S n1).

Fixpoint plus (n1 n2: nat): nat :=
match n1 with
  |O => n2
  |S n1' => S (plus n1' n2)
end.

 Fixpoint length (A: Type) (l: list A): nat :=
match l with
  |nil => O
  |cons h t => S (length A  t)
end.

Definition l0: list nat := nil nat.
Definition l1: list nat := cons nat (S O) (nil nat).
Definition l2:= cons nat (S (S O)) (cons nat (S O) (nil nat)).
Definition l2' := cons nat (S (S O)) l1.

Compute length nat l2.
*)

Arguments nil {A}.
Arguments cons {A} _ _.

Definition l0':= cons 1 nil.
(* 0 - 1 are recognized in Coq libraries *)
Check l0'.

Definition l1':= cons false nil.
Check l1'.

Definition l2'' := @nil bool.
(* Turns off implicit typing *)


Notation "h :: t" := (cons h t)(at level 60, right associativity).

Definition l6 := 5::4::3::2::1::0::nil.

Fixpoint length {A: Type} (l: list A): nat :=
  match l with
    |nil => 0
    |h :: t => S (length t)
end.

Notation "[ x ; .. ; y ]" := (cons x .. (cons y nil) ..).


Definition l8 := [5;4;3;2;1;0].

Fixpoint append {A: Type} (l1 l2: list A): list A:=
  match l1 with
  |nil => l2
  |h :: t => h::(append t l2)
end.

Fixpoint snoc {A: Type} (h: A) (t: list A): list A :=
  match t with
    |nil => [h]
    |h'::t'' => append t [h] 
end.


(*Fixpoint reverse {A: Type} {l: list A}: list A :=
  match l with
    |nil => nil
    |h :: t => append snoc h (rev t) 
  end.

Compute @rev nat [].
*)

Fixpoint reverse {A: Type} (l: list A): list A :=
  match l with
    |nil => nil
    |h :: t => append (reverse t) [h] 
  end.

