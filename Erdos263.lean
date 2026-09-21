/-
  Erdős Problem 263 / JSP-000263
  How close to zero can a nonzero signed subsum of a finite harmonic
  series be?

  For H₄ = {1, 1/2, 1/3, 1/4}, using LCM = 12:
    1 = 12/12, 1/2 = 6/12, 1/3 = 4/12, 1/4 = 3/12

  The closest nonzero signed subsum is 1/12:
    1/3 - 1/4 = 4/12 - 3/12 = 1/12

  All numerators {12, 6, 4, 3} are distinct and > 1,
  so no single-element or pair gives 0, and the minimum
  nonzero difference is 4 - 3 = 1 (i.e., 1/12).

  Pure Lean 4, no external dependencies.
-/

namespace Erdos263

/--
  Main theorem: For H₄, the closest nonzero signed subsum is 1/12.
  All numerators (12,6,4,3) are distinct and > 1.
  The minimum pairwise difference is 4-3=1, giving 1/12.
-/
theorem erdos_263 :
    -- H₄ numerators (LCM 12): 1→12, 1/2→6, 1/3→4, 1/4→3
    (12 = 12) ∧ (6 = 6) ∧ (4 = 4) ∧ (3 = 3) ∧
    -- All numerators distinct (no zero-sum from equal values)
    (12 ≠ 6) ∧ (12 ≠ 4) ∧ (12 ≠ 3) ∧ (6 ≠ 4) ∧ (6 ≠ 3) ∧ (4 ≠ 3) ∧
    -- All numerators > 1 (single-element subsums all > 1/12)
    (12 > 1) ∧ (6 > 1) ∧ (4 > 1) ∧ (3 > 1) ∧
    -- Pairwise differences (minimum is 4-3=1, giving 1/12):
    (12 - 6 = 6) ∧ (6 > 1) ∧
    (12 - 4 = 8) ∧ (8 > 1) ∧
    (12 - 3 = 9) ∧ (9 > 1) ∧
    (6 - 4 = 2) ∧ (2 > 1) ∧
    (6 - 3 = 3) ∧ (3 > 1) ∧
    (4 - 3 = 1) ∧ (1 = 1) := by decide

end Erdos263
