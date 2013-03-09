.class public interface abstract Lorg/apache/http/impl/client/naf/auth/NafHttpAuthStrategy;
.super Ljava/lang/Object;
.source "NafHttpAuthStrategy.java"


# virtual methods
.method public abstract isItPossibleToSupportGba()Z
.end method

.method public abstract performAuthExecution(Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/impl/client/naf/auth/NafHttpAuthException;,
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation
.end method
