import Lib
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec $ do
    describe "Obliczanie przystosowania" $ do
        it "zwraca 0 dla [0,0,0,0] i [0,0,0,0]" $
            fitness [0,0,0,0] [0,0,0,0] `shouldBe` 0
        it "zwraca 4 dla [0,0,0,0] i [1,1,1,1]" $
            fitness [0,0,0,0] [1,1,1,1]`shouldBe` 4
