.class public interface abstract Lorg/apache/http/impl/client/naf/gba/GbaAuthProvider;
.super Ljava/lang/Object;
.source "GbaAuthProvider.java"


# static fields
.field public static final DEFAULT_RELEASE_TIMEOUT_MSEC:I = 0x3a98


# virtual methods
.method public abstract getSupportedGbaType()Lorg/apache/http/impl/client/naf/gba/GbaType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;
        }
    .end annotation
.end method

.method public abstract promiseToReleaseInNearTime()V
.end method

.method public abstract provideAuth(Lorg/apache/http/impl/client/naf/gba/GbaType;Ljava/lang/String;Lorg/apache/http/impl/client/naf/protocol/ProtocolId;)Lorg/apache/http/impl/client/naf/gba/GbaAuthData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/gba/connector/GbaServiceConnectionException;,
            Lorg/apache/http/impl/client/naf/gba/GbaBootstrappingNoKeysException;
        }
    .end annotation
.end method

.method public abstract releaseForced()V
.end method
