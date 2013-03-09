.class public final Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CheckPromoOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CheckPromoOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AvailablePromoOffer"
.end annotation


# instance fields
.field private addCreditCardOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

.field private cachedSize:I

.field private hasAddCreditCardOffer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 636
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->cachedSize:I

    .line 636
    return-void
.end method


# virtual methods
.method public getAddCreditCardOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->cachedSize:I

    if-gez v0, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->getSerializedSize()I

    .line 686
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->getAddCreditCardOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 696
    :cond_0
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->cachedSize:I

    .line 697
    return v0
.end method

.method public hasAddCreditCardOffer()Z
    .locals 1

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 705
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 706
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 710
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 711
    :sswitch_0
    return-object p0

    .line 716
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;-><init>()V

    .line 717
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 718
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->setAddCreditCardOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    goto :goto_0

    .line 706
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
    .line 633
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    move-result-object v0

    return-object v0
.end method

.method public setAddCreditCardOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 1
    .parameter "value"

    .prologue
    .line 645
    if-nez p1, :cond_0

    .line 646
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 648
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer:Z

    .line 649
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->addCreditCardOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    .line 650
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
    .line 674
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->hasAddCreditCardOffer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;->getAddCreditCardOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AddCreditCardPromoOffer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 677
    :cond_0
    return-void
.end method
