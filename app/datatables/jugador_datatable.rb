class JugadorsDatatable < AjaxDatatablesRails::Base

  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['jugadors.nombre','jugadors.apellido','jugadors.apodo','jugadors.posicion_id','jugadors.club
      _id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['jugadors.nombre','jugadors.apellido','jugadors.apodo','jugadors.posicion_id','jugadors.club
      _id']
  end

  private

  def data
    records.map do |record|
      [
        record.nombre,
        record.apellido,
        record.apodo,
        record.posicion_id,
        record.club_id,
      ]
    end
  end

  def get_raw_records
    Jugador.all
  end

  # ==== Insert 'presenter'-like methods below if necessary
end
