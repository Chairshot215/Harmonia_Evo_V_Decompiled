.class public Lcom/android/phone/HtcWorldPhoneUtils;
.super Ljava/lang/Object;
.source "HtcWorldPhoneUtils.java"


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "WorldPhoneUtils"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Landroid/os/Handler;)V
    .locals 0
    .parameter "phone"
    .parameter "handler"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 24
    iput-object p2, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method

.method private convertRilSwitchToPhoneType(I)I
    .locals 1
    .parameter "rilRequestPhoneType"

    .prologue
    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, convertedPhoneType:I
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    return v0

    .line 272
    :pswitch_0
    const/4 v0, 0x1

    .line 273
    goto :goto_0

    .line 275
    :pswitch_1
    const/4 v0, 0x2

    .line 276
    goto :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private phoneTypeDecision(I)I
    .locals 1
    .parameter "networkMode"

    .prologue
    .line 289
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 293
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public handleRadioTechChanged(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "async"

    .prologue
    const/4 v8, 0x1

    .line 122
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 123
    const-string v7, "WorldPhoneUtils"

    const-string v8, "Exception Radio Tech Changed:"

    iget-object v9, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/4 v6, -0x1

    .line 138
    .local v6, scanphonetype:I
    const/4 v5, -0x1

    .line 139
    .local v5, scanNetworkMode:I
    :try_start_0
    iget-object v7, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [I

    move-object v0, v7

    check-cast v0, [I

    move-object v4, v0

    .line 140
    .local v4, recommandPhone:[I
    if-eqz v4, :cond_2

    array-length v7, v4

    if-gtz v7, :cond_4

    .line 143
    :cond_2
    iget-object v7, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 144
    .local v1, currentType:I
    const-string v7, "persist.radio.prefer.network"

    const/4 v8, -0x1

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 145
    .local v3, networkMode:I
    const-string v7, "WorldPhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRadioTechChanged, prefer.network="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhoneType(I)I

    move-result v6

    .line 184
    const-string v7, "WorldPhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " No parameter current phone type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eq v1, v6, :cond_0

    .line 237
    .end local v1           #currentType:I
    .end local v3           #networkMode:I
    :goto_1
    if-gez v6, :cond_3

    if-gez v6, :cond_0

    if-ltz v5, :cond_0

    .line 239
    :cond_3
    iget-object v8, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    sget-boolean v7, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    if-eqz v7, :cond_6

    const/16 v7, 0x1f7

    :goto_2
    const/4 v10, 0x0

    invoke-virtual {v9, v7, v6, v5, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 245
    .end local v4           #recommandPhone:[I
    :catch_0
    move-exception v2

    .line 246
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 207
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local v4       #recommandPhone:[I
    :cond_4
    :try_start_1
    array-length v7, v4

    if-le v7, v8, :cond_5

    .line 208
    const/4 v6, -0x2

    .line 209
    const/4 v7, 0x1

    aget v5, v4, v7

    .line 217
    :goto_3
    const-string v7, "WorldPhoneUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") scan phone type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :cond_5
    const/4 v7, 0x0

    aget v7, v4, v7

    invoke-direct {p0, v7}, Lcom/android/phone/HtcWorldPhoneUtils;->convertRilSwitchToPhoneType(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto :goto_3

    .line 239
    :cond_6
    const/16 v7, 0x1f5

    goto :goto_2
.end method

.method public placeE911Call()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    const-string v2, "ro.ril.ecclist"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, numbers:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 253
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, emergencyNum:[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 255
    const-string v2, "WorldPhoneUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "911 number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    aget-object v3, v0, v5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    .line 259
    .end local v0           #emergencyNum:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public swithPhone(II)V
    .locals 12
    .parameter "changeToPhoneType"
    .parameter "targetNetworkMode"

    .prologue
    const/16 v8, 0x1f8

    const/4 v11, -0x2

    const/16 v10, 0x1f6

    const/4 v7, 0x2

    const/4 v9, 0x1

    .line 31
    move v5, p1

    .line 32
    .local v5, targetType:I
    if-ne p1, v11, :cond_0

    .line 33
    invoke-direct {p0, p2}, Lcom/android/phone/HtcWorldPhoneUtils;->phoneTypeDecision(I)I

    move-result v5

    .line 36
    :cond_0
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 37
    .local v1, currentType:I
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v3

    .line 38
    .local v3, phoneState:Lcom/android/internal/telephony/Phone$State;
    const/4 v0, 0x0

    .line 39
    .local v0, conn:Lcom/android/internal/telephony/Connection;
    if-ne v5, v9, :cond_3

    if-ne v1, v7, :cond_3

    .line 40
    invoke-static {}, Lcom/android/phone/PhoneApp;->btDispose()V

    .line 41
    invoke-static {}, Lcom/android/phone/PhoneApp;->disposehtcCDMAPhone()V

    .line 42
    invoke-static {}, Lcom/android/phone/PhoneApp;->dispose()V

    .line 50
    sput-boolean v9, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 51
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_2

    .line 53
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 54
    .local v4, result:Landroid/os/Message;
    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 55
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)Z

    .line 56
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hangup call then switch from CDMA to GSM state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .end local v4           #result:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "swithch from CDMA to GSM state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 68
    .local v2, message:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 70
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v9, v2}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    goto :goto_0

    .line 72
    .end local v2           #message:Landroid/os/Message;
    :cond_3
    if-ne v5, v7, :cond_5

    if-ne v1, v9, :cond_5

    .line 73
    invoke-static {}, Lcom/android/phone/PhoneApp;->btDispose()V

    .line 74
    invoke-static {}, Lcom/android/phone/PhoneApp;->dispose()V

    .line 82
    sput-boolean v9, Lcom/android/phone/PhoneApp;->mPhoneChanging:Z

    .line 83
    sget-boolean v6, Lcom/android/phone/PhoneApp;->mResumeE911:Z

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v6, :cond_4

    .line 85
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 86
    .restart local v4       #result:Landroid/os/Message;
    iput v7, v4, Landroid/os/Message;->arg1:I

    .line 87
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtils;->hangupAll(Lcom/android/internal/telephony/Phone;Landroid/os/Message;)Z

    .line 88
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Hangup call then swithch from GSM to CDMA state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    .end local v4           #result:Landroid/os/Message;
    :cond_4
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 100
    .restart local v2       #message:Landroid/os/Message;
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 101
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6, v7, v2}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    .line 102
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "swithch from GSM to CDMA state:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 104
    .end local v2           #message:Landroid/os/Message;
    :cond_5
    if-ne v5, v1, :cond_1

    .line 112
    const-string v6, "WorldPhoneUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "same phone type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), do nothing"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-ne p1, v11, :cond_1

    .line 114
    iget-object v6, p0, Lcom/android/phone/HtcWorldPhoneUtils;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Lcom/android/internal/telephony/Phone;->requesetSetPhoneType(ILandroid/os/Message;)V

    goto/16 :goto_0
.end method
