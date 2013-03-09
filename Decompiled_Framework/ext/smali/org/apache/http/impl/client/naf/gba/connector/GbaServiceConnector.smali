.class public interface abstract Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnector;
.super Ljava/lang/Object;
.source "GbaServiceConnector.java"


# virtual methods
.method public abstract getConnectorState()Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectorState;
.end method

.method public abstract getIGbaServiceInstance()Lorg/apache/http/impl/client/naf/remote/gba/RemoteIGbaService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation
.end method
