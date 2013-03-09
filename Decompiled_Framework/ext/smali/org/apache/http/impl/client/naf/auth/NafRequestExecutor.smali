.class public interface abstract Lorg/apache/http/impl/client/naf/auth/NafRequestExecutor;
.super Ljava/lang/Object;
.source "NafRequestExecutor.java"


# virtual methods
.method public abstract enableRedirectionHandlingForGba()V
.end method

.method public abstract executeRequestSending(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation
.end method
