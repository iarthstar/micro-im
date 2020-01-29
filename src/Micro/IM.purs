module Micro.IM where

import Prelude

import Data.Either (Either)
import Effect.Aff (Aff, Error)
import Micro.IM.Types (Chat, ChatID, Message, MessageDetails(..), MsgID, UserDetails, UserID)
import Unsafe.Coerce (unsafeCoerce)

-- | CRUD User
-- | --------------------------------------------------------------------------
-- | create : createUser
createUser :: String -> String -> Aff (Either Error UserID)
createUser = unsafeCoerce

-- | read : searchUser
searchUser :: String -> Aff (Either Error UserID)
searchUser = unsafeCoerce

-- | update : updateUser
updateUser :: UserID -> UserDetails -> Aff (Either Error Unit)
updateUser = unsafeCoerce

-- | delete : deleteUser
deleteUser :: UserID -> Aff (Either Error Unit)
deleteUser = unsafeCoerce



-- | CRUD Message
-- | --------------------------------------------------------------------------
-- | create : sendMessage
sendMessage :: UserID -> ChatID -> Message -> Aff (Either Error MsgID)
sendMessage = unsafeCoerce

-- | delete : deleteMessage
deleteMessage :: MsgID -> Aff (Either Error Unit)
deleteMessage = unsafeCoerce



-- | CRUD Chat
-- | --------------------------------------------------------------------------
-- | create : createChat
createChat :: UserID -> Chat -> Aff (Either Error ChatID)
createChat = unsafeCoerce

-- | delete : deleteChat
deleteChat :: ChatID -> Aff (Either Error Unit)
deleteChat = unsafeCoerce