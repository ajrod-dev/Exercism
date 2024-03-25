def tally(input_file_path, output_file_path):
    # Dictionary to store team statistics
    teams = {}
    
    # Read input file and tally results
    with open(input_file_path, 'r') as file:
        for line in file:
            team1, team2, result = line.strip().split(';')
            
            # Update team statistics
            if result == 'win':
                teams[team1] = teams.get(team1, [0, 0, 0, 0])  # MP, W, D, L
                teams[team1][0] += 1  # Matches Played
                teams[team1][1] += 1  # Matches Won
                teams[team2] = teams.get(team2, [0, 0, 0, 0])
                teams[team2][0] += 1
                teams[team2][3] += 1
            elif result == 'loss':
                teams[team2] = teams.get(team2, [0, 0, 0, 0])
                teams[team2][0] += 1
                teams[team2][1] += 1
                teams[team1] = teams.get(team1, [0, 0, 0, 0])
                teams[team1][0] += 1
                teams[team1][3] += 1
            else:  # Draw
                teams[team1] = teams.get(team1, [0, 0, 0, 0])
                teams[team1][0] += 1
                teams[team1][2] += 1
                teams[team2] = teams.get(team2, [0, 0, 0, 0])
                teams[team2][0] += 1
                teams[team2][2] += 1
                
    # Calculate points for each team
    for team, stats in teams.items():
        stats.append(stats[1] * 3 + stats[2])  # Points
    
    # Sort teams based on points (descending) and then alphabetically
    sorted_teams = sorted(teams.items(), key=lambda x: (-x[1][4], x[0]))
    
    # Write results to output file
    with open(output_file_path, 'w') as file:
        file.write("Team                           | MP |  W |  D |  L |  P\n")
        for team, stats in sorted_teams:
            file.write(f"{team.ljust(30)} | {str(stats[0]).rjust(2)} | {str(stats[1]).rjust(2)} | {str(stats[2]).rjust(2)} | {str(stats[3]).rjust(2)} | {str(stats[4]).rjust(2)}\n")

# Test the function
tally("input.txt", "output.txt")
