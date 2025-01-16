/-
Copyright 2025 Google LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
-/

import Imo.ProblemImports

open scoped Real
open scoped Nat
open Classical

/--
A social network has $2019$ users, some pairs of whom are friends. Whenever user $A$ is friends with user $B$, user $B$ is also friends with user $A$. Events of the following kind may happen repeatedly, one at a time:
[list]
[*] Three users $A$, $B$, and $C$ such that $A$ is friends with both $B$ and $C$, but $B$ and $C$ are not friends, change their friendship statuses such that $B$ and $C$ are now friends, but $A$ is no longer friends with $B$, and no longer friends with $C$. All other friendship statuses are unchanged.
[/list]
Initially, $1010$ users have $1009$ friends each, and $1009$ users have $1010$ friends each. Prove that there exists a sequence of such events after which each user is friends with at most one other user.

[i]Proposed by Adrian Beker, Croatia[/i]
-/
@[imo_problem_subject combinatorics]
theorem imo_2019_p3
    -- There are 2019 users,
    {User : Type _} [Fintype User] [Inhabited User]
    (h : Fintype.card User = 2019)
    --The predicate that users $A$, $B$, and $C$ are such that $A$ is friends with both $B$ and $C$, but $B$ and $C$ are not friends
    (IsFriendshipTriangle : SimpleGraph User → (User × User × User) → Prop)
    (IsFriendshipTriangle_def : ∀ (Network : SimpleGraph User) (A B C : User),
      IsFriendshipTriangle Network (A, B, C) ↔ Network.Adj A B ∧
        Network.Adj A C ∧ ¬ Network.Adj B C ∧ B ≠ C)
    -- We specify how friendships are allowed to be updated in social networks
    (UpdateFriends : SimpleGraph User → (User × User × User) → SimpleGraph User)
    /-The friendship updating rule takes in a network and a triple of users
    `(A, B, C)` and outputs a new network, constructed as follows:
      - `A` and `B` are *not* friends
      - `A` and `C` are *not* friends
      - `B` and `C` *are* friends.-/
    (UpdateFriends_def : ∀ (Network : SimpleGraph User) (A B C : User),
      --We need to impose some non-degeneracy condition on the users `A, B, C`
      IsFriendshipTriangle Network (A, B, C) →
      (¬ (UpdateFriends Network (A, B, C)).Adj A B) ∧
      (¬ (UpdateFriends Network (A, B, C)).Adj A C) ∧
      (UpdateFriends Network (A, B, C)).Adj B C ∧
      (∀ X Y : User, X ∉ [A, B, C] ∨ Y ∉ [A, B, C] →
        (UpdateFriends Network (A, B, C)).Adj X Y = Network.Adj X Y))
    -- The initial configuration of the network in the problem
    (Network₀ : SimpleGraph User)
    -- There are 1010 users with 1009 friends in the initial network
    (h₁ : (Finset.univ.filter fun u₁ => Network₀.degree u₁ = 1009).card = 1010)
    -- There are 1009 users with 1010 friends in the initial network
    (h₂ : (Finset.univ.filter fun u₁ => Network₀.degree u₁ = 1010).card = 1009) :
    -- There exists a list of triples of users
    ∃ UserTriple : List (User × User × User),
      /-such that the i-th triple is a "Friendship triangle" on the updated network
        (i.e. each network update is a valid one) -/
      (∀ i : Fin UserTriple.length, IsFriendshipTriangle ((UserTriple.take i).foldl
        UpdateFriends Network₀) (UserTriple.get i)) ∧
      --and at the end of the process every user has at most 1 friend
      ∀ X, (UserTriple.foldl UpdateFriends Network₀).degree X ≤ 1 := by
  sorry
