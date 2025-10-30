const GOOGLE_API_KEY = 'AIzaSyDemoKey1234567890abcdef1234567890';
const TWITTER_BEARER_TOKEN = 'AAAAAAAAAAAAAAAAAAAAAA1234567890abcdef1234567890abcdef';

class ApiClient {
    constructor() {
        this.apiKey = GOOGLE_API_KEY;
        this.bearerToken = TWITTER_BEARER_TOKEN;
    }

    async fetchData() {
        const response = await fetch(`https://api.example.com/data?key=${this.apiKey}`);
        return response.json();
    }
}

module.exports = ApiClient;
