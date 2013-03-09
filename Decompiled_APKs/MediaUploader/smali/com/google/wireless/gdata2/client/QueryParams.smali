.class public abstract Lcom/google/wireless/gdata2/client/QueryParams;
.super Ljava/lang/Object;
.source "QueryParams.java"


# static fields
.field public static final ALT_JSON:Ljava/lang/String; = "json"

.field public static final ALT_PARAM:Ljava/lang/String; = "alt"

.field public static final ALT_RSS:Ljava/lang/String; = "rss"

.field public static final AUTHOR_PARAM:Ljava/lang/String; = "author"

.field public static final FIELDS_PARAM:Ljava/lang/String; = "fields"

.field public static final MAX_RESULTS_PARAM:Ljava/lang/String; = "max-results"

.field public static final ORDERBY_LASTMODIFIED:Ljava/lang/String; = "lastmodified"

.field public static final ORDERBY_PARAM:Ljava/lang/String; = "orderby"

.field public static final PUBLISHED_MAX_PARAM:Ljava/lang/String; = "published-max"

.field public static final PUBLISHED_MIN_PARAM:Ljava/lang/String; = "published-min"

.field public static final QUERY_PARAM:Ljava/lang/String; = "q"

.field public static final REQUIREALLDELETED_PARAM:Ljava/lang/String; = "requirealldeleted"

.field public static final SHOWDELETED_PARAM:Ljava/lang/String; = "showdeleted"

.field public static final SORTORDER_ASCENDING:Ljava/lang/String; = "ascending"

.field public static final SORTORDER_DESCENDING:Ljava/lang/String; = "descending"

.field public static final SORTORDER_PARAM:Ljava/lang/String; = "sortorder"

.field public static final START_INDEX_PARAM:Ljava/lang/String; = "start-index"

.field public static final START_MAX_PARAM:Ljava/lang/String; = "start-max"

.field public static final START_MIN_PARAM:Ljava/lang/String; = "start-min"

.field public static final UPDATED_MAX_PARAM:Ljava/lang/String; = "updated-max"

.field public static final UPDATED_MIN_PARAM:Ljava/lang/String; = "updated-min"


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
.method public abstract clear()V
.end method

.method public abstract generateQueryUrl(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getAlt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    const-string v0, "alt"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const-string v0, "author"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEntryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/wireless/gdata2/client/QueryParams;->entryId:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    const-string v0, "fields"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

.method public getPublishedMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    const-string v0, "published-max"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublishedMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "published-min"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    const-string v0, "q"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartIndex()I
    .locals 1

    .prologue
    .line 253
    const-string v0, "start-index"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUpdatedMax()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    const-string v0, "updated-max"

    invoke-virtual {p0, v0}, Lcom/google/wireless/gdata2/client/QueryParams;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

.method public setAlt(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 176
    const-string v0, "author"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public setEntryId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/google/wireless/gdata2/client/QueryParams;->entryId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setFields(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 302
    const-string v0, "fields"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public setMaxResults(I)V
    .locals 2
    .parameter

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

.method public setPublishedMax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 218
    const-string v0, "published-max"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public setPublishedMin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 232
    const-string v0, "published-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 246
    const-string v0, "q"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public setStartIndex(I)V
    .locals 2
    .parameter

    .prologue
    .line 260
    const-string v0, "start-index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public setUpdatedMax(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 274
    const-string v0, "updated-max"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public setUpdatedMin(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    const-string v0, "updated-min"

    invoke-virtual {p0, v0, p1}, Lcom/google/wireless/gdata2/client/QueryParams;->setParamValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    return-void
.end method
