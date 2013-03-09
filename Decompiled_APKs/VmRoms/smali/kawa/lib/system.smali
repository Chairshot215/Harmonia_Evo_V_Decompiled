.class public Lkawa/lib/system;
.super Lgnu/expr/ModuleBody;
.source "system.scm"


# static fields
.field public static final $instance:Lkawa/lib/system;

.field static final Lit0:Lgnu/math/IntNum;

.field static final Lit1:Lgnu/math/IntNum;

.field static final Lit10:Lgnu/mapping/SimpleSymbol;

.field static final Lit11:Lgnu/mapping/SimpleSymbol;

.field static final Lit2:Lgnu/mapping/SimpleSymbol;

.field static final Lit3:Lgnu/mapping/SimpleSymbol;

.field static final Lit4:Lgnu/mapping/SimpleSymbol;

.field static final Lit5:Lgnu/mapping/SimpleSymbol;

.field static final Lit6:Lgnu/mapping/SimpleSymbol;

.field static final Lit7:Lgnu/mapping/SimpleSymbol;

.field static final Lit8:Lgnu/mapping/SimpleSymbol;

.field static final Lit9:Lgnu/mapping/SimpleSymbol;

.field public static final catch:Lgnu/expr/ModuleMethod;

.field public static command$Mnparse:Lgnu/mapping/Procedure;

.field public static final compile$Mnfile:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final make$Mnprocess:Lgnu/expr/ModuleMethod;

.field public static final open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

.field public static final process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

.field public static final system:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

.field public static final tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x2002

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x1001

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "process-command-line-assignments"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "catch"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "compile-file"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "tokenize-string-using-shell"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "tokenize-string-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "convert-list-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "convert-vector-to-string-array"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "system"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "open-input-pipe"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    new-instance v0, Lgnu/mapping/SimpleSymbol;

    const-string v1, "make-process"

    invoke-direct {v0, v1}, Lgnu/mapping/SimpleSymbol;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lgnu/mapping/SimpleSymbol;->readResolve()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/mapping/SimpleSymbol;

    sput-object v0, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-static {v3}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    invoke-static {v5}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    sput-object v0, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    new-instance v0, Lkawa/lib/system;

    invoke-direct {v0}, Lkawa/lib/system;-><init>()V

    sput-object v0, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    new-instance v0, Lgnu/expr/ModuleMethod;

    sget-object v1, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    sget-object v2, Lkawa/lib/system;->Lit2:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v3, v2, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->make$Mnprocess:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x2

    sget-object v3, Lkawa/lib/system;->Lit3:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->open$Mninput$Mnpipe:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x3

    sget-object v3, Lkawa/lib/system;->Lit4:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->system:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x4

    sget-object v3, Lkawa/lib/system;->Lit5:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->convert$Mnvector$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x5

    sget-object v3, Lkawa/lib/system;->Lit6:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->convert$Mnlist$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x6

    sget-object v3, Lkawa/lib/system;->Lit7:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/4 v2, 0x7

    sget-object v3, Lkawa/lib/system;->Lit8:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x8

    sget-object v3, Lkawa/lib/system;->Lit9:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v6}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->compile$Mnfile:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0x9

    sget-object v3, Lkawa/lib/system;->Lit10:Lgnu/mapping/SimpleSymbol;

    const/16 v4, 0x3003

    invoke-direct {v0, v1, v2, v3, v4}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->catch:Lgnu/expr/ModuleMethod;

    new-instance v0, Lgnu/expr/ModuleMethod;

    const/16 v2, 0xa

    sget-object v3, Lkawa/lib/system;->Lit11:Lgnu/mapping/SimpleSymbol;

    invoke-direct {v0, v1, v2, v3, v5}, Lgnu/expr/ModuleMethod;-><init>(Lgnu/expr/ModuleBody;ILjava/lang/Object;I)V

    sput-object v0, Lkawa/lib/system;->process$Mncommand$Mnline$Mnassignments:Lgnu/expr/ModuleMethod;

    sget-object v0, Lkawa/lib/system;->$instance:Lkawa/lib/system;

    invoke-virtual {v0}, Lgnu/expr/ModuleBody;->run()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lgnu/expr/ModuleBody;-><init>()V

    invoke-static {p0}, Lgnu/expr/ModuleInfo;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public static catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;
    .locals 2
    .parameter "key"
    .parameter "thunk"
    .parameter "handler"

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1}, Lgnu/mapping/Procedure;->apply0()Ljava/lang/Object;
    :try_end_0
    .catch Lkawa/lang/NamedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_0
    return-object v1

    .line 102
    :catch_0
    move-exception v0

    .line 105
    .local v0, ex:Lkawa/lang/NamedException;
    invoke-virtual {v0, p0, p2}, Lkawa/lang/NamedException;->applyHandler(Ljava/lang/Object;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public static compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "source"
    .parameter "output"

    .prologue
    .line 86
    new-instance v1, Lgnu/text/SourceMessages;

    invoke-direct {v1}, Lgnu/text/SourceMessages;-><init>()V

    .line 89
    .local v1, messages:Lgnu/text/SourceMessages;
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkawa/lang/CompileFile;->read(Ljava/lang/String;Lgnu/text/SourceMessages;)Lgnu/expr/Compilation;

    move-result-object v0

    .line 93
    .local v0, comp:Lgnu/expr/Compilation;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lgnu/expr/Compilation;->explicit:Z

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance p0, Lgnu/text/SyntaxException;

    .end local p0
    invoke-direct {p0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 96
    .restart local p0
    :cond_0
    invoke-virtual {v0}, Lgnu/expr/Compilation;->getModule()Lgnu/expr/ModuleExp;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lgnu/expr/Compilation;->compileToArchive(Lgnu/expr/ModuleExp;Ljava/lang/String;)V

    invoke-virtual {v1}, Lgnu/text/SourceMessages;->seenErrors()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    new-instance p0, Lgnu/text/SyntaxException;

    .end local p0
    invoke-direct {p0, v1}, Lgnu/text/SyntaxException;-><init>(Lgnu/text/SourceMessages;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .restart local p0
    :cond_1
    return-void
.end method

.method public static convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .parameter "lst"

    .prologue
    .line 43
    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/LList;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v6}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v2

    .line 45
    .local v2, count:I
    new-array v1, v2, [Ljava/lang/String;

    .line 46
    .local v1, arr:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object v4, p0

    .line 47
    .local v4, p:Ljava/lang/Object;
    :goto_0
    invoke-static {v4}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    return-object v1

    .line 48
    :cond_0
    :try_start_1
    move-object v0, v4

    check-cast v0, Lgnu/lists/Pair;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    .local v5, pp:Lgnu/lists/Pair;
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_1
    aput-object v7, v1, v6

    .line 50
    invoke-virtual {v5}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Ljava/lang/Object;
    add-int/lit8 v3, v6, 0x1

    .local v3, i:I
    .restart local v4       #p:Ljava/lang/Object;
    move v6, v3

    goto :goto_0

    .line 49
    .end local v3           #i:I
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 44
    .end local v1           #arr:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v4           #p:Ljava/lang/Object;
    .end local v5           #pp:Lgnu/lists/Pair;
    :catch_0
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "length"

    const/4 v9, 0x1

    invoke-direct {v7, v6, v8, v9, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7

    .line 48
    .restart local v1       #arr:[Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v4       #p:Ljava/lang/Object;
    :catch_1
    move-exception v6

    new-instance v7, Lgnu/mapping/WrongType;

    const-string v8, "pp"

    const/4 v9, -0x2

    invoke-direct {v7, v6, v8, v9, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v7
.end method

.method public static convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .parameter "vec"

    .prologue
    const/4 v7, 0x1

    .line 36
    :try_start_0
    move-object v0, p0

    check-cast v0, Lgnu/lists/FVector;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v4}, Lkawa/lib/vectors;->vectorLength(Lgnu/lists/FVector;)I

    move-result v2

    .line 38
    .local v2, count:I
    new-array v1, v2, [Ljava/lang/String;

    .line 39
    .local v1, arr:[Ljava/lang/String;
    sget-object v3, Lkawa/lib/system;->Lit0:Lgnu/math/IntNum;

    :goto_0
    sget-object v4, Lkawa/standard/Scheme;->numEqu:Lgnu/kawa/functions/NumberCompare;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v4, v5, :cond_1

    .line 41
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v6

    :try_start_1
    move-object v0, p0

    check-cast v0, Lgnu/lists/FVector;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    move-object v0, v3

    check-cast v0, Ljava/lang/Number;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    invoke-static {v4, v5}, Lkawa/lib/vectors;->vectorRef(Lgnu/lists/FVector;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_1
    aput-object v4, v1, v6

    .line 39
    sget-object v4, Lgnu/kawa/functions/AddOp;->$Pl:Lgnu/kawa/functions/AddOp;

    sget-object v5, Lkawa/lib/system;->Lit1:Lgnu/math/IntNum;

    invoke-virtual {v4, v3, v5}, Lgnu/mapping/Procedure;->apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, i:Ljava/lang/Object;
    goto :goto_0

    .line 41
    .end local v3           #i:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 37
    .end local v1           #arr:[Ljava/lang/String;
    .end local v2           #count:I
    :catch_0
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "vector-length"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 41
    .restart local v1       #arr:[Ljava/lang/String;
    .restart local v2       #count:I
    :catch_1
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "vector-ref"

    invoke-direct {v5, v4, v6, v7, p0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    :catch_2
    move-exception v4

    new-instance v5, Lgnu/mapping/WrongType;

    const-string v6, "vector-ref"

    const/4 v7, 0x2

    invoke-direct {v5, v4, v6, v7, v3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v5

    .line 40
    :cond_1
    return-object v1
.end method

.method public static makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;
    .locals 6
    .parameter "args"
    .parameter "env"

    .prologue
    .line 6
    invoke-static {p0}, Lkawa/lib/vectors;->isVector(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 7
    .local v0, arargs:Ljava/lang/Object;
    :goto_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .local v1, runtime:Ljava/lang/Runtime;
    :try_start_0
    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #arargs:Ljava/lang/Object;
    :try_start_1
    check-cast p1, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p1
    invoke-virtual {v1, v0, p1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    return-object v2

    .line 6
    .end local v1           #runtime:Ljava/lang/Runtime;
    .restart local p1
    :cond_0
    invoke-static {p0}, Lkawa/lib/lists;->isList(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    invoke-static {p0}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lkawa/lib/strings;->isString(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    sget-object v2, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    invoke-virtual {v2, p0}, Lgnu/mapping/Procedure;->apply1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    :cond_2
    instance-of v2, p0, [Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 11
    goto :goto_0

    .line 12
    :cond_3
    const-string v2, "invalid arguments to make-process"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lkawa/lib/misc;->error$V(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 18
    .restart local v0       #arargs:Ljava/lang/Object;
    .restart local v1       #runtime:Ljava/lang/Runtime;
    :catch_0
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    const/4 v5, 0x2

    invoke-direct {v3, v2, v4, v5, v0}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3

    .end local v0           #arargs:Ljava/lang/Object;
    :catch_1
    move-exception v2

    new-instance v3, Lgnu/mapping/WrongType;

    const-string v4, "java.lang.Runtime.exec(java.lang.String[],java.lang.String[])"

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5, p1}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v3
.end method

.method public static openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 1
    .parameter "command"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static processCommandLineAssignments()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lgnu/expr/ApplicationMainSupport;->processSetProperties()V

    return-void
.end method

.method public static system(Ljava/lang/Object;)I
    .locals 1
    .parameter "command"

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    return v0
.end method

.method public static tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;
    .locals 12
    .parameter "string"

    .prologue
    const/4 v11, 0x1

    .line 52
    new-instance v7, Ljava/util/StringTokenizer;

    invoke-direct {v7, p0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 55
    .local v7, toks:Ljava/util/StringTokenizer;
    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    :goto_0
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 64
    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lkawa/lib/lists;->cons(Ljava/lang/Object;Ljava/lang/Object;)Lgnu/lists/Pair;

    move-result-object v4

    .local v4, list:Lgnu/lists/Pair;
    goto :goto_0

    .line 53
    .local v4, rlist:Ljava/lang/Object;
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Lgnu/lists/LList;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v8}, Lkawa/lib/lists;->length(Lgnu/lists/LList;)I

    move-result v2

    .local v2, count:I
    new-array v1, v2, [Ljava/lang/String;

    .line 67
    .local v1, arr:[Ljava/lang/String;
    sub-int v8, v2, v11

    move-object v5, v4

    .line 68
    .local v5, p:Ljava/lang/Object;
    :goto_1
    invoke-static {v5}, Lkawa/lib/lists;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    return-object v1

    .line 69
    :cond_1
    :try_start_1
    move-object v0, v5

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 70
    .local v6, pp:Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    :goto_2
    aput-object v9, v1, v8

    .line 71
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #p:Ljava/lang/Object;
    add-int/lit8 v3, v8, -0x1

    .local v3, i:I
    .restart local v5       #p:Ljava/lang/Object;
    move v8, v3

    goto :goto_1

    .line 70
    .end local v3           #i:I
    :cond_2
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 65
    .end local v1           #arr:[Ljava/lang/String;
    .end local v2           #count:I
    .end local v5           #p:Ljava/lang/Object;
    .end local v6           #pp:Lgnu/lists/Pair;
    :catch_0
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "length"

    invoke-direct {v9, v8, v10, v11, v4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9

    .line 69
    .restart local v1       #arr:[Ljava/lang/String;
    .restart local v2       #count:I
    .restart local v5       #p:Ljava/lang/Object;
    :catch_1
    move-exception v8

    new-instance v9, Lgnu/mapping/WrongType;

    const-string v10, "pp"

    const/4 v11, -0x2

    invoke-direct {v9, v8, v10, v11, v5}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v9
.end method

.method public static tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    .line 73
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 76
    .local v0, arr:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "/bin/sh"

    aput-object v2, v0, v1

    .line 77
    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    .line 78
    const/4 v1, 0x2

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    aput-object v2, v0, v1

    .line 79
    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    invoke-static {}, Lkawa/lib/system;->processCommandLineAssignments()V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lgnu/expr/ModuleBody;->apply0(Lgnu/expr/ModuleMethod;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 73
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->apply1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    invoke-static {p2}, Lkawa/lib/system;->openInputPipe(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_1
    invoke-static {p2}, Lkawa/lib/system;->system(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_2
    invoke-static {p2}, Lkawa/lib/system;->convertVectorToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 43
    :pswitch_3
    invoke-static {p2}, Lkawa/lib/system;->convertListToStringArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :pswitch_4
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lkawa/lib/system;->tokenizeStringToStringArray(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 73
    :pswitch_5
    invoke-static {p2}, Lkawa/lib/system;->tokenizeStringUsingShell(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 86
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->apply2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6
    :sswitch_0
    invoke-static {p2, p3}, Lkawa/lib/system;->makeProcess(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Process;

    move-result-object v0

    goto :goto_0

    .line 86
    :sswitch_1
    :try_start_0
    check-cast p2, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_1
    invoke-static {p2, v0}, Lkawa/lib/system;->compileFile(Ljava/lang/CharSequence;Ljava/lang/String;)V

    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "compile-file"

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3, p2}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    .line -1
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 102
    :try_start_0
    check-cast p3, Lgnu/mapping/Procedure;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    check-cast p4, Lgnu/mapping/Procedure;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {p2, p3, p4}, Lkawa/lib/system;->catch(Ljava/lang/Object;Lgnu/mapping/Procedure;Lgnu/mapping/Procedure;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->apply3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "catch"

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3, p3}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lgnu/mapping/WrongType;

    const-string v2, "catch"

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3, p4}, Lgnu/mapping/WrongType;-><init>(Ljava/lang/ClassCastException;Ljava/lang/String;ILjava/lang/Object;)V

    throw v1
.end method

.method public match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 107
    iput-object p1, p2, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p2, Lgnu/mapping/CallContext;->pc:I

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lgnu/expr/ModuleBody;->match0(Lgnu/expr/ModuleMethod;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    packed-switch v0, :pswitch_data_0

    .line 21
    invoke-super {p0, p1, p2, p3}, Lgnu/expr/ModuleBody;->match1(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :pswitch_0
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 52
    :pswitch_1
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 43
    :pswitch_2
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 36
    :pswitch_3
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 28
    :pswitch_4
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line 21
    :pswitch_5
    iput-object p2, p3, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p1, p3, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p3, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    sparse-switch v0, :sswitch_data_0

    .line 6
    invoke-super {p0, p1, p2, p3, p4}, Lgnu/expr/ModuleBody;->match2(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    .line 86
    :goto_0
    return v0

    :sswitch_0
    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    :cond_0
    const v0, -0xbffff

    goto :goto_0

    .line 6
    :sswitch_1
    iput-object p2, p4, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    iput-object p3, p4, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    iput-object p1, p4, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    iput v2, p4, Lgnu/mapping/CallContext;->pc:I

    move v0, v1

    goto :goto_0

    .line -1
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iget v0, p1, Lgnu/expr/ModuleMethod;->selector:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 102
    iput-object p2, p5, Lgnu/mapping/CallContext;->value1:Ljava/lang/Object;

    instance-of v0, p3, Lgnu/mapping/Procedure;

    if-nez v0, :cond_0

    const v0, -0xbfffe

    :goto_0
    return v0

    :cond_0
    iput-object p3, p5, Lgnu/mapping/CallContext;->value2:Ljava/lang/Object;

    instance-of v0, p4, Lgnu/mapping/Procedure;

    if-nez v0, :cond_1

    const v0, -0xbfffd

    goto :goto_0

    :cond_1
    iput-object p4, p5, Lgnu/mapping/CallContext;->value3:Ljava/lang/Object;

    iput-object p1, p5, Lgnu/mapping/CallContext;->proc:Lgnu/mapping/Procedure;

    const/4 v0, 0x3

    iput v0, p5, Lgnu/mapping/CallContext;->pc:I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super/range {p0 .. p5}, Lgnu/expr/ModuleBody;->match3(Lgnu/expr/ModuleMethod;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lgnu/mapping/CallContext;)I

    move-result v0

    goto :goto_0
.end method

.method public final run(Lgnu/mapping/CallContext;)V
    .locals 3
    .parameter "$ctx"

    .prologue
    .line 1
    iget-object v0, p1, Lgnu/mapping/CallContext;->consumer:Lgnu/lists/Consumer;

    .line 6
    .local v0, $result:Lgnu/lists/Consumer;
    const-string v1, "file.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v2}, Lgnu/kawa/functions/IsEqual;->apply(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnusing$Mnshell:Lgnu/expr/ModuleMethod;

    :goto_0
    sput-object v1, Lkawa/lib/system;->command$Mnparse:Lgnu/mapping/Procedure;

    .line 86
    return-void

    .line 82
    :cond_0
    sget-object v1, Lkawa/lib/system;->tokenize$Mnstring$Mnto$Mnstring$Mnarray:Lgnu/expr/ModuleMethod;

    goto :goto_0
.end method
