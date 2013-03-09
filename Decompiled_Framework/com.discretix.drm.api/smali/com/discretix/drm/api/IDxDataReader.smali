.class public abstract Lcom/discretix/drm/api/IDxDataReader;
.super Ljava/lang/Object;
.source "IDxDataReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract getDataStream()Ljava/io/InputStream;
.end method

.method public getHeaderByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lcom/discretix/drm/api/IDxDataReader;->getHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v2, v0, v1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public abstract getHeaders()[Lorg/apache/http/Header;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpResult()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Lcom/discretix/drm/api/IDxDrmCoreClient;[Lorg/apache/http/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation
.end method
