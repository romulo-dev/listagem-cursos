export interface Curso {
    id?: number;
    titulo: string;
    areaConhecimento: 'BACKEND' | 'FRONTEND' | 'DATA_SCIENCE' | 'SEGURANCA_DA_INFORMACAO';
    fotoUrl: string;
    favorito: boolean;
  }
  