//Extraer Rol de Usuario
function Rol1()
{
    var RolUsr = document.getElementById("Usuario").value;
    document.getElementById("Rol").value = RolUsr;
}
function Rol2()
{
    var RolUsr = document.getElementById("Veterinario").value;
    document.getElementById("Rol").value = RolUsr;
}
function Rol3()
{
    var RolUsr = document.getElementById("Entrenador").value;
    document.getElementById("Rol").value = RolUsr;
}
function Enviar()
{
    document.FormRol.submit();
}
function Muestra(id)
{
    if (document.getElementById) 
    {
        var el = document.getElementById(id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }
}
window.onload = function()
{
    Muestra('DivFormulario');
    Muestra('DivRol');
};