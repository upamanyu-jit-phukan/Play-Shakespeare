const mongoose = require("mongoose");

const gameSchema = new mongoose.Schema({
    words: [
        {
            type: String,
        }
    ],
    
})