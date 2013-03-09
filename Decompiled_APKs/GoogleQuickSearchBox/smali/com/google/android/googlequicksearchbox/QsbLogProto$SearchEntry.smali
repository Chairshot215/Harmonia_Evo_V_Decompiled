.class public final Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "QsbLogProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/QsbLogProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SearchEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasMethod:Z

.field private hasNumChars:Z

.field private method_:I

.field private numChars_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 451
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 461
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->numChars_:I

    .line 478
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->method_:I

    .line 515
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->cachedSize:I

    .line 451
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->getSerializedSize()I

    .line 521
    :cond_0
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->cachedSize:I

    return v0
.end method

.method public getMethod()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->method_:I

    return v0
.end method

.method public getNumChars()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->numChars_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasNumChars()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->getNumChars()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 530
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasMethod()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 531
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->getMethod()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 534
    :cond_1
    iput v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->cachedSize:I

    .line 535
    return v0
.end method

.method public hasMethod()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasMethod:Z

    return v0
.end method

.method public hasNumChars()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasNumChars:Z

    return v0
.end method

.method public setMethod(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasMethod:Z

    .line 483
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->method_:I

    .line 484
    return-object p0
.end method

.method public setNumChars(I)Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 465
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasNumChars:Z

    .line 466
    iput p1, p0, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->numChars_:I

    .line 467
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
    .line 507
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasNumChars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->getNumChars()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 510
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->hasMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/googlequicksearchbox/QsbLogProto$SearchEntry;->getMethod()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 513
    :cond_1
    return-void
.end method
