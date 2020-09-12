require 'pry'
require 'rest-client'
require 'json'

url = "https://zodiacal.herokuapp.com/api"

response = RestClient.get(url)
api = JSON.parse(response)

aries_sign = api[0]
taurus_sign = api[1]
gemini_sign = api[2]
cancer_sign = api[3]
leo_sign = api[4]
virgo_sign = api[5]
libra_sign = api[6]
scorpio_sign = api[7]
sagittarius_sign = api[8]
capricorn_sign = api[9]
aquarius_sign = api[10]
pisces_sign = api[11]

#puts lib_hor[hates]

aries_hor = Horoscope.create(hates: aries_sign["hates"], favorites: aries_sign["favorites"],vibe: aries_sign["vibe"], compatibility: aries_sign["compatibility"], mental_traits: aries_sign["mental_traits"], physical_traits: aries_sign["physical_traits"])
taurus_hor = Horoscope.create(hates: taurus_sign["hates"], favorites: taurus_sign["favorites"],vibe: taurus_sign["vibe"], compatibility: taurus_sign["compatibility"], mental_traits: taurus_sign["mental_traits"], physical_traits: taurus_sign["physical_traits"])
gem_hor = Horoscope.create(hates: gemini_sign["hates"], favorites: gemini_sign["favorites"],vibe: gemini_sign["vibe"], compatibility: gemini_sign["compatibility"], mental_traits: gemini_sign["mental_traits"], physical_traits: gemini_sign["physical_traits"])
cancer_hor = Horoscope.create(hates: cancer_sign["hates"], favorites: cancer_sign["favorites"],vibe: cancer_sign["vibe"], compatibility: cancer_sign["compatibility"], mental_traits: cancer_sign["mental_traits"], physical_traits: cancer_sign["physical_traits"])
leo_hor = Horoscope.create(hates: leo_sign["hates"], favorites: leo_sign["favorites"],vibe: leo_sign["vibe"], compatibility: leo_sign["compatibility"], mental_traits: leo_sign["mental_traits"], physical_traits: leo_sign["physical_traits"])
virgo_hor = Horoscope.create(hates: virgo_sign["hates"], favorites: virgo_sign["favorites"],vibe: virgo_sign["vibe"], compatibility: virgo_sign["compatibility"], mental_traits: virgo_sign["mental_traits"], physical_traits: virgo_sign["physical_traits"])
libra_hor = Horoscope.create(hates: libra_sign["hates"], favorites: libra_sign["favorites"],vibe: libra_sign["vibe"], compatibility: libra_sign["compatibility"], mental_traits: libra_sign["mental_traits"], physical_traits: libra_sign["physical_traits"])
scorpio_hor = Horoscope.create(hates: scorpio_sign["hates"], favorites: scorpio_sign["favorites"],vibe: scorpio_sign["vibe"], compatibility: scorpio_sign["compatibility"], mental_traits: scorpio_sign["mental_traits"], physical_traits: scorpio_sign["physical_traits"])
sag_hor = Horoscope.create(hates: sagittarius_sign["hates"], favorites: sagittarius_sign["favorites"], vibe: sagittarius_sign["vibe"], compatibility: sagittarius_sign["compatibility"], mental_traits: sagittarius_sign["mental_traits"], physical_traits: sagittarius_sign["physical_traits"])
cap_hor = Horoscope.create(hates: capricorn_sign["hates"], favorites: capricorn_sign["favorites"],vibe: capricorn_sign["vibe"], compatibility: capricorn_sign["compatibility"], mental_traits: capricorn_sign["mental_traits"], physical_traits: capricorn_sign["physical_traits"])
aquarius_hor = Horoscope.create(hates: aquarius_sign["hates"], favorites: aquarius_sign["favorites"],vibe: aquarius_sign["vibe"], compatibility: aquarius_sign["compatibility"], mental_traits: aquarius_sign["mental_traits"], physical_traits: aquarius_sign["physical_traits"])
pisces_hor = Horoscope.create(hates: pisces_sign["hates"], favorites: pisces_sign["favorites"],vibe: pisces_sign["vibe"], compatibility: pisces_sign["compatibility"], mental_traits: pisces_sign["mental_traits"], physical_traits: pisces_sign["physical_traits"])

aries = Sign.create(horoscope_id: 1, name: aries_sign["name"], symbol: aries_sign["symbol"], element: aries_sign["element"])
taurus = Sign.create(horoscope_id: 2, name: taurus_sign["name"], symbol: taurus_sign["symbol"], element: taurus_sign["element"])
gemini = Sign.create(horoscope_id: 3, name: gemini_sign["name"], symbol: gemini_sign["symbol"],  element: gemini_sign["element"])
cancer = Sign.create(horoscope_id: 4, name: cancer_sign["name"], symbol: cancer_sign["symbol"], element: cancer_sign["element"])
leo = Sign.create(horoscope_id: 5, name: leo_sign["name"], symbol: leo_sign["symbol"], element: leo_sign["element"])
virgo = Sign.create(horoscope_id: 6, name: virgo_sign["name"], symbol: virgo_sign["symbol"], element: virgo_sign["element"])
libra = Sign.create(horoscope_id: 7, name: libra_sign["name"], symbol: libra_sign["symbol"], element: libra_sign["element"])
scorpio = Sign.create(horoscope_id: 8, name: scorpio_sign["name"], symbol: scorpio_sign["symbol"], element: scorpio_sign["element"])
sagittarius = Sign.create(horoscope_id: 9, name: sagittarius_sign["name"], symbol: sagittarius_sign["symbol"], element: sagittarius_sign["element"])
capricorn = Sign.create(horoscope_id: 10, name: capricorn_sign["name"], symbol: capricorn_sign["symbol"], element: capricorn_sign["element"])
aquarius = Sign.create(horoscope_id: 11, name: aquarius_sign["name"], symbol: aquarius_sign["symbol"], element: aquarius_sign["element"])
pisces = Sign.create(horoscope_id: 12, name: pisces_sign["name"], symbol: pisces_sign["symbol"], element: pisces_sign["element"])

marcus = User.create(name: "Marcus", sign_id: capricorn.id)

person1 = User.create(name: "Person 1", sign_id: gemini.id)



#binding.pry

#puts "H O R O S C O P E"
