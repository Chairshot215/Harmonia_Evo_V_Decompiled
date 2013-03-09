.class abstract Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;
.super Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;
.source "RemoteAbstractGbaClass.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaClass;


# instance fields
.field protected final gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;-><init>(Ljava/lang/Object;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "gbaClassLoader must be not null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-virtual {p0}, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->validateClassLoader()V

    return-void
.end method


# virtual methods
.method public getGbaClassLoader()Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    return-object v0
.end method

.method validateClassLoader()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/gba/RemoteAbstractGbaClass;->gbaClassLoader:Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;

    invoke-interface {v3}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;->getPlatformClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/remote/RemoteAbstractClass;->cls:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "This class was loaded with another ClassLoader!   classLoaderOfCurrentClass="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   platformClassLoader="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PROBLEM with loading an instance of Platform class loader : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    return-void
.end method
