.class public interface abstract Lorg/apache/http/impl/client/naf/remote/gba/RemoteIException;
.super Ljava/lang/Object;
.source "RemoteIException.java"

# interfaces
.implements Lorg/apache/http/impl/client/naf/remote/RemoteClass;


# virtual methods
.method public abstract getErrorMsg()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method

.method public abstract getErrorStackTrace()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/remote/RemoteException;
        }
    .end annotation
.end method
