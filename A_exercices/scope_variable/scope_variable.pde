//déclaration et initialisation de maVariableGlobale
int maVariableGlobale = 135;

void setup() {
    println( maVariableGlobale ); // 135

    //déclaration et initialisation de maVariableLocale
    int maVariableLocale =  314;
    println( maVariableLocale ); //314
}

void draw() {
    println( maVariableGlobale ); // 135

    // println( maVariableLocale ); 
    // erreur car maVariableLocale n'est accessible que dans le setup après sa déclaration
    // lorsque le programme sort du setup, maVariableLocale disparaît de la mémoire
}

