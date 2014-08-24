module ClienteHelper

	def tabla_clientes(clientes)
		html = '<table class="table">'
		html += '<tr>'
		html += '<td>Id</td>'
		html += '<td>Nombre</td>'
		html += '<td>Apellidos</td>'
		html += '<td>Edad</td>'
		html += '<td>Telefono</td>'
		html += '<td>Estado Civil</td>'
		html += '<td>Email</td>'
		html += '<td>Actualizar</td>'
		html += '<td>Eliminar</td>'
		html += '<tr>'
		for cliente in clientes
			html += '<tr>'
			html += "<td>#{cliente.id}</td>"
			html += "<td>#{cliente.nombre}</td>"
			html += "<td>#{cliente.apellidos}</td>"
			html += "<td>#{cliente.edad}</td>"
			html += "<td>#{cliente.telefono}</td>"
			html += "<td>#{cliente.estado_cv}</td>"
			html += "<td>#{cliente.email}</td>"
			html += "<td>" + link_to("Actualizar",{:controller => "cliente",:action => "actualizar",:id => "#{cliente.id}"}) + "</td>"
			html += "<td>" + link_to("Eliminar",{:controller => "cliente",:action => "eliminar",:id => "#{cliente.id}"},:method => "post") + "</td>"
			html += '<tr>'
		end

		html += '</table>'
		return html.html_safe()
	end

end
