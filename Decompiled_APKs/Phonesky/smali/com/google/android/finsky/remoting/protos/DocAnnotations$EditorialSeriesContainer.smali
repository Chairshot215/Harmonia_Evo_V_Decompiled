.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EditorialSeriesContainer"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private episodeSubtitle_:Ljava/lang/String;

.field private episodeTitle_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasEpisodeSubtitle:Z

.field private hasEpisodeTitle:Z

.field private hasSeriesSubtitle:Z

.field private hasSeriesTitle:Z

.field private seriesSubtitle_:Ljava/lang/String;

.field private seriesTitle_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2146
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    .line 2168
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    .line 2185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    .line 2202
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    .line 2219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    .line 2267
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    .line 2146
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2270
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    if-gez v0, :cond_0

    .line 2272
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSerializedSize()I

    .line 2274
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2220
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2203
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2279
    const/4 v0, 0x0

    .line 2280
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2281
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2284
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2285
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2288
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2289
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2292
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2293
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2296
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2297
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2300
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->cachedSize:I

    .line 2301
    return v0
.end method

.method public getSeriesSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getSeriesTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2152
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasColorThemeArgb()Z
    .locals 1

    .prologue
    .line 2221
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasEpisodeSubtitle()Z
    .locals 1

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    return v0
.end method

.method public hasEpisodeTitle()Z
    .locals 1

    .prologue
    .line 2187
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle:Z

    return v0
.end method

.method public hasSeriesSubtitle()Z
    .locals 1

    .prologue
    .line 2170
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    return v0
.end method

.method public hasSeriesTitle()Z
    .locals 1

    .prologue
    .line 2153
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2309
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2310
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2314
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2315
    :sswitch_0
    return-object p0

    .line 2320
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2324
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2328
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2332
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2336
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    goto :goto_0

    .line 2310
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 2143
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb:Z

    .line 2224
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->colorThemeArgb_:Ljava/lang/String;

    .line 2225
    return-object p0
.end method

.method public setEpisodeSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle:Z

    .line 2207
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeSubtitle_:Ljava/lang/String;

    .line 2208
    return-object p0
.end method

.method public setEpisodeTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle:Z

    .line 2190
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->episodeTitle_:Ljava/lang/String;

    .line 2191
    return-object p0
.end method

.method public setSeriesSubtitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle:Z

    .line 2173
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesSubtitle_:Ljava/lang/String;

    .line 2174
    return-object p0
.end method

.method public setSeriesTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;
    .locals 1
    .parameter "value"

    .prologue
    .line 2155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle:Z

    .line 2156
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->seriesTitle_:Ljava/lang/String;

    .line 2157
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2250
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2251
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2253
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasSeriesSubtitle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2254
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getSeriesSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2256
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2257
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2259
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasEpisodeSubtitle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2260
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getEpisodeSubtitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2262
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2263
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$EditorialSeriesContainer;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2265
    :cond_4
    return-void
.end method
