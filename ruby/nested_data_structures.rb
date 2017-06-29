# Nested data structure
musicals = {
# Adds nested data structure for Hamilton
    hamilton: {
        full_name: 'Hamilton, an American Musical',
        character_info: {
            hero: 'Alexander Hamilton',
            villain: 'Aaron Burr'
        },
        songs: [
            'Wait for it',
            'Scheuyler Sisters'
        ]
    },
# Adds nested data structure for Rent
    rent: {
      full_name: 'Rent',
      character_info: {
          hero: 'Mark',
          villain: 'Bennie'
      },
      songs: [
          'Seasons of Love',
          'America',
          'Would you light my candle?']
      }
}

# Identify the first song in the list of Hamilton songs
musicals[:hamilton][:songs][0]
# Add a song to the Hamilton song list
musicals[:hamilton][:songs].push("Room Where is Happens")
# Get a list of character info from Rent
musicals[:rent][:character_info]
# Reverse the order of songs from Rent
musicals[:rent][:songs].reverse
# Add information about my favorite musicals - with their full names
musicals[:hamilton][:full_name] + ", AND " + musicals[:rent][:full_name] + " are my two favorite musicals!"
# Change the song "Rooom Where it Happens" to a different song title
musicals[:hamilton][:songs][2] = "Battle of Yorktown"

p musicals
