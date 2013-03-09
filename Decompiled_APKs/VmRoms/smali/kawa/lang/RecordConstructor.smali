.class public Lkawa/lang/RecordConstructor;
.super Lgnu/mapping/ProcedureN;
.source "RecordConstructor.java"


# instance fields
.field fields:[Lgnu/bytecode/Field;

.field type:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 28
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 29
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V
    .locals 10
    .parameter "type"
    .parameter "fieldsList"

    .prologue
    .line 59
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 60
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 61
    if-nez p2, :cond_1

    .line 62
    invoke-direct {p0, p1}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 85
    :cond_0
    return-void

    .line 65
    :cond_1
    const/4 v7, 0x0

    invoke-static {p2, v7}, Lgnu/lists/LList;->listLength(Ljava/lang/Object;Z)I

    move-result v5

    .line 66
    .local v5, nfields:I
    new-array v7, v5, [Lgnu/bytecode/Field;

    iput-object v7, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 67
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    .line 68
    .local v4, list:Lgnu/bytecode/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 70
    move-object v0, p2

    check-cast v0, Lgnu/lists/Pair;

    move-object v6, v0

    .line 71
    .local v6, pair:Lgnu/lists/Pair;
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCar()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, fname:Ljava/lang/String;
    move-object v1, v4

    .line 74
    .local v1, fld:Lgnu/bytecode/Field;
    :goto_1
    if-nez v1, :cond_2

    .line 75
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "no such field "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 76
    :cond_2
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v7

    if-ne v7, v2, :cond_3

    .line 78
    iget-object v7, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aput-object v1, v7, v3

    .line 82
    invoke-virtual {v6}, Lgnu/lists/Pair;->getCdr()Ljava/lang/Object;

    move-result-object p2

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_1
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V
    .locals 0
    .parameter "type"
    .parameter "fields"

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 13
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 14
    iput-object p2, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter "clas"

    .prologue
    .line 23
    invoke-direct {p0}, Lgnu/mapping/ProcedureN;-><init>()V

    .line 24
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0}, Lkawa/lang/RecordConstructor;->init(Lgnu/bytecode/ClassType;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .parameter "clas"
    .parameter "fieldsList"

    .prologue
    .line 55
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;[Lgnu/bytecode/Field;)V
    .locals 1
    .parameter "clas"
    .parameter "fields"

    .prologue
    .line 19
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/RecordConstructor;-><init>(Lgnu/bytecode/ClassType;[Lgnu/bytecode/Field;)V

    .line 20
    return-void
.end method

.method private init(Lgnu/bytecode/ClassType;)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    .line 34
    iput-object p1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    .line 35
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v4

    .line 36
    .local v4, list:Lgnu/bytecode/Field;
    const/4 v0, 0x0

    .line 37
    .local v0, count:I
    move-object v1, v4

    .local v1, fld:Lgnu/bytecode/Field;
    :goto_0
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    if-ne v5, v6, :cond_0

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 37
    :cond_0
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    goto :goto_0

    .line 43
    :cond_1
    new-array v5, v0, [Lgnu/bytecode/Field;

    iput-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    .line 44
    const/4 v2, 0x0

    .line 45
    .local v2, i:I
    move-object v1, v4

    move v3, v2

    .end local v2           #i:I
    .local v3, i:I
    :goto_1
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getModifiers()I

    move-result v5

    and-int/lit8 v5, v5, 0x9

    if-ne v5, v6, :cond_3

    .line 49
    iget-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    aput-object v1, v5, v3

    .line 45
    :goto_2
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getNext()Lgnu/bytecode/Field;

    move-result-object v1

    move v3, v2

    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_1

    .line 51
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_2
.end method


# virtual methods
.method public applyN([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .parameter "args"

    .prologue
    .line 103
    :try_start_0
    iget-object v4, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 113
    .local v3, obj:Ljava/lang/Object;
    array-length v4, p1

    iget-object v5, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 114
    new-instance v4, Lgnu/mapping/WrongArguments;

    array-length v5, p1

    invoke-direct {v4, p0, v5}, Lgnu/mapping/WrongArguments;-><init>(Lgnu/mapping/Procedure;I)V

    throw v4

    .line 105
    .end local v3           #obj:Ljava/lang/Object;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 107
    .local v0, ex:Ljava/lang/InstantiationException;
    new-instance v4, Lkawa/lang/GenericError;

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 111
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v4, Lkawa/lang/GenericError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lkawa/lang/GenericError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 115
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    .restart local v3       #obj:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 117
    iget-object v4, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    aget-object v1, v4, v2

    .line 120
    .local v1, fld:Lgnu/bytecode/Field;
    :try_start_1
    invoke-virtual {v1}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 124
    .local v0, ex:Ljava/lang/Exception;
    new-instance v4, Lgnu/mapping/WrappedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal access for field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lgnu/bytecode/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lgnu/mapping/WrappedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 127
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #fld:Lgnu/bytecode/Field;
    :cond_1
    return-object v3
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkawa/lang/RecordConstructor;->type:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " constructor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public numArgs()I
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lkawa/lang/RecordConstructor;->fields:[Lgnu/bytecode/Field;

    array-length v0, v1

    .line 90
    .local v0, nargs:I
    shl-int/lit8 v1, v0, 0xc

    or-int/2addr v1, v0

    return v1
.end method
