function extraCheck() {
    if (document.getElementById('promo').checked) { 
        var extraInput = document.createElement("input");
        extraInput.type = "text";
        extraInput.name = "prixPromo";
        extraInput.id = "prixPromo";
        document.getElementById('extraDiv').appendChild(extraInput);
    } else {
        var extra = document.getElementById('prixPromo');
        extra.remove();
    }
}