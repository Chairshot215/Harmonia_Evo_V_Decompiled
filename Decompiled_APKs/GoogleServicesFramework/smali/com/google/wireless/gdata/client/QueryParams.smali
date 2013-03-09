.class public abstract Lcom/google/wireless/gdata/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# instance fields
.field private entryId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/wireless/gdata/client/QueryParams;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxResults(Ljava/lang/String;)V
    .locals 1
    .parameter "maxResults"

    .prologue
    .line 154
    const-string v0, "max-results"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public abstract setParamValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setStartIndex(Ljava/lang/String;)V
    .locals 1
    .parameter "startIndex"

    .prologue
    .line 210
    const-string v0, "start-index"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedMin"

    .prologue
    .line 238
    const-string v0, "updated-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
