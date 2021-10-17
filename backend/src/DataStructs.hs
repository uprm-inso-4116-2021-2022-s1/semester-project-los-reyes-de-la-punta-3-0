{-# LANGUAGE GeneralizedNewtypeDeriving #-}
module DataStructs ( Stat(..)
                   , Sport(..)
                   , Athlete(..)
                   , Administrator(..)
                   ) where

import Data.Text (Text)


newtype Stat 
    = Stat
    { unName :: Text
    , unStat :: Double
    } deriving (Show, Eq, Num)

newtype Sport 
    = Sport
    { unSport :: Text
    } deriving (Show, Eq)

data Gender 
    = Male 
    | Female
    deriving (Show, Eq)

data Athlete 
    = Athlete
    { unName  :: Text
    , unSport :: Sport
    , unStats :: [Stat]
    } deriving (Show, Eq)

data Administrator 
    = Administrator
    { unName :: Text
    , unGender :: Gender
    } deriving (Show, Eq)

data User 
    = User Athlete
    | User Administrator
    deriving (Show, Eq)

data Team 
    = Team [Athlete]
    | Athlete 
