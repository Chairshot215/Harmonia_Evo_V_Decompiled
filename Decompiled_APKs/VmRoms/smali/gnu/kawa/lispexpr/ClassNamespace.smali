.class public Lgnu/kawa/lispexpr/ClassNamespace;
.super Lgnu/mapping/Namespace;
.source "ClassNamespace.java"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field ctype:Lgnu/bytecode/ClassType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Lgnu/bytecode/ClassType;)V
    .locals 2
    .parameter "ctype"

    .prologue
    .line 34
    invoke-direct {p0}, Lgnu/mapping/Namespace;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 37
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Lgnu/bytecode/ClassType;)Lgnu/kawa/lispexpr/ClassNamespace;
    .locals 4
    .parameter "name"
    .parameter "ctype"

    .prologue
    .line 18
    sget-object v2, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    monitor-enter v2

    .line 20
    :try_start_0
    sget-object v3, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 21
    .local v1, old:Ljava/lang/Object;
    instance-of v3, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v3, :cond_0

    .line 22
    check-cast v1, Lgnu/kawa/lispexpr/ClassNamespace;

    .end local v1           #old:Ljava/lang/Object;
    monitor-exit v2

    move-object v2, v1

    .line 25
    :goto_0
    return-object v2

    .line 23
    .restart local v1       #old:Ljava/lang/Object;
    :cond_0
    new-instance v0, Lgnu/kawa/lispexpr/ClassNamespace;

    invoke-direct {v0, p1}, Lgnu/kawa/lispexpr/ClassNamespace;-><init>(Lgnu/bytecode/ClassType;)V

    .line 24
    .local v0, ns:Lgnu/kawa/lispexpr/ClassNamespace;
    sget-object v3, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v3, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    monitor-exit v2

    move-object v2, v0

    goto :goto_0

    .line 26
    .end local v0           #ns:Lgnu/kawa/lispexpr/ClassNamespace;
    .end local v1           #old:Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter "name"

    .prologue
    .line 43
    :try_start_0
    iget-object v1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-static {v1, p1}, Lgnu/kawa/functions/GetNamedPart;->getTypePart(Lgnu/bytecode/Type;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 45
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 47
    .local v0, ex:Ljava/lang/Throwable;
    invoke-static {v0}, Lgnu/mapping/WrappedException;->wrapIfNeeded(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getClassType()Lgnu/bytecode/ClassType;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgnu/bytecode/ClassType;

    iput-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-virtual {v1}, Lgnu/bytecode/ClassType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgnu/kawa/lispexpr/ClassNamespace;->setName(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-virtual {p0}, Lgnu/kawa/lispexpr/ClassNamespace;->getName()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 68
    sget-object v2, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgnu/mapping/Namespace;

    .line 69
    .local v1, ns:Lgnu/mapping/Namespace;
    instance-of v2, v1, Lgnu/kawa/lispexpr/ClassNamespace;

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 73
    .end local v1           #ns:Lgnu/mapping/Namespace;
    :goto_0
    return-object v2

    .line 71
    .restart local v1       #ns:Lgnu/mapping/Namespace;
    :cond_0
    sget-object v2, Lgnu/kawa/lispexpr/ClassNamespace;->nsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #ns:Lgnu/mapping/Namespace;
    :cond_1
    move-object v2, p0

    .line 73
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
    .line 53
    iget-object v0, p0, Lgnu/kawa/lispexpr/ClassNamespace;->ctype:Lgnu/bytecode/ClassType;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 54
    return-void
.end method
