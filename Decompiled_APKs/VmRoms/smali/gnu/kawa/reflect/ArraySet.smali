.class public Lgnu/kawa/reflect/ArraySet;
.super Lgnu/mapping/Procedure3;
.source "ArraySet.java"

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
    invoke-direct {p0}, Lgnu/mapping/Procedure3;-><init>()V

    .line 12
    iput-object p1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 13
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileArrays:validateArraySet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/ArraySet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.reflect.CompileArrays:getForArraySet"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public apply3(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "array"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 20
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget-object v1, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1, p3}, Lgnu/bytecode/Type;->coerceFromObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 23
    sget-object v0, Lgnu/mapping/Values;->empty:Lgnu/mapping/Values;

    return-object v0
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
    .line 34
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    .line 35
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
    .line 28
    iget-object v0, p0, Lgnu/kawa/reflect/ArraySet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 29
    return-void
.end method
