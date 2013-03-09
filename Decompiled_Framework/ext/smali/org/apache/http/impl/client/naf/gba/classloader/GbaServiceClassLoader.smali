.class public interface abstract Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoader;
.super Ljava/lang/Object;
.source "GbaServiceClassLoader.java"


# virtual methods
.method public abstract getPlatformClassLoader()Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation
.end method

.method public abstract loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/classloader/GbaServiceClassLoaderException;
        }
    .end annotation
.end method
