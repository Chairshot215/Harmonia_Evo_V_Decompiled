.class public Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;
.super Ljava/lang/Object;
.source "NafResponseWrapper.java"


# instance fields
.field private final httpResponse:Lorg/apache/http/HttpResponse;

.field private final usedCipherSuiteAndroidName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    iput-object p2, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;

    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    if-eqz v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getUsedCipherSuiteAndroidName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v3, 0x0

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    return v1

    :cond_0
    iget-object v2, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NafResponseWrapper [httpResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usedCipherSuiteAndroidName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->usedCipherSuiteAndroidName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/naf/auth/NafResponseWrapper;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    goto :goto_0
.end method
