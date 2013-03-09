.class public Lgnu/kawa/reflect/ArrayNew;
.super Lgnu/mapping/Procedure1;
.source "ArrayNew.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "element_type"

    .prologue
    .line 11
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    .line 13
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileArrays:validateArrayNew"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/ArrayNew;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.reflect.CompileArrays:getForArrayNew"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "count"

    .prologue
    .line 25
    iget-object v1, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v1

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v0

    .line 26
    .local v0, clas:Ljava/lang/Class;
    check-cast p1, Ljava/lang/Number;

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isSideEffectFree()Z
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    .line 39
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayNew;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
