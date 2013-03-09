.class public Lgnu/bytecode/ArrayType;
.super Lgnu/bytecode/ObjectType;
.source "ArrayType.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public elements:Lgnu/bytecode/Type;


# direct methods
.method public constructor <init>(Lgnu/bytecode/Type;)V
    .locals 2
    .parameter "elements"

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method constructor <init>(Lgnu/bytecode/Type;Ljava/lang/String;)V
    .locals 0
    .parameter "elements"
    .parameter "name"

    .prologue
    .line 19
    invoke-direct {p0}, Lgnu/bytecode/ObjectType;-><init>()V

    .line 20
    iput-object p2, p0, Lgnu/bytecode/ArrayType;->this_name:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 22
    return-void
.end method

.method public static make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;
    .locals 3
    .parameter "elements"

    .prologue
    .line 53
    iget-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 54
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lgnu/bytecode/ArrayType;

    .end local v0           #array_type:Lgnu/bytecode/ArrayType;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 57
    .restart local v0       #array_type:Lgnu/bytecode/ArrayType;
    iput-object v0, p0, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 59
    :cond_0
    return-object v0
.end method

.method static make(Ljava/lang/String;)Lgnu/bytecode/ArrayType;
    .locals 5
    .parameter "name"

    .prologue
    .line 40
    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgnu/bytecode/Type;->getType(Ljava/lang/String;)Lgnu/bytecode/Type;

    move-result-object v1

    .line 41
    .local v1, elements:Lgnu/bytecode/Type;
    iget-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 42
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lgnu/bytecode/ArrayType;

    .end local v0           #array_type:Lgnu/bytecode/ArrayType;
    invoke-direct {v0, v1, p0}, Lgnu/bytecode/ArrayType;-><init>(Lgnu/bytecode/Type;Ljava/lang/String;)V

    .line 45
    .restart local v0       #array_type:Lgnu/bytecode/ArrayType;
    iput-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 47
    :cond_0
    return-object v0
.end method


# virtual methods
.method public compare(Lgnu/bytecode/Type;)I
    .locals 2
    .parameter "other"

    .prologue
    .line 127
    sget-object v0, Lgnu/bytecode/ArrayType;->nullType:Lgnu/bytecode/ObjectType;

    if-ne p1, v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 135
    .end local p1
    :goto_0
    return v0

    .line 129
    .restart local p1
    :cond_0
    instance-of v0, p1, Lgnu/bytecode/ArrayType;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    check-cast p1, Lgnu/bytecode/ArrayType;

    .end local p1
    iget-object v1, p1, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v0, v1}, Lgnu/bytecode/Type;->compare(Lgnu/bytecode/Type;)I

    move-result v0

    goto :goto_0

    .line 131
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lgnu/bytecode/Type;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.Object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lgnu/bytecode/ArrayType;->toStringType:Lgnu/bytecode/ClassType;

    if-ne p1, v0, :cond_3

    .line 133
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, -0x3

    goto :goto_0
.end method

.method public getComponentType()Lgnu/bytecode/Type;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    return-object v0
.end method

.method public getImplementationType()Lgnu/bytecode/Type;
    .locals 2

    .prologue
    .line 33
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getImplementationType()Lgnu/bytecode/Type;

    move-result-object v0

    .line 34
    .local v0, eltype:Lgnu/bytecode/Type;
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    if-ne v1, v0, :cond_0

    move-object v1, p0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lgnu/bytecode/ArrayType;->make(Lgnu/bytecode/Type;)Lgnu/bytecode/ArrayType;

    move-result-object v1

    goto :goto_0
.end method

.method public getInternalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I
    .locals 4
    .parameter "filter"
    .parameter "searchSupers"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgnu/bytecode/Filter;",
            "I",
            "Ljava/util/List",
            "<",
            "Lgnu/bytecode/Method;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, result:Ljava/util/List;,"Ljava/util/List<Lgnu/bytecode/Method;>;"
    const/4 v3, 0x0

    .line 104
    if-lez p2, :cond_2

    .line 106
    sget-object v2, Lgnu/bytecode/Type;->objectType:Lgnu/bytecode/ClassType;

    invoke-virtual {v2, p1, v3, p3}, Lgnu/bytecode/ClassType;->getMethods(Lgnu/bytecode/Filter;ILjava/util/List;)I

    move-result v0

    .line 107
    .local v0, count:I
    const/4 v2, 0x1

    if-le p2, v2, :cond_1

    sget-object v2, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    invoke-interface {p1, v2}, Lgnu/bytecode/Filter;->select(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    if-eqz p3, :cond_0

    .line 111
    sget-object v1, Lgnu/bytecode/Type;->clone_method:Lgnu/bytecode/Method;

    .line 113
    .local v1, meth:Lgnu/bytecode/Method;
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v1           #meth:Lgnu/bytecode/Method;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v2, v0

    .line 122
    .end local v0           #count:I
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public getReflectClass()Ljava/lang/Class;
    .locals 7

    .prologue
    .line 71
    :try_start_0
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 73
    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getInternalName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x2e

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, cname:Ljava/lang/String;
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v4}, Lgnu/bytecode/Type;->getReflectClass()Ljava/lang/Class;

    move-result-object v1

    .line 75
    .local v1, elClass:Ljava/lang/Class;
    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    .line 78
    .end local v0           #cname:Ljava/lang/String;
    .end local v1           #elClass:Ljava/lang/Class;
    :cond_0
    iget v4, p0, Lgnu/bytecode/ArrayType;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, p0, Lgnu/bytecode/ArrayType;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    iget-object v4, p0, Lgnu/bytecode/ArrayType;->reflectClass:Ljava/lang/Class;

    return-object v4

    .line 80
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 82
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    iget v4, p0, Lgnu/bytecode/ArrayType;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1

    .line 84
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no such array class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lgnu/bytecode/ArrayType;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, rex:Ljava/lang/RuntimeException;
    invoke-virtual {v3, v2}, Ljava/lang/RuntimeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 89
    throw v3
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-virtual {v1}, Lgnu/bytecode/Type;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/bytecode/ArrayType;->setSignature(Ljava/lang/String;)V

    .line 28
    :cond_0
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->signature:Ljava/lang/String;

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
    .line 146
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/Type;

    iput-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    .line 147
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iget-object v0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    .line 152
    .local v0, array_type:Lgnu/bytecode/ArrayType;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 157
    :goto_0
    return-object v1

    .line 156
    :cond_0
    iget-object v1, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    iput-object p0, v1, Lgnu/bytecode/Type;->array_type:Lgnu/bytecode/ArrayType;

    move-object v1, p0

    .line 157
    goto :goto_0
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
    .line 140
    iget-object v0, p0, Lgnu/bytecode/ArrayType;->elements:Lgnu/bytecode/Type;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 141
    return-void
.end method
