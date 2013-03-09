.class public interface abstract Lorg/apache/http/impl/client/naf/redirect/NafRedirectHandler;
.super Ljava/lang/Object;
.source "NafRedirectHandler.java"


# static fields
.field public static final HTTPS_DEFAULT_PORT:I = 0x1bb

.field public static final HTTPS_SCHEMA_NAME:Ljava/lang/String; = "https"

.field public static final HTTP_DEFAULT_PORT:I = 0x50

.field public static final HTTP_SCHEMA_NAME:Ljava/lang/String; = "http"

.field public static final LOCATION_HEADER_NAME:Ljava/lang/String; = "location"


# virtual methods
.method public abstract executeWithRedirectionHandling(Lorg/apache/http/impl/client/naf/auth/NafRequestWrapper;)Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation
.end method

.method public abstract getMaximumRedirectionsAmount()I
.end method
