Config = {}; // Don't touch

Config.ServerIP = "127.0.0.1";

// Social media buttons on the left side
Config.Socials = [
    {name: "discord", label: "Discord", description: "Click here to copy the link and join our Discord server!", icon: "assets/media/icons/discord.png", link: "https://discord.io/Dx_Born"},
     {name: "Fiverr", label: "Fiverr", description: "You can BUY Server from Fiverr.", icon: "assets/media/icons/Fiverr.png", link: "https://www.buymeacoffee.com/dxfivem"},
    {name: "Patreon", label: "Donations", description: "For donations, feel free to look at the room - #Donations at Discord.", icon: "assets/media/icons/Patreon.png", link: "https://www.patreon.com/dxborn"},
];

Config.HideoverlayKeybind = 112 // JS key code https://keycode.info
Config.CustomBindText = "F1"; // leave as "" if you don't want the bind text in html to be statically set

// Staff list
Config.Staff = [
    {name: "Dx #1", description: "Owner & Dev", color: "#ff0000", image: "https://cdn.discordapp.com/attachments/894588279591161926/997613293034287236/unnamed__1_-removebg-preview.png"},
    {name: "Dx #2", description: "Owner", color: "#ff0000", image: "https://cdn.discordapp.com/attachments/894588279591161926/997613293034287236/unnamed__1_-removebg-preview.png"},


];

// Categories
Config.Categories = [
    {label: "Social Media", default: true},
    {label: "Staff", default: false}
];

// Music
Config.Song = "song.mp3";