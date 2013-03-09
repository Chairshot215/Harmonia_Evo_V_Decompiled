.class public final Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyInstruments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyInstruments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RedeemGiftCardResponse"
.end annotation


# instance fields
.field private addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

.field private balanceHtml_:Ljava/lang/String;

.field private cachedSize:I

.field private checkoutTokenRequired_:Z

.field private hasAddressChallenge:Z

.field private hasBalanceHtml:Z

.field private hasCheckoutTokenRequired:Z

.field private hasResult:Z

.field private hasUserMessageHtml:Z

.field private result_:I

.field private userMessageHtml_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1003
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1017
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->result_:I

    .line 1034
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->userMessageHtml_:Ljava/lang/String;

    .line 1051
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->balanceHtml_:Ljava/lang/String;

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 1088
    iput-boolean v1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->checkoutTokenRequired_:Z

    .line 1140
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->cachedSize:I

    .line 1003
    return-void
.end method


# virtual methods
.method public getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    return-object v0
.end method

.method public getBalanceHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->balanceHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1143
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getSerializedSize()I

    .line 1147
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->cachedSize:I

    return v0
.end method

.method public getCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 1089
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->checkoutTokenRequired_:Z

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 1019
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1152
    const/4 v0, 0x0

    .line 1153
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1154
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getResult()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1157
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasUserMessageHtml()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1158
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1161
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasBalanceHtml()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1162
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getBalanceHtml()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1165
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasAddressChallenge()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1166
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1169
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasCheckoutTokenRequired()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1170
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getCheckoutTokenRequired()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1173
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->cachedSize:I

    .line 1174
    return v0
.end method

.method public getUserMessageHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->userMessageHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAddressChallenge()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasAddressChallenge:Z

    return v0
.end method

.method public hasBalanceHtml()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasBalanceHtml:Z

    return v0
.end method

.method public hasCheckoutTokenRequired()Z
    .locals 1

    .prologue
    .line 1090
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasCheckoutTokenRequired:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasResult:Z

    return v0
.end method

.method public hasUserMessageHtml()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasUserMessageHtml:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1182
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1183
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1187
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1188
    :sswitch_0
    return-object p0

    .line 1193
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    goto :goto_0

    .line 1197
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    goto :goto_0

    .line 1201
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->setBalanceHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    goto :goto_0

    .line 1205
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;-><init>()V

    .line 1206
    .local v1, value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1207
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    goto :goto_0

    .line 1211
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    goto :goto_0

    .line 1183
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
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
    .line 1000
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAddressChallenge(Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1072
    if-nez p1, :cond_0

    .line 1073
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1075
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasAddressChallenge:Z

    .line 1076
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->addressChallenge_:Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    .line 1077
    return-object p0
.end method

.method public setBalanceHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1055
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasBalanceHtml:Z

    .line 1056
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->balanceHtml_:Ljava/lang/String;

    .line 1057
    return-object p0
.end method

.method public setCheckoutTokenRequired(Z)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1092
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasCheckoutTokenRequired:Z

    .line 1093
    iput-boolean p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->checkoutTokenRequired_:Z

    .line 1094
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasResult:Z

    .line 1022
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->result_:I

    .line 1023
    return-object p0
.end method

.method public setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasUserMessageHtml:Z

    .line 1039
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->userMessageHtml_:Ljava/lang/String;

    .line 1040
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
    .line 1123
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getResult()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1126
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasUserMessageHtml()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1127
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1129
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasBalanceHtml()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getBalanceHtml()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1132
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasAddressChallenge()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getAddressChallenge()Lcom/google/android/finsky/remoting/protos/ChallengeProtos$AddressChallenge;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1135
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->hasCheckoutTokenRequired()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1136
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyInstruments$RedeemGiftCardResponse;->getCheckoutTokenRequired()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 1138
    :cond_4
    return-void
.end method
