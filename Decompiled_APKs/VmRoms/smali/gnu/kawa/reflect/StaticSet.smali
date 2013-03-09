.class public Lgnu/kawa/reflect/StaticSet;
.super Lgnu/mapping/Procedure1;
.source "StaticSet.java"

# interfaces
.implements Lgnu/expr/Inlineable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;

.field field:Lgnu/bytecode/Field;

.field fname:Ljava/lang/String;

.field reflectField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Lgnu/bytecode/ClassType;Ljava/lang/String;Lgnu/bytecode/Type;I)V
    .locals 1
    .parameter "ctype"
    .parameter "name"
    .parameter "ftype"
    .parameter "flags"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 22
    iput-object p1, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 23
    iput-object p2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, p2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 25
    iget-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1, p2, p3, p4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v0

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 27
    :cond_0
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .parameter "clas"
    .parameter "fname"

    .prologue
    .line 15
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 16
    invoke-static {p1}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    .line 17
    iput-object p2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "arg1"

    .prologue
    .line 31
    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    .line 33
    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v2}, Lgnu/bytecode/ClassType;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 36
    .local v0, clas:Ljava/lang/Class;
    :try_start_0
    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0           #clas:Ljava/lang/Class;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    sget-object v2, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    .line 38
    .restart local v0       #clas:Ljava/lang/Class;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 40
    .local v1, ex:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no such field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    .end local v0           #clas:Ljava/lang/Class;
    .end local v1           #ex:Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 51
    .local v1, ex:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access for field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public compile(Lgnu/expr/ApplyExp;Lgnu/expr/Compilation;Lgnu/expr/Target;)V
    .locals 5
    .parameter "exp"
    .parameter "comp"
    .parameter "target"

    .prologue
    .line 57
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lgnu/bytecode/ClassType;->getField(Ljava/lang/String;)Lgnu/bytecode/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 60
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    if-nez v1, :cond_0

    .line 61
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->ctype:Lgnu/bytecode/ClassType;

    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->fname:Ljava/lang/String;

    iget-object v3, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lgnu/bytecode/Type;->make(Ljava/lang/Class;)Lgnu/bytecode/Type;

    move-result-object v3

    iget-object v4, p0, Lgnu/kawa/reflect/StaticSet;->reflectField:Ljava/lang/reflect/Field;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lgnu/bytecode/ClassType;->addField(Ljava/lang/String;Lgnu/bytecode/Type;I)Lgnu/bytecode/Field;

    move-result-object v1

    iput-object v1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    .line 64
    :cond_0
    invoke-virtual {p1}, Lgnu/expr/ApplyExp;->getArgs()[Lgnu/expr/Expression;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v2, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v2}, Lgnu/bytecode/Field;->getType()Lgnu/bytecode/Type;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lgnu/expr/Expression;->compile(Lgnu/expr/Compilation;Lgnu/bytecode/Type;)V

    .line 65
    invoke-virtual {p2}, Lgnu/expr/Compilation;->getCode()Lgnu/bytecode/CodeAttr;

    move-result-object v0

    .line 66
    .local v0, code:Lgnu/bytecode/CodeAttr;
    iget-object v1, p0, Lgnu/kawa/reflect/StaticSet;->field:Lgnu/bytecode/Field;

    invoke-virtual {v0, v1}, Lgnu/bytecode/CodeAttr;->emitPutStatic(Lgnu/bytecode/Field;)V

    .line 67
    sget-object v1, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    invoke-virtual {p2, v1, p3}, Lgnu/expr/Compilation;->compileConstant(Ljava/lang/Object;Lgnu/expr/Target;)V

    .line 68
    return-void
.end method

.method public getReturnType([Lgnu/expr/Expression;)Lgnu/bytecode/Type;
    .locals 1
    .parameter "args"

    .prologue
    .line 72
    sget-object v0, Lgnu/bytecode/Type;->voidType:Lgnu/bytecode/PrimType;

    return-object v0
.end method
