function MuestraConsPerf(id)
{
    if (document.getElementById) 
    {
        var el = document.getElementById(id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }
}
window.onload = function()
{
    //MuestraConsPerf("MiPerfil");
};
function MuestraAltaMasc(id)
{
    if (document.getElementById) 
    {
        var el = document.getElementById(id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }
}
function MuestraEditMasc(id)
{
    if (document.getElementById) 
    {
        var el = document.getElementById(id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }
}
function MuestraEdirPerf(id)
{
    if (document.getElementById) 
    {
        var el = document.getElementById(id);
        el.style.display = (el.style.display === 'none') ? 'block' : 'none';
    }
}

function Envia1()
{
    document.FormEditaPerfil.submit();
}

