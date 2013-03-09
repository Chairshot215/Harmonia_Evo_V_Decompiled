.class public Lkawa/standard/location;
.super Lkawa/lang/Syntax;
.source "location.java"


# static fields
.field public static final location:Lkawa/standard/location;

.field private static thisType:Lgnu/bytecode/ClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lkawa/standard/location;

    invoke-direct {v0}, Lkawa/standard/location;-><init>()V

    sput-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    .line 18
    sget-object v0, Lkawa/standard/location;->location:Lkawa/standard/location;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Lkawa/standard/location;->setName(Ljava/lang/String;)V

    .line 32
    const-string v0, "kawa.standard.location"

    invoke-static {v0}, Lgnu/bytecode/ClassType;->make(Ljava/lang/String;)Lgnu/bytecode/ClassType;

    move-result-object v0

    sput-object v0, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lkawa/lang/Syntax;-><init>()V

    return-void
.end method

.method public static makeLocationProc(Lgnu/mapping/Location;)Lgnu/mapping/Procedure;
    .locals 1
    .parameter "loc"

    .prologue
    .line 84
    new-instance v0, Lgnu/mapping/LocationProc;

    invoke-direct {v0, p0}, Lgnu/mapping/LocationProc;-><init>(Lgnu/mapping/Location;)V

    return-object v0
.end method

.method public static makeProcLocation$V(Lgnu/mapping/Procedure;[Ljava/lang/Object;)Lgnu/mapping/Location;
    .locals 5
    .parameter "proc"
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    array-length v0, p1

    .line 65
    .local v0, nargs:I
    instance-of v2, p0, Lgnu/kawa/functions/ApplyToArgs;

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    aget-object v2, p1, v3

    instance-of v2, v2, Lgnu/mapping/Procedure;

    if-eqz v2, :cond_1

    .line 69
    aget-object p0, p1, v3

    .end local p0
    check-cast p0, Lgnu/mapping/Procedure;

    .line 70
    .restart local p0
    instance-of v2, p0, Lgnu/mapping/LocationProc;

    if-eqz v2, :cond_0

    if-ne v0, v4, :cond_0

    .line 71
    check-cast p0, Lgnu/mapping/LocationProc;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v2

    .line 78
    :goto_0
    return-object v2

    .line 72
    .restart local p0
    :cond_0
    sub-int v2, v0, v4

    new-array v1, v2, [Ljava/lang/Object;

    .line 73
    .local v1, rargs:[Ljava/lang/Object;
    array-length v2, v1

    invoke-static {p1, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    new-instance v2, Lgnu/mapping/ProcLocation;

    invoke-direct {v2, p0, v1}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v1           #rargs:[Ljava/lang/Object;
    :cond_1
    instance-of v2, p0, Lgnu/mapping/LocationProc;

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 77
    check-cast p0, Lgnu/mapping/LocationProc;

    .end local p0
    invoke-virtual {p0}, Lgnu/mapping/LocationProc;->getLocation()Lgnu/mapping/Location;

    move-result-object v2

    goto :goto_0

    .line 78
    .restart local p0
    :cond_2
    new-instance v2, Lgnu/mapping/ProcLocation;

    invoke-direct {v2, p0, p1}, Lgnu/mapping/ProcLocation;-><init>(Lgnu/mapping/Procedure;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 9
    .parameter "arg"
    .parameter "tr"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 36
    instance-of v5, p0, Lgnu/expr/ReferenceExp;

    if-eqz v5, :cond_1

    .line 38
    move-object v0, p0

    check-cast v0, Lgnu/expr/ReferenceExp;

    move-object v4, v0

    .line 39
    .local v4, rexp:Lgnu/expr/ReferenceExp;
    invoke-virtual {v4, v7}, Lgnu/expr/ReferenceExp;->setDontDereference(Z)V

    .line 40
    invoke-virtual {v4}, Lgnu/expr/ReferenceExp;->getBinding()Lgnu/expr/Declaration;

    move-result-object v3

    .line 41
    .local v3, decl:Lgnu/expr/Declaration;
    if-eqz v3, :cond_0

    .line 43
    invoke-virtual {v3, p1}, Lgnu/expr/Declaration;->maybeIndirectBinding(Lgnu/expr/Compilation;)V

    .line 44
    invoke-static {v3}, Lgnu/expr/Declaration;->followAliases(Lgnu/expr/Declaration;)Lgnu/expr/Declaration;

    move-result-object v3

    .line 45
    invoke-virtual {v3, v7}, Lgnu/expr/Declaration;->setCanRead(Z)V

    .line 46
    invoke-virtual {v3, v7}, Lgnu/expr/Declaration;->setCanWrite(Z)V

    :cond_0
    move-object v5, v4

    .line 58
    .end local v3           #decl:Lgnu/expr/Declaration;
    .end local v4           #rexp:Lgnu/expr/ReferenceExp;
    :goto_0
    return-object v5

    .line 50
    :cond_1
    instance-of v5, p0, Lgnu/expr/ApplyExp;

    if-eqz v5, :cond_2

    .line 52
    move-object v0, p0

    check-cast v0, Lgnu/expr/ApplyExp;

    move-object v1, v0

    .line 53
    .local v1, aexp:Lgnu/expr/ApplyExp;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v2, v5, [Lgnu/expr/Expression;

    .line 54
    .local v2, args:[Lgnu/expr/Expression;
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getFunction()Lgnu/expr/Expression;

    move-result-object v5

    aput-object v5, v2, v8

    .line 55
    invoke-virtual {v1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v5

    array-length v6, v2

    sub-int/2addr v6, v7

    invoke-static {v5, v8, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    sget-object v5, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string v6, "makeProcLocation"

    invoke-static {v5, v6, v2}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v1           #aexp:Lgnu/expr/ApplyExp;
    .end local v2           #args:[Lgnu/expr/Expression;
    :cond_2
    const-string v5, "invalid argument to location"

    invoke-virtual {p1, v5}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public rewrite(Ljava/lang/Object;Lkawa/lang/Translator;)Lgnu/expr/Expression;
    .locals 5
    .parameter "obj"
    .parameter "tr"

    .prologue
    .line 22
    instance-of v3, p1, Lgnu/lists/Pair;

    if-nez v3, :cond_0

    .line 23
    const-string v3, "missing argument to location"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    .line 29
    :goto_0
    return-object v3

    .line 24
    :cond_0
    move-object v0, p1

    check-cast v0, Lgnu/lists/Pair;

    move-object v2, v0

    .line 25
    .local v2, pair:Lgnu/lists/Pair;
    invoke-virtual {v2}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lgnu/lists/LList;->Empty:Lgnu/lists/LList;

    if-eq v3, v4, :cond_1

    .line 26
    const-string v3, "extra arguments to location"

    invoke-virtual {p2, v3}, Lkawa/lang/Translator;->syntaxError(Ljava/lang/String;)Lgnu/expr/Expression;

    move-result-object v3

    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x1

    new-array v1, v3, [Lgnu/expr/Expression;

    const/4 v3, 0x0

    sget-object v4, Lkawa/standard/location;->location:Lkawa/standard/location;

    invoke-virtual {v2}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Lkawa/lang/Translator;->rewrite(Ljava/lang/Object;)Lgnu/expr/Expression;

    move-result-object v4

    invoke-static {v4, p2}, Lkawa/standard/location;->rewrite(Lgnu/expr/Expression;Lkawa/lang/Translator;)Lgnu/expr/Expression;

    move-result-object v4

    aput-object v4, v1, v3

    .line 29
    .local v1, args:[Lgnu/expr/Expression;
    sget-object v3, Lkawa/standard/location;->thisType:Lgnu/bytecode/ClassType;

    const-string v4, "makeLocationProc"

    invoke-static {v3, v4, v1}, Lgnu/kawa/reflect/Invoke;->makeInvokeStatic(Lgnu/bytecode/ClassType;Ljava/lang/String;[Lgnu/expr/Expression;)Lgnu/expr/ApplyExp;

    move-result-object v3

    goto :goto_0
.end method
