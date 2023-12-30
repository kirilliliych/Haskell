data Nat = Z | S Nat

data NatB = ZB | Db NatB | DbI NatB

nat2int :: Nat -> Int
nat2int Z = 0
nat2int (S n) = nat2int n + 1

int2nat :: Int -> Nat
int2nat n
  | n < 0 = error "Value cannot be negative "
  | n == 0 = Z
  | otherwise = S (int2nat (n - 1))

natb2int :: NatB -> Int
natb2int ZB = 0
natb2int (DbI n) = 1 + 2 * natb2int n
natb2int (Db n) = 2 * natb2int n

int2natb :: Int -> NatB
int2natb n
  | n < 0 = error "Value cannot be negative "
  | n == 0 = ZB
  | odd n = DbI (int2natb (n `div` 2))
  | even n = Db (int2natb (n `div` 2))

natb2nat :: NatB -> Nat
natb2nat n = int2nat (natb2int n)

nat2natb :: Nat -> NatB
nat2natb n = int2natb (nat2int n)

