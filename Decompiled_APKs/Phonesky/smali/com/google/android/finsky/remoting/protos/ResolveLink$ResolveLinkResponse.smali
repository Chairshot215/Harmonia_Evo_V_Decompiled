.class public final Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "ResolveLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/ResolveLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResolveLinkResponse"
.end annotation


# instance fields
.field private browseUrl_:Ljava/lang/String;

.field private cachedSize:I

.field private detailsUrl_:Ljava/lang/String;

.field private directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

.field private hasBrowseUrl:Z

.field private hasDetailsUrl:Z

.field private hasDirectPurchase:Z

.field private hasHomeUrl:Z

.field private hasRedeemGiftCard:Z

.field private hasSearchUrl:Z

.field private homeUrl_:Ljava/lang/String;

.field private redeemGiftCard_:Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

.field private searchUrl_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->homeUrl_:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->redeemGiftCard_:Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    .line 158
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public getBrowseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSerializedSize()I

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    return v0
.end method

.method public getDetailsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    return-object v0
.end method

.method public getHomeUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->homeUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getRedeemGiftCard()Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->redeemGiftCard_:Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    return-object v0
.end method

.method public getSearchUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 183
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 184
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 192
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getRedeemGiftCard()Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_5
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->cachedSize:I

    .line 196
    return v0
.end method

.method public hasBrowseUrl()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl:Z

    return v0
.end method

.method public hasDetailsUrl()Z
    .locals 1

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl:Z

    return v0
.end method

.method public hasDirectPurchase()Z
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase:Z

    return v0
.end method

.method public hasHomeUrl()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl:Z

    return v0
.end method

.method public hasRedeemGiftCard()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard:Z

    return v0
.end method

.method public hasSearchUrl()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 205
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 209
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    :sswitch_0
    return-object p0

    .line 215
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 219
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 223
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 227
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;-><init>()V

    .line 228
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 229
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setDirectPurchase(Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 233
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 237
    :sswitch_6
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;-><init>()V

    .line 238
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 239
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->setRedeemGiftCard(Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBrowseUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->browseUrl_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setDetailsUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->detailsUrl_:Ljava/lang/String;

    .line 21
    return-object p0
.end method

.method public setDirectPurchase(Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase:Z

    .line 74
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->directPurchase_:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    .line 75
    return-object p0
.end method

.method public setHomeUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl:Z

    .line 91
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->homeUrl_:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public setRedeemGiftCard(Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 107
    if-nez p1, :cond_0

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard:Z

    .line 111
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->redeemGiftCard_:Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    .line 112
    return-object p0
.end method

.method public setSearchUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl:Z

    .line 54
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->searchUrl_:Ljava/lang/String;

    .line 55
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
    .line 138
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 145
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 147
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 150
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 154
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getRedeemGiftCard()Lcom/google/android/finsky/remoting/protos/ResolveLink$RedeemGiftCard;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 156
    :cond_5
    return-void
.end method
