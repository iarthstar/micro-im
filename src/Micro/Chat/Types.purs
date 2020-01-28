module Micro.Chat.Types where

import Data.Tuple (Tuple)
import Data.UUID (UUID)

type UserID = UUID
type ChatID = UUID
type MsgID = UUID

-- | Type of Messages
-- | Can be extended as per requirement 
-- | i.e. Video, Contact, Location, etc.
data Message 
  = Text String
  | Image String

newtype UserDetails = UserDetails
  { id :: UserID
  , name :: String
  , username :: String
  }

data Chat
  = Group (Array UserID)
  | Chat UserID UserID
  | Secret UserID UserID

newtype ChatDetails = ChatDetails
  { id :: ChatID
  , type :: Chat
  , created_by :: UserID
  }

newtype MessageDetails = MessageDetails
  { id :: MsgID
  , chat_id :: ChatID
  , message :: Message
  , from_to :: Tuple UserID UserID
  }