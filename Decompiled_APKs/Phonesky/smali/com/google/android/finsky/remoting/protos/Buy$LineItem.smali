.class public final Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineItem"
.end annotation


# instance fields
.field private amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasAmount:Z

.field private hasDescription:Z

.field private hasName:Z

.field private hasOffer:Z

.field private name_:Ljava/lang/String;

.field private offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2082
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2087
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 2104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 2121
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2141
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    .line 2194
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 2082
    return-void
.end method


# virtual methods
.method public getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;
    .locals 1

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2197
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    if-gez v0, :cond_0

    .line 2199
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getSerializedSize()I

    .line 2201
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2088
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .locals 1

    .prologue
    .line 2123
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2206
    const/4 v0, 0x0

    .line 2207
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2208
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2211
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2212
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2215
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2216
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2219
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2220
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2223
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->cachedSize:I

    .line 2224
    return v0
.end method

.method public hasAmount()Z
    .locals 1

    .prologue
    .line 2142
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount:Z

    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 2106
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 2089
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    return v0
.end method

.method public hasOffer()Z
    .locals 1

    .prologue
    .line 2122
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2232
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2233
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2237
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2238
    :sswitch_0
    return-object p0

    .line 2243
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2247
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2251
    :sswitch_3
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Common$Offer;-><init>()V

    .line 2252
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2253
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2257
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/Buy$Money;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/Buy$Money;-><init>()V

    .line 2258
    .local v1, value:Lcom/google/android/finsky/remoting/protos/Buy$Money;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 2259
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    goto :goto_0

    .line 2233
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
    .line 2079
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;

    move-result-object v0

    return-object v0
.end method

.method public setAmount(Lcom/google/android/finsky/remoting/protos/Buy$Money;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 2145
    if-nez p1, :cond_0

    .line 2146
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2148
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount:Z

    .line 2149
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->amount_:Lcom/google/android/finsky/remoting/protos/Buy$Money;

    .line 2150
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 2108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription:Z

    .line 2109
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->description_:Ljava/lang/String;

    .line 2110
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 2091
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName:Z

    .line 2092
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->name_:Ljava/lang/String;

    .line 2093
    return-object p0
.end method

.method public setOffer(Lcom/google/android/finsky/remoting/protos/Common$Offer;)Lcom/google/android/finsky/remoting/protos/Buy$LineItem;
    .locals 1
    .parameter "value"

    .prologue
    .line 2125
    if-nez p1, :cond_0

    .line 2126
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2128
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer:Z

    .line 2129
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->offer_:Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 2130
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
    .line 2180
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2183
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2184
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2186
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasOffer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2187
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getOffer()Lcom/google/android/finsky/remoting/protos/Common$Offer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2189
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->hasAmount()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2190
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$LineItem;->getAmount()Lcom/google/android/finsky/remoting/protos/Buy$Money;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 2192
    :cond_3
    return-void
.end method
