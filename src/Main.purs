module Main where

import Prelude (Unit, bind, discard, pure, unit, ($))

import Effect (Effect)
import Effect.Aff as Aff
import Effect.Class (liftEffect)
import Effect.Console as Console
import Micro.Chat (createChat, createUser, sendMessage)
import Micro.Chat.Types (Chat(..), Message(..))

main :: Effect Unit
main = do
  Console.log "Hello World..."
  Console.log "Creating Chat Micro using PS"

  Aff.launchAff_ do
  
    -- |  Creating 2 Users
    userOne <- createUser "Arth K. Gajjar" "iarthstar"
    userTwo <- createUser "Dhruvi K. Gajjar" "dhruvi2079"

    -- | Creating a Chat in between them
    chatId <- createChat (Chat userOne userTwo)

    -- | Sending Message from One User to Another
    isSent <- sendMessage chatId (Text "Hi...")

    liftEffect $ pure unit
  