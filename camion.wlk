import cosas.*

object camion {
    var carga = []
    method cargarCamion(unaCosa) {
        carga.add(unaCosa)
    }
    method descargar(unaCosa) {
        carga.remove(unaCosa)
    }
    method pesoTotal() {
        return 1000 + carga.sum({carga => carga.peso()})
    }
    method elPesoEsPar() {
        return carga.all({carga=> carga.peso().even()})
    }
    method algunaCosaPesa(unPeso) {
        return carga.any({carga=> carga.peso() == unPeso})
    }
    method primerCosaConNivelDePeligrosidad(unValor) {
        return carga.find({carga => carga.nivelDePeligrosidad() == unValor})
    }
    method cosasConivelDePeligrosidad(unValor) {
        return carga.filter({carga => carga.nivelDePeligrosidad() > unValor})
    }
    method cosasSuperanPeligrosidadDe(unaCosa) {
        return carga.filter({carga => carga.nivelDePeligrosidad() > unaCosa.nivelDePeligrosidad()})
    }
       
}