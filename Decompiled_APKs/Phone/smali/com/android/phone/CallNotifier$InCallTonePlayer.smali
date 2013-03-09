.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# static fields
.field public static final TONE_BATTERY_LOW:I = 0x4

.field public static final TONE_BUSY:I = 0x2

.field public static final TONE_CALL_ENDED:I = 0x5

.field public static final TONE_CALL_WAITING:I = 0x1

.field public static final TONE_CALL_WAITING_ATT:I = 0x32

.field public static final TONE_CDMA_DROP:I = 0x9

.field public static final TONE_CONGESTION:I = 0x3

.field public static final TONE_INTERCEPT:I = 0x8

.field public static final TONE_NONE:I = 0x0

.field private static final TONE_OFF:I = 0x0

.field private static final TONE_ON:I = 0x1

.field public static final TONE_OTA_CALL_END:I = 0xc

.field public static final TONE_OUT_OF_SERVICE:I = 0xa

.field public static final TONE_REDIAL:I = 0xb

.field private static final TONE_RELATIVE_VOLUME_HIPRI:I = 0x50

.field private static final TONE_RELATIVE_VOLUME_LOPRI:I = 0x32

.field public static final TONE_REORDER:I = 0x7

.field public static final TONE_RING_BACK:I = 0xd

.field private static final TONE_STOPPED:I = 0x2

.field private static final TONE_TIMEOUT_BUFFER:I = 0x14

.field public static final TONE_UNOBTAINABLE_NUMBER:I = 0xe

.field public static final TONE_VOICE_PRIVACY:I = 0x6


# instance fields
.field private mLooping:Z

.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .parameter
    .parameter "toneId"

    .prologue
    const/4 v0, 0x0

    .line 2146
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2147
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2109
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mLooping:Z

    .line 2148
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2149
    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2150
    return-void
.end method

.method constructor <init>(Lcom/android/phone/CallNotifier;IZ)V
    .locals 1
    .parameter
    .parameter "toneId"
    .parameter "looping"

    .prologue
    const/4 v0, 0x0

    .line 2153
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 2154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2109
    iput-boolean v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mLooping:Z

    .line 2155
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 2156
    iput-boolean p3, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mLooping:Z

    .line 2157
    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2158
    return-void
.end method


# virtual methods
.method public isCallWaitingTone()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2163
    iget v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v2, 0x32

    if-ne v1, v2, :cond_1

    .line 2169
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 15

    .prologue
    const/4 v11, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 2178
    const/4 v8, 0x0

    .line 2181
    .local v8, toneType:I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    if-nez v10, :cond_1

    .line 2437
    :cond_0
    :goto_0
    return-void

    .line 2184
    :cond_1
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 2186
    .local v3, phoneType:I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    sparse-switch v10, :sswitch_data_0

    .line 2313
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2188
    :sswitch_0
    const/16 v8, 0x16

    .line 2191
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    if-le v10, v14, :cond_7

    .line 2192
    const/16 v9, 0x50

    .line 2200
    .local v9, toneVolume:I
    :goto_1
    const/16 v7, 0x1388

    .line 2321
    .local v7, toneLengthMillis:I
    :goto_2
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2322
    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x3c

    if-eq v10, v11, :cond_2

    sget-short v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_c

    .line 2324
    :cond_2
    const/4 v5, 0x6

    .line 2328
    .local v5, stream:I
    :goto_3
    const/16 v9, 0x64

    .line 2332
    :goto_4
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2354
    .end local v5           #stream:I
    .local v6, toneGenerator:Landroid/media/ToneGenerator;
    :goto_5
    const/4 v1, 0x1

    .line 2355
    .local v1, needToStopTone:Z
    const/4 v2, 0x0

    .line 2357
    .local v2, okToPlayTone:Z
    if-eqz v6, :cond_6

    .line 2358
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 2359
    .local v4, ringerMode:I
    if-ne v3, v14, :cond_15

    .line 2360
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_e

    .line 2361
    if-eqz v4, :cond_4

    if-eq v4, v13, :cond_4

    .line 2363
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2364
    :cond_3
    const/4 v2, 0x1

    .line 2365
    const/4 v1, 0x0

    .line 2391
    :cond_4
    :goto_6
    monitor-enter p0

    .line 2392
    if-eqz v2, :cond_5

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_5

    .line 2393
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2394
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2400
    :try_start_2
    iget-boolean v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mLooping:Z

    if-nez v10, :cond_16

    .line 2401
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2411
    :goto_7
    if-eqz v1, :cond_5

    .line 2412
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 2416
    :cond_5
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 2417
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2418
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2434
    .end local v4           #ringerMode:I
    :cond_6
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v10, v11, :cond_0

    .line 2435
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #calls: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)V

    goto/16 :goto_0

    .line 2194
    .end local v1           #needToStopTone:Z
    .end local v2           #okToPlayTone:Z
    .end local v6           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_7
    const/16 v9, 0x64

    .restart local v9       #toneVolume:I
    goto/16 :goto_1

    .line 2204
    .end local v9           #toneVolume:I
    :sswitch_1
    if-ne v3, v14, :cond_8

    .line 2205
    const/16 v8, 0x60

    .line 2210
    const/16 v9, 0x50

    .line 2212
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2213
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_8
    if-eq v3, v13, :cond_9

    const/4 v10, 0x3

    if-ne v3, v10, :cond_a

    .line 2215
    :cond_9
    const/16 v8, 0x11

    .line 2216
    const/16 v9, 0x50

    .line 2220
    .restart local v9       #toneVolume:I
    const/16 v7, 0xdac

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2223
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_a
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 2227
    :sswitch_2
    const/16 v8, 0x12

    .line 2228
    const/16 v9, 0x50

    .line 2229
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2230
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2236
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_3
    const/16 v8, 0x19

    .line 2237
    const/16 v9, 0x50

    .line 2238
    .restart local v9       #toneVolume:I
    const/16 v7, 0x3e8

    .line 2239
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2241
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_4
    const/16 v8, 0x1b

    .line 2242
    const/16 v9, 0x50

    .line 2243
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2244
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2246
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_5
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_b

    .line 2248
    const/16 v8, 0x5d

    .line 2249
    const/16 v9, 0x50

    .line 2250
    .restart local v9       #toneVolume:I
    const/16 v7, 0x2ee

    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2252
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :cond_b
    const/16 v8, 0x1b

    .line 2253
    const/16 v9, 0x50

    .line 2254
    .restart local v9       #toneVolume:I
    const/16 v7, 0xc8

    .line 2256
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2258
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_6
    const/16 v8, 0x56

    .line 2259
    const/16 v9, 0x50

    .line 2260
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2261
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2263
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_7
    const/16 v8, 0x27

    .line 2268
    const/16 v9, 0x50

    .line 2270
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2271
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2273
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_8
    const/16 v8, 0x25

    .line 2278
    const/16 v9, 0x50

    .line 2280
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1f4

    .line 2281
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2284
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_9
    const/16 v8, 0x5f

    .line 2285
    const/16 v9, 0x32

    .line 2286
    .restart local v9       #toneVolume:I
    const/16 v7, 0x177

    .line 2287
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2289
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_a
    const/16 v8, 0x57

    .line 2290
    const/16 v9, 0x32

    .line 2291
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2292
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2294
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_b
    const/16 v8, 0x17

    .line 2295
    const/16 v9, 0x50

    .line 2297
    .restart local v9       #toneVolume:I
    const v7, 0x7fffffeb

    .line 2298
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2300
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_c
    const/16 v8, 0x15

    .line 2301
    const/16 v9, 0x50

    .line 2302
    .restart local v9       #toneVolume:I
    const/16 v7, 0xfa0

    .line 2303
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2306
    .end local v7           #toneLengthMillis:I
    .end local v9           #toneVolume:I
    :sswitch_d
    const/16 v8, 0x6c

    .line 2308
    const/16 v9, 0x50

    .line 2309
    .restart local v9       #toneVolume:I
    const/16 v7, 0x1388

    .line 2310
    .restart local v7       #toneLengthMillis:I
    goto/16 :goto_2

    .line 2326
    :cond_c
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_3

    .line 2330
    .end local v5           #stream:I
    :cond_d
    const/4 v5, 0x0

    .restart local v5       #stream:I
    goto/16 :goto_4

    .line 2334
    .end local v5           #stream:I
    :catch_0
    move-exception v0

    .line 2335
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/4 v6, 0x0

    .restart local v6       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_5

    .line 2367
    .end local v0           #e:Ljava/lang/RuntimeException;
    .restart local v1       #needToStopTone:Z
    .restart local v2       #okToPlayTone:Z
    .restart local v4       #ringerMode:I
    :cond_e
    const/16 v10, 0x60

    if-eq v8, v10, :cond_f

    const/16 v10, 0x27

    if-eq v8, v10, :cond_f

    const/16 v10, 0x25

    if-eq v8, v10, :cond_f

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_11

    .line 2371
    :cond_f
    if-eqz v4, :cond_4

    .line 2372
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2373
    :cond_10
    const/4 v2, 0x1

    .line 2374
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2376
    :cond_11
    const/16 v10, 0x57

    if-eq v8, v10, :cond_12

    const/16 v10, 0x56

    if-ne v8, v10, :cond_14

    .line 2378
    :cond_12
    if-eqz v4, :cond_4

    if-eq v4, v13, :cond_4

    .line 2380
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v10

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$900(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 2381
    :cond_13
    const/4 v2, 0x1

    .line 2382
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 2385
    :cond_14
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2388
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 2404
    :cond_16
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 2407
    :catch_1
    move-exception v0

    .line 2408
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_5
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2418
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v10

    .line 2186
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_9
        0xb -> :sswitch_a
        0xc -> :sswitch_5
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0x32 -> :sswitch_d
    .end sparse-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 2440
    monitor-enter p0

    .line 2441
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2442
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 2444
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 2445
    monitor-exit p0

    .line 2446
    return-void

    .line 2445
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
