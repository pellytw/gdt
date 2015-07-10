class EquipoDatatable < AjaxDatatablesRails::Base
  include AjaxDatatablesRails::Extensions::Kaminari
  def sortable_columns
    # Declare strings in this format: ModelName.column_name
    @sortable_columns ||= ['equipos.nombre','equipos.participante_id','equipos.tactica_id']
  end

  def searchable_columns
    # Declare strings in this format: ModelName.column_name
    @searchable_columns ||= ['equipos.nombre','equipos.participante_id','equipos.tactica_id']
  end

  private

  def data
    records.map do |record|
      [
        record.nombre,
        record.participante_id,
        record.tactica.to_s,
        '<div class="dropdown">
          <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
            Acciones
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="personas/'+record.id.to_s+'">Ver</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="personas/'+record.id.to_s+'/edit">Editar</a></li>
            <li role="presentation"><a rel="nofollow" data-method="delete" data-confirm="Seguro desea eliminar" role="menuitem" tabindex="-1" href="personas/'+record.id.to_s+'">Eliminar</a></li>
          </ul>
        </div>',
      ]
    end
  end

  def get_raw_records
    Equipo.all
  end

  def sort_records(records)
    records
  end
  
  # ==== Insert 'presenter'-like methods below if necessary
end
