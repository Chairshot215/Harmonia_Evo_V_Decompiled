.class public final Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Details.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Details;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BulkDetailsEntry"
.end annotation


# instance fields
.field private cachedSize:I

.field private doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

.field private hasDoc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 517
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 555
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    .line 512
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 558
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    if-gez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getSerializedSize()I

    .line 562
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    return v0
.end method

.method public getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 568
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->cachedSize:I

    .line 573
    return v0
.end method

.method public hasDoc()Z
    .locals 1

    .prologue
    .line 518
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 582
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 586
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 587
    :sswitch_0
    return-object p0

    .line 592
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;-><init>()V

    .line 593
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 594
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->setDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    goto :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 509
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;

    move-result-object v0

    return-object v0
.end method

.method public setDoc(Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;)Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 521
    if-nez p1, :cond_0

    .line 522
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 524
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc:Z

    .line 525
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->doc_:Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    .line 526
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
    .line 550
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->hasDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Details$BulkDetailsEntry;->getDoc()Lcom/google/android/finsky/remoting/protos/DocumentV2$DocV2;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 553
    :cond_0
    return-void
.end method
