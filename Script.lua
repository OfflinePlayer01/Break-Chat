local hint = Instance.new("Hint", workspace)
		local count = 60
		repeat
			hint.Text = "Estimated Time Remaining Until Chat Is Deleted: "..math.floor(count*2.5).." seconds"
			wait(2.5)
			count = count - 1
			game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(" ", "All")
		until count == 0
	
		hint.Text = "The chat should be gone."
		wait(3)
		hint:Destroy()
