require_relative '../config/environment'

$prompt = TTY::Prompt.new

cli = CommandLineInterface.new
cli.run
# cli.greet
# cli.quest_id
# cli.pick_npc
# cli.quest_choice
# cli.npc_quest
# cli.npc_greeting
# cli.quest_log
# cli.update_quest_log
