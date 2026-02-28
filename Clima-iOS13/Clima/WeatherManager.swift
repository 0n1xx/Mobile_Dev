import Foundation
import _LocationEssentials

protocol WeatherManagerDelegate{
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel)
    func didFailWithError(error: Error)
}

struct WeatherManager{
    var weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=a0e3f392667776dcf4f7f840db17fa5d&units=metric"
    
    var delegate: WeatherManagerDelegate?
    
    func fetchWeather(cityname: String){
        let urlString = "\(self.weatherURL)&q=\(cityname)"
        perfomRequest(with: urlString)
    }
    
    func fetchWeather(latitude: CLLocationDegrees, longtitude: CLLocationDegrees){
        let urlString = "\(self.weatherURL)&lat=\(latitude)&lon=\(longtitude)"
        perfomRequest(with: urlString)
    }
    
    func perfomRequest(with urlString: String){
        // 1. Create a url
        if let url = URL(string: urlString){
            // 2. Create a URL Session
            let session = URLSession(configuration: .default)
            // 3. Give the session a task
            let task = session.dataTask(with: url){(data, response, error) in
                if let error = error {
                    self.delegate?.didFailWithError(error: error)
                }
                if let safedata = data {
                    if let weather = self.parseJSON(safedata){
                        self.delegate?.didUpdateWeather(self, weather: weather)
                    }
                }
            }
            // 4. Start the task
            task.resume()
        }
    }
    
    func parseJSON(_ weatherData: Data) -> WeatherModel?{
        let decoder = JSONDecoder()
        do {
            let decodedData = try decoder.decode(WeatherData.self, from: weatherData)
            let weatherId = decodedData.weather[0].id
            let temp = decodedData.main.temp
            let cityName = decodedData.name
            
            let weather = WeatherModel(conditionId: weatherId, cityName: cityName, temperature: temp)
            return weather
        } catch {
            self.delegate?.didFailWithError(error: error)
            return nil
        }
    }
}
