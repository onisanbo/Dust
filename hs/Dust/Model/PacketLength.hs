--{-# LANGUAGE DeriveGeneric, DefaultSignatures #-} -- For automatic generation of cereal put and get

module Dust.Model.PacketLength
(
--    PacketLengthModel(..),
--    loadLengthModel,
    nextLength
)
where

import System.Random
--import GHC.Generics
--import Data.Serialize
--import Data.Random.Shuffle.Weighted
--import Data.Random.RVar
--import Data.Random
--import Data.Random.Source.DevRandom
--import Data.Map
--import qualified Data.ByteString as B

-- data PacketLengthModel = PacketLengthModel [Double] deriving (Eq, Show, Generic)

-- loadLengthModel :: FilePath -> IO (Map Double Int)
-- loadLengthModel path = do
--    probs <- loadProbs path
--    return $ probToCDF probs

-- loadProbs :: FilePath -> IO [Double]
-- loadProbs path = do
--     s <- B.readFile path
--     let result = (decode s)::Either String [Double]
--     case result of
--         Left error -> return ([])
--         Right arr -> return(arr)

-- probToCDF :: [Double] -> Map Double Int
-- probToCDF probs = cdfMapFromList $ zip probs [1..(length probs)]

--nextLength :: Map Double Int -> IO Int
--nextLength cdf = do
--    let dist = weightedSampleCDF 1 cdf
--    arr <- runRVar dist DevRandom :: IO [Int]
--    return (head arr)

nextLength :: IO Integer
nextLength = do
   randomRIO (1, 1448)
