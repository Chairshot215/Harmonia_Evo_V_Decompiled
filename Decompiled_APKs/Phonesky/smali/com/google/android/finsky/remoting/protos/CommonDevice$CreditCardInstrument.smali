.class public final Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CommonDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CommonDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CreditCardInstrument"
.end annotation


# instance fields
.field private cachedSize:I

.field private escrowEfeParam_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;",
            ">;"
        }
    .end annotation
.end field

.field private escrowHandle_:Ljava/lang/String;

.field private expirationMonth_:I

.field private expirationYear_:I

.field private hasEscrowHandle:Z

.field private hasExpirationMonth:Z

.field private hasExpirationYear:Z

.field private hasLastDigits:Z

.field private hasType:Z

.field private lastDigits_:Ljava/lang/String;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 672
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    .line 689
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    .line 706
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    .line 723
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    .line 740
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    .line 756
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowEfeParam_:Ljava/util/List;

    .line 828
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    .line 667
    return-void
.end method


# virtual methods
.method public addEscrowEfeParam(Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 776
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowEfeParam_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowEfeParam_:Ljava/util/List;

    .line 779
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowEfeParam_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 831
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    if-gez v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getSerializedSize()I

    .line 835
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    return v0
.end method

.method public getEscrowEfeParamList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 759
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowEfeParam_:Ljava/util/List;

    return-object v0
.end method

.method public getEscrowHandle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationMonth()I
    .locals 1

    .prologue
    .line 724
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    return v0
.end method

.method public getExpirationYear()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    return v0
.end method

.method public getLastDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 840
    const/4 v2, 0x0

    .line 841
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 842
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getType()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 846
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowHandle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 849
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 850
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getLastDigits()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 854
    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationMonth()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 857
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 858
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationYear()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 861
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowEfeParamList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    .line 862
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    const/4 v3, 0x6

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 865
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    :cond_5
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->cachedSize:I

    .line 866
    return v2
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    return v0
.end method

.method public hasEscrowHandle()Z
    .locals 1

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle:Z

    return v0
.end method

.method public hasExpirationMonth()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth:Z

    return v0
.end method

.method public hasExpirationYear()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear:Z

    return v0
.end method

.method public hasLastDigits()Z
    .locals 1

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits:Z

    return v0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 875
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 879
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    :sswitch_0
    return-object p0

    .line 885
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 889
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setEscrowHandle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 893
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setLastDigits(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 897
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationMonth(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 901
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->setExpirationYear(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 905
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;-><init>()V

    .line 906
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 907
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->addEscrowEfeParam(Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    goto :goto_0

    .line 875
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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
    .line 664
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;

    move-result-object v0

    return-object v0
.end method

.method public setEscrowHandle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 693
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle:Z

    .line 694
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->escrowHandle_:Ljava/lang/String;

    .line 695
    return-object p0
.end method

.method public setExpirationMonth(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth:Z

    .line 728
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationMonth_:I

    .line 729
    return-object p0
.end method

.method public setExpirationYear(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear:Z

    .line 745
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->expirationYear_:I

    .line 746
    return-object p0
.end method

.method public setLastDigits(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 710
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits:Z

    .line 711
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->lastDigits_:Ljava/lang/String;

    .line 712
    return-object p0
.end method

.method public setType(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;
    .locals 1
    .parameter "value"

    .prologue
    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType:Z

    .line 677
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->type_:I

    .line 678
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
    .line 808
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 811
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasEscrowHandle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 812
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowHandle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 814
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasLastDigits()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 815
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getLastDigits()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 817
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationMonth()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 818
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationMonth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 820
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->hasExpirationYear()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 821
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getExpirationYear()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 823
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CommonDevice$CreditCardInstrument;->getEscrowEfeParamList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;

    .line 824
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    const/4 v2, 0x6

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 826
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$EfeParam;
    :cond_5
    return-void
.end method
