.class public Lkawa/lang/GetFieldProc;
.super Lgnu/mapping/Procedure1;
.source "GetFieldProc.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V
    .locals 1
    .parameter "ctype"
    .parameter "fname"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 20
    iput-object p1, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 21
    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getFields()Lgnu/bytecode/Field;

    move-result-object v0

    invoke-static {v0, p2}, Lgnu/bytecode/Field;->searchField(Lgnu/bytecode/Field;Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 22
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 1
    .parameter "ctype"
    .parameter "name"
    .parameter "ftype"
    .parameter "flags"

    .prologue
    .line 25
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 26
    iput-object p1, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    .line 27
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 28
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 29
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    .line 30
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "clas"
    .parameter "fname"

    .prologue
    .line 15
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    invoke-direct {p0, v0, p2}, Lkawa/lang/GetFieldProc;-><init>(Lgnu/bytecode/ClassType;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private getField()Lgnu/bytecode/Field;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    return-object v0
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg1"

    .prologue
    .line 36
    :try_start_0
    iget-object v2, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getReflectField()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 37
    .local v1, reflectField:Ljava/lang/reflect/Field;
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 39
    .end local v1           #reflectField:Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v4}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    .end local v0           #ex:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v4}, Lgnu/bytecode/Field;->getSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 4
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 58
    iget-object v2, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 59
    .local v1, loader:Ljava/lang/ClassLoader;
    instance-of v2, v1, Lgnu/bytecode/ArrayClassLoader;

    if-eqz v2, :cond_0

    .line 61
    invoke-static {p1, p2, p3}, Lgnu/expr/ApplyExp;->compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V

    .line 68
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lkawa/lang/GetFieldProc;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, p2, v3}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v2, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v2}, Lgnu/bytecode/CodeAttr;->emitGetField(Lgnu/bytecode/Field;)V

    .line 67
    iget-object v2, p0, Lkawa/lang/GetFieldProc;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lgnu/expr/Target;->compileFromStack(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    goto :goto_0
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 72
    invoke-direct {p0}, Lkawa/lang/GetFieldProc;->getField()Lgnu/bytecode/Field;

    move-result-object v0

    invoke-virtual {v0}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v0

    return-object v0
.end method
