.class public abstract Lgnu/commonlisp/lang/Lisp2;
.super Lgnu/kawa/lispexpr/LispLanguage;
.source "Lisp2.java"


# static fields
.field public static final FALSE:Lgnu/lists/LList;

.field public static final TRUE:Lgnu/mapping/Symbol;

.field public static final nilExpr:Lgnu/expr/Expression;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    .line 20
    invoke-static {}, Lgnu/mapping/Namespace;->getDefault()Lgnu/mapping/Namespace;

    move-result-object v0

    const-string v1, "t"

    invoke-virtual {v0, v1}, Lgnu/mapping/Namespace;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    .line 21
    new-instance v0, Lgnu/expr/QuoteExp;

    sget-object v1, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    invoke-direct {v0, v1}, Lgnu/expr/QuoteExp;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lgnu/commonlisp/lang/Lisp2;->nilExpr:Lgnu/expr/Expression;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lgnu/kawa/lispexpr/LispLanguage;-><init>()V

    return-void
.end method

.method public static asSymbol(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-string v0, "nil"

    if-ne p0, v0, :cond_0

    .line 79
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lgnu/mapping/Environment;->getCurrent()Lgnu/mapping/Environment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method private defun(Lgnu/mapping/Procedure;)V
    .locals 1
    .parameter "proc"

    .prologue
    .line 127
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lgnu/commonlisp/lang/Lisp2;->defun(Ljava/lang/String;Ljava/lang/Object;)V

    .line 128
    return-void
.end method

.method public static getString(Lgnu/mapping/Symbol;)Ljava/lang/Object;
    .locals 1
    .parameter "symbol"

    .prologue
    .line 100
    invoke-virtual {p0}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lgnu/commonlisp/lang/Lisp2;->getString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 94
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p0}, Lgnu/lists/FString;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public booleanObject(Z)Ljava/lang/Object;
    .locals 1
    .parameter "b"

    .prologue
    .line 30
    if-eqz p1, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    goto :goto_0
.end method

.method public createReadTable()Lgnu/kawa/lispexpr/ReadTable;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Lgnu/commonlisp/lang/Lisp2ReadTable;

    invoke-direct {v0}, Lgnu/commonlisp/lang/Lisp2ReadTable;-><init>()V

    .line 161
    .local v0, tab:Lgnu/kawa/lispexpr/ReadTable;
    invoke-virtual {v0}, Lgnu/kawa/lispexpr/ReadTable;->initialize()V

    .line 162
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgnu/kawa/lispexpr/ReadTable;->setInitialColonIsKeyword(Z)V

    .line 163
    return-object v0
.end method

.method protected defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V
    .locals 4
    .parameter "sym"
    .parameter "value"

    .prologue
    .line 116
    iget-object v2, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v3, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    instance-of v2, p2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_0

    .line 119
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Procedure;

    move-object v1, v0

    .line 120
    .local v1, n:Lgnu/mapping/Procedure;
    invoke-virtual {v1}, Lgnu/mapping/Procedure;->getSymbol()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 121
    invoke-virtual {v1, p1}, Lgnu/mapping/Procedure;->setSymbol(Ljava/lang/Object;)V

    .line 123
    .end local v1           #n:Lgnu/mapping/Procedure;
    :cond_0
    return-void
.end method

.method protected defun(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "name"
    .parameter "value"

    .prologue
    .line 105
    iget-object v2, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    invoke-virtual {p0, p1}, Lgnu/commonlisp/lang/Lisp2;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v3

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, p2}, Lgnu/mapping/Environment;->define(Lgnu/mapping/Symbol;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    instance-of v2, p2, Lgnu/mapping/Named;

    if-eqz v2, :cond_0

    .line 108
    move-object v0, p2

    check-cast v0, Lgnu/mapping/Named;

    move-object v1, v0

    .line 109
    .local v1, n:Lgnu/mapping/Named;
    invoke-interface {v1}, Lgnu/mapping/Named;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 110
    invoke-interface {v1, p1}, Lgnu/mapping/Named;->setName(Ljava/lang/String;)V

    .line 112
    .end local v1           #n:Lgnu/mapping/Named;
    :cond_0
    return-void
.end method

.method public emitPushBoolean(ZLgnu/bytecode/CodeAttr;)V
    .locals 2
    .parameter "value"
    .parameter "code"

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    const-string v0, "gnu.commonlisp.lang.Lisp2"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_0
    sget-object v0, Lgnu/expr/Compilation;->scmListType:Lgnu/bytecode/ClassType;

    const-string v1, "Empty"

    invoke-virtual {v0, v1}, Lgnu/bytecode/ClassType;->getDeclaredField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {p2, v0}, Lgnu/bytecode/CodeAttr;->emitGetStatic(Lgnu/bytecode/Field;)V

    goto :goto_0
.end method

.method protected fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;
    .locals 2
    .parameter "obj"

    .prologue
    .line 86
    sget-object v0, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne p1, v0, :cond_0

    .line 87
    iget-object v0, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    const-string v1, "nil"

    invoke-virtual {v0, v1}, Lgnu/mapping/Environment;->getSymbol(Ljava/lang/String;)Lgnu/mapping/Symbol;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/kawa/lispexpr/LispLanguage;->fromLangSymbol(Ljava/lang/Object;)Lgnu/mapping/Symbol;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnvPropertyFor(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "fld"
    .parameter "value"

    .prologue
    .line 58
    sget-object v0, Lgnu/expr/Compilation;->typeProcedure:Lgnu/bytecode/ClassType;

    invoke-virtual {v0}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p2, Lkawa/lang/Syntax;

    if-eqz v0, :cond_1

    .line 61
    :cond_0
    sget-object v0, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    .line 62
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespaceOf(Lgnu/expr/Declaration;)I
    .locals 1
    .parameter "decl"

    .prologue
    .line 70
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isAlias()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const/4 v0, 0x3

    .line 72
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lgnu/expr/Declaration;->isProcedureDecl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasSeparateFunctionNamespace()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected importLocation(Lgnu/mapping/Location;)V
    .locals 5
    .parameter "loc"

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Lgnu/mapping/NamedLocation;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/mapping/NamedLocation;->getKeySymbol()Lgnu/mapping/Symbol;

    move-result-object v1

    .line 133
    .local v1, name:Lgnu/mapping/Symbol;
    iget-object v3, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Lgnu/mapping/Environment;->isBound(Lgnu/mapping/Symbol;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Lgnu/mapping/Location;->getBase()Lgnu/mapping/Location;

    move-result-object p1

    .line 142
    instance-of v3, p1, Lgnu/kawa/reflect/FieldLocation;

    if-eqz v3, :cond_2

    move-object v0, p1

    check-cast v0, Lgnu/kawa/reflect/FieldLocation;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/kawa/reflect/FieldLocation;->isProcedureOrSyntax()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lgnu/commonlisp/lang/Lisp2;->environ:Lgnu/mapping/Environment;

    sget-object v4, Lgnu/mapping/EnvironmentKey;->FUNCTION:Ljava/lang/Object;

    invoke-virtual {v3, v1, v4, p1}, Lgnu/mapping/Environment;->addLocation(Lgnu/mapping/Symbol;Ljava/lang/Object;Lgnu/mapping/Location;)Lgnu/mapping/NamedLocation;

    goto :goto_0

    .line 147
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lgnu/mapping/Location;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, val:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 149
    instance-of v3, v2, Lgnu/mapping/Procedure;

    if-nez v3, :cond_3

    instance-of v3, v2, Lkawa/lang/Syntax;

    if-eqz v3, :cond_4

    .line 150
    :cond_3
    invoke-virtual {p0, v1, v2}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_0

    .line 151
    :cond_4
    instance-of v3, v2, Lgnu/kawa/lispexpr/LangObjType;

    if-eqz v3, :cond_5

    .line 152
    check-cast v2, Lgnu/kawa/lispexpr/LangObjType;

    .end local v2           #val:Ljava/lang/Object;
    invoke-virtual {v2}, Lgnu/kawa/lispexpr/LangObjType;->getConstructor()Lgnu/mapping/Procedure;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lgnu/commonlisp/lang/Lisp2;->defun(Lgnu/mapping/Symbol;Ljava/lang/Object;)V

    goto :goto_0

    .line 154
    .restart local v2       #val:Ljava/lang/Object;
    :cond_5
    invoke-virtual {v1}, Lgnu/mapping/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lgnu/commonlisp/lang/Lisp2;->define(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isTrue(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 25
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public noValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    return-object v0
.end method

.method public selfEvaluatingSymbol(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 53
    instance-of v0, p1, Lgnu/expr/Keyword;

    if-nez v0, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->TRUE:Lgnu/mapping/Symbol;

    if-eq p1, v0, :cond_0

    sget-object v0, Lgnu/commonlisp/lang/Lisp2;->FALSE:Lgnu/lists/LList;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
