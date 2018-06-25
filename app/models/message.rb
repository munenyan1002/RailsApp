class Message < ApplicationRecord
  validaters :message, presence: {message:'を書いてください。'}
end
