.class public final Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DocAnnotations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DocAnnotations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DealOfTheDay"
.end annotation


# instance fields
.field private cachedSize:I

.field private colorThemeArgb_:Ljava/lang/String;

.field private featuredHeader_:Ljava/lang/String;

.field private hasColorThemeArgb:Z

.field private hasFeaturedHeader:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2426
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2431
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    .line 2448
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    .line 2484
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    .line 2426
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2487
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    if-gez v0, :cond_0

    .line 2489
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getSerializedSize()I

    .line 2491
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    return v0
.end method

.method public getColorThemeArgb()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    return-object v0
.end method

.method public getFeaturedHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2496
    const/4 v0, 0x0

    .line 2497
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2498
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getFeaturedHeader()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2501
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2502
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2505
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->cachedSize:I

    .line 2506
    return v0
.end method

.method public hasColorThemeArgb()Z
    .locals 1

    .prologue
    .line 2450
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb:Z

    return v0
.end method

.method public hasFeaturedHeader()Z
    .locals 1

    .prologue
    .line 2433
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2514
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2515
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2519
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2520
    :sswitch_0
    return-object p0

    .line 2525
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->setFeaturedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    goto :goto_0

    .line 2529
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    goto :goto_0

    .line 2515
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 2423
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;

    move-result-object v0

    return-object v0
.end method

.method public setColorThemeArgb(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .locals 1
    .parameter "value"

    .prologue
    .line 2452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb:Z

    .line 2453
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->colorThemeArgb_:Ljava/lang/String;

    .line 2454
    return-object p0
.end method

.method public setFeaturedHeader(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;
    .locals 1
    .parameter "value"

    .prologue
    .line 2435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader:Z

    .line 2436
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->featuredHeader_:Ljava/lang/String;

    .line 2437
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
    .line 2476
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasFeaturedHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2477
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getFeaturedHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2479
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->hasColorThemeArgb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2480
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DocAnnotations$DealOfTheDay;->getColorThemeArgb()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2482
    :cond_1
    return-void
.end method
