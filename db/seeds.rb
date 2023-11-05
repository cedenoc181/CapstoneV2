# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# require 'rest-client'

p "destroy all old data ♻️"
# User.destroy_all
PhysicalTherapist.destroy_all
# Favorite.destroy_all
Exercise.destroy_all
# Appointment.destroy_all

p "seeding Physical Therapist and PT info🌱"
companies = [
       "United Health",
       "Kaiser Foundation",
       "Anthem Inc.", 
        "Blue Cross Blue Shield",
        "Metropolitan",
       "CIGNA", 
       "Assurant",
       "Allied Insurance", 
       "Allstate", 
       "Aflac"]

       languages = [
        "Spanish",
        "French",
        "Mandarin",
        "Arabic",
        "German",
        "Japanese",
        "Korean",
        "Portuguese",
        "Hindi"]

       # change bio use chatgpt to render bio description 

    #    create ptinfo for each physical therapist since params changed 
    
PhysicalTherapist.create!( first_name: "Jorge", last_name: "Graham", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Faizal-Hussein-400x450.jpeg.webp', specialization: "Cardiovascular", title: "DPT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 1, email: "Jorge@pt.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", phone_number: "718-533-0969", fax: "212-482-8854", post_grad__edu: "University of Oxford", languages: languages.shuffle.first, npi_number: "212993242", tele_medicine: false, clinic_address: "903 Lexington Ave, New York, NY 10065", home_visits: true, insurance_network: companies.shuffle.slice(0, 6).join(", "), about_me: "As a physical therapist, I am dedicated to helping my patients improve their mobility and manage their pain. I received my Doctor of Physical Therapy degree from the University of Oxford and have been practicing for over 10 years. I have experience working with a wide variety of patient populations, including athletes, seniors, and individuals with neurological conditions. In my free time, I enjoy staying active by running, hiking, and practicing yoga. I am passionate about educating my patients on the importance of maintaining a healthy lifestyle and empowering them to take control of their own recovery.")


PhysicalTherapist.create!( first_name: "Cassaundra", last_name: "Funk", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Emily-Vandervort-400x450.jpeg.webp', specialization: "Geriatric", title: "PT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 2, email: "Funk@gmail.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", fax: "917-331-0697", clinic_address: "4875 Broadway, New York, NY 10034", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "I am a physical therapist with a passion for helping people improve their mobility and overall quality of life. I have over 10 years of experience in the field and specialize in orthopedic rehabilitation, sports injury rehabilitation, and geriatric care. I use a personalized, hands-on approach to treatment and am skilled in various manual therapy techniques.", phone_number: "646-300-2019", post_grad__edu: "Columbia Univeisty", languages: languages.shuffle.first, npi_number: "131299423", telemedicine: false)


PhysicalTherapist.create!( first_name: "Cesar", last_name: "Rodriguez", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Alec-Losinski-hands-on-pt-astoria-ny-hicksville-queens-village-bronx-ny-400x450.png.webp', specialization: "Orthopaedic", title: "PT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 3, email: "Cesar@hotmail.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "1150 Park Ave, New York, NY 10128", fax: "917-331-3122", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a physical therapist, I specialize in helping patients improve their mobility and overcome injuries. With over 10 years of experience and a Doctor of Physical Therapy degree from Lehman College, I am dedicated to providing personalized, effective treatment to each and every one of my patients.", phone_number: "917-878-0476", post_grad__edu: "CUNY Lehman College", languages: languages.shuffle.first, npi_number: "100223124", telemedicine: true)


PhysicalTherapist.create!( first_name: "Lisa", last_name: "Rowe", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/03/Dolly-Patel-400x450.png.webp', specialization: "Electrophysiologic", title: "DPT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 4, fax: "917-331-3122", email: "RoweRowetheboat@gmail.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "4875 Broadway, New York, NY", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "Meet Lisa, a Physical Therapist with over 10 years of experience helping patients reach their optimal physical health. She received his Doctor of Physical Therapy degree from the University of Southern California and is a member of the American Physical Therapy Association. In her free time, Lisa enjoys hiking and spending time with her family. She is passionate about using evidence-based treatment to empower her patients to take control of their own recovery and achieve their goals. Lisa is dedicated to continuing his education and staying up-to-date on the latest research and techniques in the field. Her compassionate and patient-centered approach makes her a valuable asset to the rehabilitation team.", phone_number: "347-949-1003", post_grad__edu: "University of Southern California", languages: languages.shuffle.first, npi_number: "121034095", telemedicine: true)
 

PhysicalTherapist.create!( first_name: "Charissa", last_name: "Gerhold", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Van-Nguyen-400x450.jpg.webp', specialization: "Womens Health", title: "PT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 5, email: "Charissa@yahoo.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", fax_number: "347-210-5944", clinic_address: "136 E 57th St, 801, New York, NY 10022", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a physical therapist, I help people improve their mobility and overall quality of life through personalized treatment plans. I am skilled in a variety of manual therapy techniques and have a passion for helping my patients achieve their goals.", phone_number: "917-221-9599", post_grad__edu: "Vanderbilt University", languages: languages.shuffle.first, npi_number: "100003274", telemedicine: true)


PhysicalTherapist.create!( first_name: "Michelle", last_name: "Witting", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Liza-Vega-400x450.jpg.webp', specialization: "Neurology", title: "PT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 5, email: "WittingM@pt.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", fax_number: "918-457-9021", clinic_address: "837 Washington Ave, Suite 1B, Bronx, NY 10451", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "As a physical therapist, I am passionate about helping my patients improve their mobility and quality of life. I received my Doctor of Physical Therapy degree from the City College of New York and have been practicing for over 10 years. My areas of expertise include orthopedic and sports rehabilitation, as well as treatment of neurodegenerative conditions. I believe in a holistic approach to treatment, incorporating both manual therapy and targeted exercise to achieve optimal results. In my free time, I enjoy staying active by running, cycling, and practicing yoga.", phone_number: "347-441-3321", post_grad__edu: "CUNY City College of New York", languages: languages.shuffle.first, npi_number: "199287336", telemedicine: false)


PhysicalTherapist.create!( first_name: "Kellye", last_name: "Cummerata", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Viktoriya-Kulyk-400x450.jpeg.webp', specialization: "Sports", title: "DPT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 6, fax_number: "421-704-0892", email: "Kellye123@pt.com", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "207 W 79th St, New York, NY 10024", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "I am a physical therapist with a Doctor of Physical Therapy degree and over 15 years of experience. I specialize in orthopedic rehabilitation, sports injury rehabilitation, and geriatric care, using personalized, hands-on treatment methods. In my free time, I enjoy staying active and staying up-to-date on the latest in physical therapy.", phone_number: "917-260-5531", post_grad__edu: "New York University", languages: languages.shuffle.first, npi_number: "0012119987", telemedicine: true)


PhysicalTherapist.create!( first_name: "Hoyt", last_name: "Paucek", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Shoaib-Picture-400x450.jpg.webp', specialization: "Pulmonary", title: "DPT", rating: 0.00)
PtInfo.create!( physical_therapist_id: 7, email: "itsHoyt@hotmail.com", fax_number: "401-694-4092", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "837 Washington Ave, Suite 1B, Bronx, NY 10451", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "I am a physical therapist with a Doctor of Physical Therapy degree and over 10 years of experience. My specialties include orthopedic and sports injury rehabilitation, as well as geriatric care. I use a personalized, hands-on approach to treatment and am proficient in various manual therapy techniques. In my personal life, I enjoy staying active through running and yoga and love to read and learn about new developments in physical therapy.", phone_number: "646-512-8719", post_grad__education: "Harvard University", languages_spoken: languages.shuffle.first, npi_number: "110299312", telemedicine: false))


PhysicalTherapist.create!( first_name: "Marisela", last_name: "McClure", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/Jyoti-Crop-400x450.jpg.webp', specialization: "Neurology", title: "PT", rating: 0.00)
PtInfo.create!(physical_therapist_id: 8, email: "McClure33@gmail.com", fax_number: "212-049-3375", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "140 East 52nd St, #2E, New York, NY 10022", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a neurologic physical therapist, I specialize in the evaluation and treatment of individuals with neurological conditions such as stroke, spinal cord injury, and brain injury. With a Doctor of Physical Therapy degree and specialized training in neurologic rehabilitation, I use a holistic approach to treatment and work with my patients to set and achieve their functional goals. Whether it's improving mobility, reducing pain, or increasing independence, I am committed to helping my patients achieve the best possible outcomes.", phone_number: "917-306-8421", post_grad__education: "Florida University", languages_spoken: languages.shuffle.first, npi_number: "100388521", telemedicine: true)


PhysicalTherapist.create!( first_name: "Bobbye", last_name: "Zulauf", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Bhavesh-Cropped-400x450.jpg.webp', specialization: "Pediatric", title: "DPT", rating: 0.00)
PtInfo.create!(physical_therapist_id: 9, email: "Bobbyeee@pt.com", fax_number: "718-223-1194", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "207 W 79th St, New York, NY 10024", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a pediatric physical therapist, I am dedicated to helping children of all ages achieve their maximum potential and lead active, healthy lives. With a Doctor of Physical Therapy degree and specialized training in pediatric care, I use a child-centered approach to treatment and work closely with families to ensure that each child's unique needs are met. Whether it's helping a child learn to walk, improving their gross motor skills, or managing a chronic condition, I am committed to providing the highest quality care to every patient.", phone_number: "516-201-1421", post_grad__education: "Boston University", languages_spoken: languages.shuffle.first, npi_number: "103962534", telemedicine: true)


PhysicalTherapist.create!( first_name: "chris", last_name: "johnson", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/02/Gilberto-Diaz-400x450.jpg.webp', specialization: "Sports", title: "PT", rating: 0.00)
PtInfo.create!(physical_therapist_id: 10, email: "johnsonchris@gmail.com", fax_number: "929-501-5050", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "157 E 86th St, New York, NY 10028", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true, about_me: "As a sports physical therapist, I am committed to helping athletes reach their full potential through personalized rehabilitation and performance enhancement. With a Doctor of Physical Therapy degree and a background in athletics, I understand the demands of high-level sports and use the latest techniques and technologies to get my patients back in the game safely and effectively.", phone_number: "347-994-6122", post_grad__education: "Butler University", languages_spoken: languages.shuffle.first, npi_number: "112200995", telemedicine: false)


PhysicalTherapist.create!( first_name: "darrel", last_name: "williamson", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/03/Richard-A-400x450.png.webp', specialization: "Oncology", title: "DPT", rating: 0.00)
PtInfo.create!(physical_therapist_id: 11, email: "williamsonthe3rd@hotmail.com", fax_number: "347-493-7441", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "1384 Broadway, #606, New York, NY 10018", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: false, about_me: "As an oncology physical therapist, I specialize in working with cancer patients to help them manage the physical side effects of treatment and improve their overall quality of life. With a Doctor of Physical Therapy degree and specialized training in oncology rehabilitation, I use a compassionate, patient-centered approach to treatment and work closely with my patients to set and achieve their rehabilitation goals. Whether it's helping a patient regain strength and mobility after surgery, managing lymphedema, or reducing fatigue, I am dedicated to helping my patients live their lives to the fullest.", phone_number: "314-888-7332", post_grad__education: "Saint John's University", languages_spoken: languages.shuffle.first, npi_number: "110043857", telemedicine: true)


PhysicalTherapist.create!( first_name: "tim", last_name: "cook", profile_picture: 'https://handsonpt.org/wp-content/uploads/2022/01/noel-ortega-jr-hands-on-pt-astoria-ny-hicksville-queens-village-bronx-ny-400x450.png.webp', specialization: "Geriatric", title: "DPT", rating: 0.00)
PtInfo.create!(physical_therapist_id: 12, email: "timcookin@apple.com", fax_number: "646-717-0035", clinic_photo_one: "", clinic_photo_two: "", clinic_photo_three: "", clinic_address: "12 East 44th St, 5th Floor, New York, NY 10017", insurance_network: companies.shuffle.slice(0, 6).join(", "), home_visits: true,  about_me: "As a geriatric physical therapist, I specialize in helping older adults maintain their independence and improve their quality of life through rehabilitation and functional improvement. With a Doctor of Physical Therapy degree and specialized training in geriatric care, I use a personalized approach to treatment and work with my patients to set and achieve their individualized goals. Whether it's helping a patient recover from a fall or manage chronic conditions such as arthritis or Parkinson's disease, I am dedicated to helping my patients live their best lives.", phone_number: "347-909-1411", post_grad__education: "Sam Houston State Univeristy", languages_spoken: languages.shuffle.first, npi_number: "129597502", telemedicine: false)


p "seeding exercise Data 🌱"

def exercise_database_key
    ENV["EXERCISE_DB_KEY"]
end

require 'uri'
require 'net/http'

# def exercise_seed
url = URI("https://exercisedb.p.rapidapi.com/exercises")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["X-RapidAPI-Key"] = exercise_database_key
request["X-RapidAPI-Host"] = 'exercisedb.p.rapidapi.com'

response = http.request(request)

exercise_array = JSON.parse(response.body)

exercise_array.each do |s|

    Exercise.create!(
        id: s['id'], 
        bodyPart: s["bodyPart"], 
        name: s["name"], 
        target: s["target"], 
        gifUrl: s["gifUrl"], 
        equipment: s["equipment"]
    )

end

p "done seeding"

