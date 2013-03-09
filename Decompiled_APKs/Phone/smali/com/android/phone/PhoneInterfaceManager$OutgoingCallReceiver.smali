.class Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingCallReceiver"
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 2262
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2262
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 29
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2289
    const-string v25, "android.phone.extra.ALREADY_CALLED"

    const/16 v26, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2291
    .local v4, alreadyCalled:Z
    if-eqz v4, :cond_1

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2296
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v16

    .line 2297
    .local v16, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 2298
    .local v5, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v19

    .line 2301
    .local v19, phoneType:I
    const-string v25, "*147359*682*"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    sget-boolean v25, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v25, :cond_2

    .line 2302
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    .line 2303
    .local v18, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v7, v25

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2304
    .local v7, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 2309
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v18           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_2
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 2310
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_9

    const/4 v3, 0x1

    .line 2312
    .local v3, activateState:Z
    :goto_1
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_a

    const/4 v6, 0x1

    .line 2315
    .local v6, dialogState:Z
    :goto_2
    const/4 v8, 0x0

    .line 2317
    .local v8, isOtaCallActive:Z
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_3

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v25, v0

    sget-object v26, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 2321
    :cond_3
    const/4 v8, 0x1

    .line 2324
    :cond_4
    if-nez v3, :cond_5

    if-eqz v6, :cond_b

    .line 2325
    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 2326
    :cond_6
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 2327
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 2334
    .end local v3           #activateState:Z
    .end local v6           #dialogState:Z
    .end local v8           #isOtaCallActive:Z
    :cond_7
    if-eqz v16, :cond_0

    .line 2337
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_8

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_8

    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 2342
    :cond_8
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 2343
    const-string v25, "OutgoingCallReceiver"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Cannot modify outgoing call to emergency number "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "."

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2310
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 2312
    .restart local v3       #activateState:Z
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 2328
    .restart local v6       #dialogState:Z
    .restart local v8       #isOtaCallActive:Z
    :cond_b
    if-eqz v8, :cond_7

    goto/16 :goto_0

    .line 2392
    .end local v3           #activateState:Z
    .end local v6           #dialogState:Z
    .end local v8           #isOtaCallActive:Z
    :cond_c
    const/16 v25, 0x2

    move/from16 v0, v19

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    sget-boolean v25, Lcom/android/phone/HtcFeatureList;->FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    :cond_d
    sget-boolean v25, Lcom/android/phone/HtcFeatureList;->WORLDPHONE_FEATURE_POUNDPOUND_SECRETCODE_SEND:Z

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 2395
    :cond_e
    const-string v25, "#4357"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 2397
    new-instance v20, Landroid/content/Intent;

    const-string v25, "android.provider.Telephony.SECRET_CODE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "android_secret_code://cdma"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2399
    .local v20, poundIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2402
    .end local v20           #poundIntent:Landroid/content/Intent;
    :cond_f
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x3

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    const-string v25, "##"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_10

    const-string v25, "##4357"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_10

    .line 2408
    new-instance v20, Landroid/content/Intent;

    const-string v25, "android.provider.Telephony.SECRET_CODE"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "android_secret_code://cdma"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const/16 v27, 0x2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2410
    .restart local v20       #poundIntent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2417
    .end local v20           #poundIntent:Landroid/content/Intent;
    :cond_10
    const-string v25, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2419
    .local v17, originalUri:Ljava/lang/String;
    if-nez v17, :cond_11

    .line 2420
    const-string v25, "OutgoingCallReceiver"

    const-string v26, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2424
    :cond_11
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 2431
    .local v24, uri:Landroid/net/Uri;
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v22

    .line 2432
    .local v22, scheme:Ljava/lang/String;
    const-string v25, "sip"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_12

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_17

    :cond_12
    const/4 v9, 0x1

    .line 2434
    .local v9, isSIP:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v10

    .line 2436
    .local v10, mCallOption:Ljava/lang/String;
    if-eqz v10, :cond_13

    const-string v25, "SIP_ALWAYS"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_13

    .line 2437
    const/4 v9, 0x1

    .line 2440
    :cond_13
    if-eqz v5, :cond_14

    if-nez v9, :cond_14

    .line 2441
    iget-object v0, v5, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneProxy;

    .line 2443
    .restart local v18       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getPhoneName()Ljava/lang/String;

    move-result-object v25

    const-string v26, "GSM"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 2445
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2448
    .local v14, newDialString:Ljava/lang/String;
    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2450
    .local v13, networkPortion:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v7, v25

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 2452
    .restart local v7       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    invoke-static {v13, v7}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v12

    .line 2454
    .local v12, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-nez v12, :cond_18

    .line 2479
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v12           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v13           #networkPortion:Ljava/lang/String;
    .end local v14           #newDialString:Ljava/lang/String;
    .end local v18           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_14
    :goto_4
    const/4 v11, 0x0

    .line 2480
    .local v11, mUseSipPhone:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v21

    .line 2482
    .local v21, profileCount:I
    const-string v25, "PhoneInterfaceManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-- mCallOption "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    const-string v25, "PhoneInterfaceManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "-- profileCount "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    new-instance v15, Landroid/content/Intent;

    const-string v25, "android.intent.action.CALL"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2487
    .local v15, newIntent:Landroid/content/Intent;
    const-string v25, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2488
    const-string v25, "android.phone.extra.ACTUAL_NUMBER_TO_DIAL"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2490
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2491
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/phone/PhoneUtils;->copyDialExtra(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 2493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    const-class v26, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2494
    const/high16 v25, 0x1000

    move/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2496
    const-string v25, "sip"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_15

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 2497
    :cond_15
    const/4 v11, 0x1

    .line 2509
    :cond_16
    :goto_5
    const-string v25, "PhoneInterfaceManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mUseSipPhone = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2512
    if-nez v11, :cond_1f

    .line 2514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2432
    .end local v9           #isSIP:Z
    .end local v10           #mCallOption:Ljava/lang/String;
    .end local v11           #mUseSipPhone:Z
    .end local v15           #newIntent:Landroid/content/Intent;
    .end local v21           #profileCount:I
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 2456
    .restart local v7       #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .restart local v9       #isSIP:Z
    .restart local v10       #mCallOption:Ljava/lang/String;
    .restart local v12       #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v13       #networkPortion:Ljava/lang/String;
    .restart local v14       #newDialString:Ljava/lang/String;
    .restart local v18       #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_18
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v25

    if-nez v25, :cond_14

    .line 2460
    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isModeCLIRForLexikon()Z

    move-result v25

    if-eqz v25, :cond_19

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG()Z

    move-result v25

    if-eqz v25, :cond_19

    .line 2463
    const-string v25, "PhoneInterfaceManager"

    const-string v26, "isModeCLIRForLexikon"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2468
    :cond_19
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 2469
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2472
    :cond_1a
    const/16 v25, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-static {v7, v0, v1}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto/16 :goto_0

    .line 2498
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v12           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v13           #networkPortion:Ljava/lang/String;
    .end local v14           #newDialString:Ljava/lang/String;
    .end local v18           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    .restart local v11       #mUseSipPhone:Z
    .restart local v15       #newIntent:Landroid/content/Intent;
    .restart local v21       #profileCount:I
    :cond_1b
    const-string v25, "tel"

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1d

    if-eqz v21, :cond_1c

    invoke-static {v15}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 2499
    :cond_1c
    const/4 v11, 0x0

    goto :goto_5

    .line 2501
    :cond_1d
    if-eqz v10, :cond_1e

    const-string v25, "SIP_ASK_ME_EACH_TIME"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    .line 2503
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 2505
    :cond_1e
    if-eqz v10, :cond_16

    const-string v25, "SIP_ALWAYS"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 2506
    const/4 v11, 0x1

    goto/16 :goto_5

    .line 2518
    :cond_1f
    new-instance v23, Landroid/content/Intent;

    const-string v25, "com.android.phone.SIP_SELECT_PHONE"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2519
    .local v23, selectPhoneIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    const-class v26, Lcom/android/phone/SipCallOptionHandler;

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2520
    const-string v25, "android.phone.extra.NEW_CALL_INTENT"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2521
    const/high16 v25, 0x1000

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2269
    sget-boolean v2, Lcom/android/phone/HtcFeatureList;->FEATURE_ASK_EXIT_E911:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v2, :cond_0

    .line 2270
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v1

    .line 2271
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2272
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v0, exitEMC:Landroid/content/Intent;
    const/high16 v2, 0x1002

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2274
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v2, v2, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 2280
    .end local v0           #exitEMC:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 2279
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
