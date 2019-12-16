module SchedulesHelper
  def load_schedule
    events_array = []

    @appointment&.map do |appointment|
      day = appointment.day
      start_time = day.to_s + " " + I18n.l(appointment.start_time, format: :short, locale: :'en')
      end_time = day.to_s + " " + I18n.l(appointment.end_time, format: :short, locale: :'en')
      url = patient_path(appointment.patient_id)
      events_array << {title: appointment.patient.user_name, start: start_time, end: end_time,
                   url: url}
    end
    events_array
  end
end
