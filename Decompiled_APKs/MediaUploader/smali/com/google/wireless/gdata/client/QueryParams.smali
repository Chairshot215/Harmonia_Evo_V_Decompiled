.class public abstract Lcom/google/wireless/gdata/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# static fields
.field public static final ALT_JSON:Ljava/lang/String; = "json"

.field public static final ALT_PARAM:Ljava/lang/String; = "alt"

.field public static final ALT_RSS:Ljava/lang/String; = "rss"

.field public static final AUTHOR_PARAM:Ljava/lang/String; = "author"

.field public static final MAX_RESULTS_PARAM:Ljava/lang/String; = "max-results"

.field public static final PUBLISHED_MAX_PARAM:Ljava/lang/String; = "published-max"

.field public static final PUBLISHED_MIN_PARAM:Ljava/lang/String; = "published-min"

.field public static final QUERY_PARAM:Ljava/lang/String; = "q"

.field public static final START_INDEX_PARAM:Ljava/lang/String; = "start-index"

.field public static final UPDATED_MAX_PARAM:Ljava/lang/String; = "updated-max"

.field public static final UPDATED_MIN_PARAM:Ljava/lang/String; = "updated-min"


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
.method public abstract clear()V
.end method

.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/wireless/gdata/client/QueryParams;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxResults()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "max-results"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getParamValue(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getPublishedMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    const-string v0, "published-max"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "published-min"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    const-string v0, "start-index"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, "updated-max"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUpdatedMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "updated-min"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 125
    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/wireless/gdata/client/QueryParams;->entryId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setMaxResults(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    const-string v0, "max-results"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public abstract setParamValue(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setPublishedMax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    const-string v0, "published-max"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public setPublishedMin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    const-string v0, "published-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 196
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public setStartIndex(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    const-string v0, "start-index"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public setUpdatedMax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 224
    const-string v0, "updated-max"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    const-string v0, "updated-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
