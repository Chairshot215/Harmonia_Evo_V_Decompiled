.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemGiftCardRequest"
.end annotation


# instance fields
.field private acceptedLegalDocumentId_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

.field private cachedSize:I

.field private checkoutToken_:Ljava/lang/String;

.field private giftCardPin_:Ljava/lang/String;

.field private hasAddress:Z

.field private hasCheckoutToken:Z

.field private hasGiftCardPin:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 793
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 798
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->giftCardPin_:Ljava/lang/String;

    .line 815
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 834
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->acceptedLegalDocumentId_:Ljava/util/List;

    .line 868
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->checkoutToken_:Ljava/lang/String;

    .line 912
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->cachedSize:I

    .line 793
    return-void
.end method


# virtual methods
.method public addAcceptedLegalDocumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 851
    if-nez p1, :cond_0

    .line 852
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->acceptedLegalDocumentId_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 855
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->acceptedLegalDocumentId_:Ljava/util/List;

    .line 857
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->acceptedLegalDocumentId_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    return-object p0
.end method

.method public getAcceptedLegalDocumentIdList()Ljava/util/List;
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
    .line 837
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->acceptedLegalDocumentId_:Ljava/util/List;

    return-object v0
.end method

.method public getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 917
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getSerializedSize()I

    .line 919
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->cachedSize:I

    return v0
.end method

.method public getCheckoutToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->checkoutToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getGiftCardPin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->giftCardPin_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 924
    const/4 v3, 0x0

    .line 925
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasGiftCardPin()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 926
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getGiftCardPin()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasAddress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 930
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 934
    :cond_1
    const/4 v0, 0x0

    .line 935
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getAcceptedLegalDocumentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 936
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 939
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 940
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getAcceptedLegalDocumentIdList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 942
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasCheckoutToken()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 943
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getCheckoutToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 946
    :cond_3
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->cachedSize:I

    .line 947
    return v3
.end method

.method public hasAddress()Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasAddress:Z

    return v0
.end method

.method public hasCheckoutToken()Z
    .locals 1

    .prologue
    .line 870
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasCheckoutToken:Z

    return v0
.end method

.method public hasGiftCardPin()Z
    .locals 1

    .prologue
    .line 800
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasGiftCardPin:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 955
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 956
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 960
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 961
    :sswitch_0
    return-object p0

    .line 966
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setGiftCardPin(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    goto :goto_0

    .line 970
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;-><init>()V

    .line 971
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 972
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    goto :goto_0

    .line 976
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->addAcceptedLegalDocumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    goto :goto_0

    .line 980
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    goto :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 790
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAddress(Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 819
    if-nez p1, :cond_0

    .line 820
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 822
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasAddress:Z

    .line 823
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->address_:Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    .line 824
    return-object p0
.end method

.method public setCheckoutToken(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 872
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasCheckoutToken:Z

    .line 873
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->checkoutToken_:Ljava/lang/String;

    .line 874
    return-object p0
.end method

.method public setGiftCardPin(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;
    .locals 1
    .parameter "value"

    .prologue
    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasGiftCardPin:Z

    .line 803
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->giftCardPin_:Ljava/lang/String;

    .line 804
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
    .line 898
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasGiftCardPin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getGiftCardPin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 902
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getAddress()Lcom/google/android/finsky/remoting/protos/BillingAddress$Address;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 904
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getAcceptedLegalDocumentIdList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 905
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 907
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->hasCheckoutToken()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 908
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardRequest;->getCheckoutToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 910
    :cond_3
    return-void
.end method
