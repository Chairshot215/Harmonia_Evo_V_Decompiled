.class public Lkawa/standard/define_variable;
.super Lkawa/lang/Syntax;
.source "define_variable.java"


# static fields
.field public static final define_variable:Lkawa/standard/define_variable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    new-instance v0, Lkawa/standard/define_variable;

    invoke-direct {v0}, Lkawa/standard/define_variable;-><init>()V

    sput-object v0, Lkawa/standard/define_variable;->define_variable:Lkawa/standard/define_variable;

    .line 12
    sget-object v0, Lkawa/standard/define_variable;->define_variable:Lkawa/standard/define_variable;

    const-string v1, "define-variable"

    invoke-virtual {v0, v1}, Lkawa/standard/define_variable;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method


# virtual methods
.method public rewriteForm(Lgnu/lists/Pair;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .parameter "form"
    .parameter "tr"

    .prologue
    const/4 v8, 0x1

    .line 43
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 44
    .local v2, obj:Ljava/lang/Object;
    const/4 v5, 0x0

    .line 45
    .local v5, value:Lgnu/expr/Expression;
    const/4 v1, 0x0

    .line 47
    .local v1, decl:Lgnu/expr/Declaration;
    instance-of v6, v2, Lgnu/lists/Pair;

    if-eqz v6, :cond_2

    .line 49
    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    .line 50
    .local v3, p1:Lgnu/lists/Pair;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 51
    instance-of v6, v2, Ljava/lang/String;

    if-nez v6, :cond_0

    instance-of v6, v2, Lgnu/mapping/Symbol;

    if-eqz v6, :cond_1

    .line 52
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is only allowed in a <body>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    .line 80
    .end local v3           #p1:Lgnu/lists/Pair;
    :goto_0
    return-object v6

    .line 53
    .restart local v3       #p1:Lgnu/lists/Pair;
    :cond_1
    instance-of v6, v2, Lgnu/expr/Declaration;

    if-eqz v6, :cond_2

    .line 55
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #decl:Lgnu/expr/Declaration;
    check-cast v1, Lgnu/expr/Declaration;

    .line 56
    .restart local v1       #decl:Lgnu/expr/Declaration;
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v2

    .line 57
    instance-of v6, v2, Lgnu/lists/Pair;

    if-eqz v6, :cond_3

    move-object v0, v2

    check-cast v0, Lgnu/lists/Pair;

    move-object v3, v0

    invoke-virtual {v3}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-ne v6, v7, :cond_3

    .line 59
    invoke-virtual {v3}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v5

    .line 64
    .end local v3           #p1:Lgnu/lists/Pair;
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 65
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid syntax for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lkawa/standard/define_variable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v6

    goto :goto_0

    .line 60
    .restart local v3       #p1:Lgnu/lists/Pair;
    :cond_3
    sget-object v6, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v2, v6, :cond_2

    .line 61
    const/4 v1, 0x0

    goto :goto_1

    .line 66
    .end local v3           #p1:Lgnu/lists/Pair;
    :cond_4
    if-nez v5, :cond_5

    .line 67
    sget-object v6, Lgnu/expr/QuoteExp;->voidExp:Lgnu/expr/QuoteExp;

    goto :goto_0

    .line 68
    :cond_5
    new-instance v4, Lgnu/expr/SetExp;

    invoke-direct {v4, v1, v5}, Lgnu/expr/SetExp;-><init>(Lgnu/expr/Declaration;Lgnu/expr/Expression;)V

    .line 69
    .local v4, sexp:Lgnu/expr/SetExp;
    invoke-virtual {v4, v8}, Lgnu/expr/SetExp;->setDefining(Z)V

    .line 70
    invoke-virtual {v4, v8}, Lgnu/expr/SetExp;->setSetIfUnbound(Z)V

    .line 72
    if-eqz v1, :cond_7

    .line 74
    invoke-virtual {v4, v1}, Lgnu/expr/SetExp;->setBinding(Lgnu/expr/Declaration;)V

    .line 75
    iget-object v6, v1, Lgnu/expr/Declaration;->context:Lgnu/expr/ScopeExp;

    instance-of v6, v6, Lgnu/expr/ModuleExp;

    if-eqz v6, :cond_6

    invoke-virtual {v1}, Lgnu/expr/Declaration;->getCanWrite()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 77
    const/4 v5, 0x0

    .line 78
    :cond_6
    invoke-virtual {v1, v5}, Lgnu/expr/Declaration;->noteValue(Lgnu/expr/Expression;)V

    :cond_7
    move-object v6, v4

    .line 80
    goto :goto_0
.end method

.method public scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z
    .locals 7
    .parameter "st"
    .parameter "forms"
    .parameter "defs"
    .parameter "tr"

    .prologue
    const/4 v6, 0x1

    .line 17
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 18
    invoke-super {p0, p1, p2, p3, p4}, Lkawa/lang/Syntax;->scanForDefinitions(Lgnu/lists/Pair;Ljava/util/Vector;Lgnu/expr/ScopeExp;Lkawa/lang/Translator;)Z

    move-result v3

    .line 38
    :goto_0
    return v3

    .line 19
    :cond_0
    invoke-virtual {p1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/lists/Pair;

    .line 20
    .local v1, p:Lgnu/lists/Pair;
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v2

    .line 21
    .local v2, sym:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/String;

    if-nez v3, :cond_1

    instance-of v3, v2, Lgnu/mapping/Symbol;

    if-eqz v3, :cond_3

    .line 23
    :cond_1
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->lookup(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 24
    .local v0, decl:Lgnu/expr/Declaration;
    if-eqz v0, :cond_2

    .line 25
    const/16 v3, 0x65

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate declaration for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v3, v4}, Lkawa/lang/Translator;->error(CLjava/lang/String;)V

    .line 26
    :cond_2
    invoke-virtual {p3, v2}, Lgnu/expr/ScopeExp;->addDeclaration(Ljava/lang/Object;)Lgnu/expr/Declaration;

    move-result-object v0

    .line 27
    invoke-virtual {p4, v0}, Lkawa/lang/Translator;->push(Lgnu/expr/Declaration;)V

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lgnu/expr/Declaration;->setSimple(Z)V

    .line 29
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setPrivate(Z)V

    .line 30
    const-wide/32 v3, 0x10040000

    invoke-virtual {v0, v3, v4}, Lgnu/expr/Declaration;->setFlag(J)V

    .line 31
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 32
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    .line 33
    invoke-virtual {v0, v6}, Lgnu/expr/Declaration;->setIndirectBinding(Z)V

    .line 34
    invoke-virtual {v1}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v1

    .line 35
    invoke-static {p1, p0, v1}, Lkawa/lang/Translator;->makePair(Lgnu/lists/Pair;Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object p1

    .line 37
    .end local v0           #decl:Lgnu/expr/Declaration;
    :cond_3
    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v6

    .line 38
    goto :goto_0
.end method
