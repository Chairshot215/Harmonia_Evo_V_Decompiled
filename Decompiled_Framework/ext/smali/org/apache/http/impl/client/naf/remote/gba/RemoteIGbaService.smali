.class public interface abstract Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
.super Ljava/lang/Object;
.source "RemoteIGbaService.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/gba/RemoteGbaClass;


# virtual methods
.method public abstract checkIfServiceIsOnline(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGbaAuthManager()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaAuthManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
