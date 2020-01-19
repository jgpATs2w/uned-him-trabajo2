clear
alfabeto='RGB';
alfabetos_de_cifrado=['BRG' 'GBR' 'RGB'];
mensaje='RBBRBGGBBGGBRBBR';
nca=length(alfabeto);
n=length(mensaje);
mensaje_cifrado='';
for i=1:1:n
    caracter=part(mensaje,i);
    posicion=strindex(alfabeto,caracter);
    cifrado=1+modulo((i-1),nca);
    caracter_sustitutivo=part(alfabetos_de_cifrado(cifrado),posicion);
    mensaje_cifrado=mensaje_cifrado+caracter_sustitutivo;
end
disp('Mensajes claro y cifrado')
disp(mensaje)
disp(mensaje_cifrado)
