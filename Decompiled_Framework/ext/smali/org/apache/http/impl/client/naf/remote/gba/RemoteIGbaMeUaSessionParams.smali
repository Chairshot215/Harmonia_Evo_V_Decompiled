.class public interface abstract Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaMeUaSessionParams;
.super Ljava/lang/Object;
.source "RemoteIGbaMeUaSessionParams.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/RemoteClass;


# virtual methods
.method public abstract getBTid()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getKeyLifeTime()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getKsNaf()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
