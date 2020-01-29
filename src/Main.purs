module Main where

import Prelude

import Data.Either (Either(..))
import Effect (Effect)
import Effect.Aff (error)
import Effect.Aff as Aff
import Effect.Class (liftEffect)
import Effect.Console as Console
import Micro.IM (createChat, createUser, sendMessage)
import Micro.IM.Types (Chat(..), Message(..))

main :: Effect Unit
main = do
  Console.log "Hello World..."
  Console.log "Creating Chat Micro using PS"

  Aff.launchAff_ do
  
    -- |  Creating 2 Users
    eitherUserOne <- createUser "Arth K. Gajjar" "iarthstar"
    eitherUserTwo <- createUser "Tara Sutaria" "seetara"

    -- | Creating a Chat between them
    eitherChatId <- case eitherUserOne, eitherUserTwo of
      Right userId1, Right userId2 -> createChat userId1 (Chat userId1 userId2)
      _            , _             -> pure $ Left $ error ""

    -- | Sending a Message from One user to another
    eitherMsgId <- case eitherChatId, eitherUserOne of
      Right chatId, Right userId1 -> sendMessage userId1 chatId (Text "Hello World...")
      _           , _             -> pure $ Left $ error ""          

    liftEffect $ pure unit