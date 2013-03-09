.class public Lgnu/kawa/reflect/ArrayGet;
.super Lgnu/mapping/Procedure2;
.source "ArrayGet.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field element_type:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "element_type"

    .prologue
    .line 12
    invoke-direct {p0}, Lgnu/mapping/Procedure2;-><init>()V

    .line 13
    iput-object p1, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    .line 14
    sget-object v0, Lgnu/mapping/Procedure;->validateApplyKey:Lgnu/mapping/Symbol;

    const-string v1, "gnu.kawa.reflect.CompileArrays:validateArrayGet"

    invoke-virtual {p0, v0, v1}, Lgnu/kawa/reflect/ArrayGet;->setProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lgnu/mapping/Procedure;->compilerKey:Lgnu/mapping/LazyPropertyKey;

    const-string v1, "*gnu.kawa.reflect.CompileArrays:getForArrayGet"

    invoke-virtual {v0, p0, v1}, Lgnu/mapping/LazyPropertyKey;->set(Lgnu/mapping/PropertySet;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public apply2(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "array"
    .parameter "index"

    .prologue
    .line 21
    check-cast p2, Ljava/lang/Number;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 22
    .local v0, value:Ljava/lang/Object;
    iget-object v1, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-virtual {v1, v0}, Lgnu/bytecode/Type;->coerceToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
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

    iput-object v0, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

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
    iget-object v0, p0, Lgnu/kawa/reflect/ArrayGet;->element_type:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 33
    return-void
.end method
