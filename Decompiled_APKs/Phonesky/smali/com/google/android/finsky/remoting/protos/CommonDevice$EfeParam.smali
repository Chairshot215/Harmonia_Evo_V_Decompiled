.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EfeParam"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasKey:Z

.field private hasValue:Z

.field private key_:I

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 544
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    .line 561
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    .line 599
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    .line 532
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 602
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    if-gez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getSerializedSize()I

    .line 606
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    return v0
.end method

.method public getKey()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 611
    const/4 v0, 0x0

    .line 612
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getKey()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 617
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->cachedSize:I

    .line 621
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 630
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 634
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    :sswitch_0
    return-object p0

    .line 640
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->setKey(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    goto :goto_0

    .line 644
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    goto :goto_0

    .line 630
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 529
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    move-result-object v0

    return-object v0
.end method

.method public setKey(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .locals 1
    .parameter "value"

    .prologue
    .line 548
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey:Z

    .line 549
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->key_:I

    .line 550
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    .locals 1
    .parameter "value"

    .prologue
    .line 565
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue:Z

    .line 566
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->value_:Ljava/lang/String;

    .line 567
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
    .line 591
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getKey()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 597
    :cond_1
    return-void
.end method
