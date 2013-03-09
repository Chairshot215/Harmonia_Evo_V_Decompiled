.class public Lgnu/kawa/reflect/ArrayLength;
.super Lgnu/mapping/Procedure1;
.source "ArrayLength.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "element_type"

    .prologue
    .line 13
    invoke-direct {p0}, Lgnu/mapping/Procedure1;-><init>()V

    .line 14
    iput-object p1, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    .line 15
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileArrays:validateArrayLength"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/ArrayLength;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.reflect.CompileArrays:getForArrayLength"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public apply1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "array"

    .prologue
    .line 22
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lgnu/math/IntNum;->make(I)Lgnu/math/IntNum;

    move-result-object v0

    return-object v0
.end method

.method public isSideEffectFree()Z
    .locals 1

    .prologue
    .line 27
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

    iput-object v0, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

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
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayLength;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
