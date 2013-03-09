.class public Lgnu/commonlisp/lang/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static getFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "environ"
    .parameter "symbol"

    .prologue
    .line 62
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getFunctionBinding(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "symbol"

    .prologue
    .line 57
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-static {p0}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getFunction(Lgnu/mapping/Symbol;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPrintName(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "sym"

    .prologue
    .line 51
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    const-string v0, "nil"

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    check-cast p0, Lgnu/mapping/Symbol;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSymbol(Lgnu/mapping/Environment;Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "env"
    .parameter "sym"

    .prologue
    .line 35
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    .line 36
    const-string p1, "nil"

    .line 37
    .end local p1
    :cond_0
    instance-of v0, p1, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    check-cast p1, Lgnu/mapping/Symbol;

    move-object v0, p1

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 1
    .parameter "sym"

    .prologue
    .line 43
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v0, :cond_0

    .line 44
    const-string p0, "nil"

    .line 45
    .end local p0
    :cond_0
    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    check-cast p0, Lgnu/mapping/Symbol;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lgnu/mapping/Namespace;->getDefaultSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public static isBound(Ljava/lang/Object;)Z
    .locals 5
    .parameter "sym"

    .prologue
    const/4 v4, 0x1

    .line 22
    sget-object v3, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p0, v3, :cond_0

    move v3, v4

    .line 30
    .end local p0
    :goto_0
    return v3

    .line 24
    .restart local p0
    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v1

    .line 26
    .local v1, env:Lgnu/mapping/Environment;
    instance-of v3, p0, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_1

    .line 27
    move-object v0, p0

    check-cast v0, Lgnu/mapping/Symbol;

    move-object v2, v0

    .line 30
    .end local p0
    .local v2, symbol:Lgnu/mapping/Symbol;
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 29
    .end local v2           #symbol:Lgnu/mapping/Symbol;
    .restart local p0
    :cond_1
    invoke-virtual {v1}, Lgnu/mapping/Environment;->defaultNamespace()Lgnu/mapping/Namespace;

    move-result-object v3

    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {v3, p0}, Lgnu/mapping/Namespace;->lookup(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v2

    .restart local v2       #symbol:Lgnu/mapping/Symbol;
    goto :goto_1

    .line 30
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "val"

    .prologue
    .line 16
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq p0, v0, :cond_0

    instance-of v0, p0, Lgnu/mapping/Symbol;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setFunctionBinding(Lgnu/mapping/Environment;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter "environ"
    .parameter "symbol"
    .parameter "newValue"

    .prologue
    .line 68
    invoke-static {p1}, Lgnu/commonlisp/lang/Symbols;->getSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    sget-object v1, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, p2}, Lgnu/mapping/Environment;->put(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method
