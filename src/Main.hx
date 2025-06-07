class Main {
	static var months:Array<String> = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];
	static var days:Array<String> = ['Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'];
	public static function main() {
		var date:Date = Date.now();
		var month:String = months[date.getMonth()];
		var day:Int = date.getDate();
		var weekDay:String = days[date.getDay()];
		var year:Int = date.getFullYear();

		var hour:Int = date.getHours();
		var minutes:Int = date.getMinutes();
		var meridiem:String = hour >= 12 ? 'PM' : 'AM';

		Sys.println('It is $weekDay, $month ${numberSuffix(day)}, $year.');
		Sys.println('The time is ${hour % 12}:${minutes} $meridiem.');
	}

	static function numberSuffix(num:Int):String {
		var suffix:String = switch num % 10 {
			case 0: '';
			case 1: 'st';
			case 2: 'nd';
			case 3: 'rd';
			default: 'th';
		}
		
		// ??????????? english
		if (num >= 11 && num < 20) suffix = 'th';
		return '$num$suffix';
	}
}