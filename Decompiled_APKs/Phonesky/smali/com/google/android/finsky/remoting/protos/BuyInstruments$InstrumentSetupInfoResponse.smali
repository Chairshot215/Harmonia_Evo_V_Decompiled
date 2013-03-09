.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstrumentSetupInfoResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private hasCheckoutTokenRequired:Z

.field private setupInfo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 650
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    .line 684
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->checkoutTokenRequired_:Z

    .line 723
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->cachedSize:I

    .line 646
    return-void
.end method


# virtual methods
.method public addSetupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 667
    if-nez p1, :cond_0

    .line 668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 726
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getSerializedSize()I

    .line 730
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 735
    const/4 v2, 0x0

    .line 736
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getSetupInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    .line 737
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 740
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->hasCheckoutTokenRequired()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 741
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getCheckoutTokenRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 744
    :cond_1
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->cachedSize:I

    .line 745
    return v2
.end method

.method public getSetupInfo(I)Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 657
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    return-object v0
.end method

.method public getSetupInfoCount()I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSetupInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 653
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setupInfo_:Ljava/util/List;

    return-object v0
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 754
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 758
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 759
    :sswitch_0
    return-object p0

    .line 764
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;-><init>()V

    .line 765
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 766
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->addSetupInfo(Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    goto :goto_0

    .line 770
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    goto :goto_0

    .line 754
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
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
    .line 643
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->hasCheckoutTokenRequired:Z

    .line 689
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->checkoutTokenRequired_:Z

    .line 690
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
    .line 715
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getSetupInfoList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;

    .line 716
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 718
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CommonDevice$InstrumentSetupInfo;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 719
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$InstrumentSetupInfoResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 721
    :cond_1
    return-void
.end method
