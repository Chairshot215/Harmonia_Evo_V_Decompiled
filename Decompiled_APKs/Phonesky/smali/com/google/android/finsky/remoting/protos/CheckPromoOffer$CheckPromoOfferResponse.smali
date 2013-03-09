.class public final Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "CheckPromoOffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/CheckPromoOffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CheckPromoOfferResponse"
.end annotation


# instance fields
.field private availableOffer_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private hasCheckoutTokenRequired:Z

.field private hasRedeemedOffer:Z

.field private redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->checkoutTokenRequired_:Z

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addAvailableOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-object p0
.end method

.method public getAvailableOffer(I)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    return-object v0
.end method

.method public getAvailableOfferCount()I
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAvailableOfferList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->availableOffer_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getSerializedSize()I

    .line 121
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 126
    const/4 v2, 0x0

    .line 127
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOfferList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    .line 128
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 131
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasCheckoutTokenRequired()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getCheckoutTokenRequired()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 139
    :cond_2
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->cachedSize:I

    .line 140
    return v2
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasRedeemedOffer()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 149
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;-><init>()V

    .line 160
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 161
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->addAvailableOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    goto :goto_0

    .line 165
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;-><init>()V

    .line 166
    .local v1, value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 167
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->setRedeemedOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    goto :goto_0

    .line 171
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    goto :goto_0

    .line 149
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;

    move-result-object v0

    return-object v0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasCheckoutTokenRequired:Z

    .line 73
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->checkoutTokenRequired_:Z

    .line 74
    return-object p0
.end method

.method public setRedeemedOffer(Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;)Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer:Z

    .line 56
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->redeemedOffer_:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    .line 57
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
    .line 103
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getAvailableOfferList()Ljava/util/List;

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

    check-cast v0, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;

    .line 104
    .local v0, element:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 106
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$AvailablePromoOffer;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasRedeemedOffer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getRedeemedOffer()Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$RedeemedPromoOffer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->hasCheckoutTokenRequired()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/CheckPromoOffer$CheckPromoOfferResponse;->getCheckoutTokenRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 112
    :cond_2
    return-void
.end method
