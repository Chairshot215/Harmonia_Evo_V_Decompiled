.class public final Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArtistExternalLinks"
.end annotation


# instance fields
.field private cachedSize:I

.field private googlePlusProfileUrl_:Ljava/lang/String;

.field private hasGooglePlusProfileUrl:Z

.field private hasYoutubeChannelUrl:Z

.field private websiteUrl_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private youtubeChannelUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2220
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    .line 2258
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    .line 2275
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    .line 2315
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    .line 2220
    return-void
.end method


# virtual methods
.method public addWebsiteUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .locals 1
    .parameter "value"

    .prologue
    .line 2241
    if-nez p1, :cond_0

    .line 2242
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2244
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    .line 2247
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2248
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2318
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    if-gez v0, :cond_0

    .line 2320
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getSerializedSize()I

    .line 2322
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    return v0
.end method

.method public getGooglePlusProfileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2327
    const/4 v3, 0x0

    .line 2329
    .local v3, size:I
    const/4 v0, 0x0

    .line 2330
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2331
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2334
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 2335
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2337
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2338
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2341
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2342
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2345
    :cond_2
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->cachedSize:I

    .line 2346
    return v3
.end method

.method public getWebsiteUrlCount()I
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getWebsiteUrlList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->websiteUrl_:Ljava/util/List;

    return-object v0
.end method

.method public getYoutubeChannelUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public hasGooglePlusProfileUrl()Z
    .locals 1

    .prologue
    .line 2260
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl:Z

    return v0
.end method

.method public hasYoutubeChannelUrl()Z
    .locals 1

    .prologue
    .line 2277
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2354
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2355
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2359
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2360
    :sswitch_0
    return-object p0

    .line 2365
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->addWebsiteUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2369
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->setGooglePlusProfileUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2373
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->setYoutubeChannelUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    goto :goto_0

    .line 2355
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2217
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v0

    return-object v0
.end method

.method public setGooglePlusProfileUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .locals 1
    .parameter "value"

    .prologue
    .line 2262
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl:Z

    .line 2263
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->googlePlusProfileUrl_:Ljava/lang/String;

    .line 2264
    return-object p0
.end method

.method public setYoutubeChannelUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .locals 1
    .parameter "value"

    .prologue
    .line 2279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl:Z

    .line 2280
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->youtubeChannelUrl_:Ljava/lang/String;

    .line 2281
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2304
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2305
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2307
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2308
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2310
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2311
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2313
    :cond_2
    return-void
.end method
