.class public abstract Lcom/google/wireless/gdata2/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# instance fields
.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method


# virtual methods
.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/QueryParams;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()I
    .locals 1

    .prologue
    .line 197
    const-string v0, "max-results"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public abstract getParamValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getUpdatedMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "updated-min"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaxResults(I)V
    .locals 2
    .parameter "maxResults"

    .prologue
    .line 204
    const-string v0, "max-results"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public abstract setParamValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setStartIndex(I)V
    .locals 2
    .parameter "startIndex"

    .prologue
    .line 260
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedMin"

    .prologue
    .line 288
    const-string v0, "updated-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
