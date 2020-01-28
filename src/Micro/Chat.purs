module Micro.Chat where

import Micro.Chat.Types (Chat, ChatID, Message, UserID)
import Effect.Aff (Aff)
import Unsafe.Coerce (unsafeCoerce)

sendMessage :: ChatID -> Message -> Aff Boolean
sendMessage = unsafeCoerce

createUser :: String -> String -> Aff UserID
createUser = unsafeCoerce

createChat :: Chat -> Aff ChatID
createChat = unsafeCoerce