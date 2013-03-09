.class public Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OutgoingCallBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OutgoingCallReceiver"
.end annotation


# static fields
.field private static final LOGV:Z = false

.field private static final SECRET_CODE_PREFIX_Type1:Ljava/lang/String; = "##"

.field private static final TAG:Ljava/lang/String; = "OutgoingCallReceiver"


# instance fields
.field final synthetic this$0:Lcom/android/phone/OutgoingCallBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/phone/OutgoingCallBroadcaster;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public doReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 112
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "OutgoingCallReceiver"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "doReceive: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const-string v14, "android.phone.extra.ALREADY_CALLED"

    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v15}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 120
    .local v3, alreadyCalled:Z
    if-eqz v3, :cond_2

    .line 121
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "OutgoingCallReceiver"

    const-string v15, "CALL already placed -- returning."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 129
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->getResultData()Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 135
    .local v4, app:Lcom/android/phone/PhoneApp;
    sget-boolean v14, Lcom/android/phone/HtcFeatureList;->FEATURE_ASK_EXIT_E911:Z

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/phone/HtcCdmaPhoneApp;->mEnterEmergencyMode:Z

    if-eqz v14, :cond_4

    .line 136
    move-object v12, v9

    .line 137
    .local v12, tmp_num:Ljava/lang/String;
    if-eqz v12, :cond_4

    invoke-static {v12}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 138
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "OutgoingCallReceiver"

    const-string v15, "show ECC Call back mode dialog"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v14, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v6, exitEMC:Landroid/content/Intent;
    const/high16 v14, 0x1002

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v14, v6}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    .end local v6           #exitEMC:Landroid/content/Intent;
    .end local v12           #tmp_num:Ljava/lang/String;
    :cond_4
    const-string v14, "*147359*682*"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-boolean v14, Lcom/android/phone/PhoneUtils;->SUPPORT_OTA:Z

    if-eqz v14, :cond_5

    .line 149
    iget-object v11, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    check-cast v11, Lcom/android/internal/telephony/PhoneProxy;

    .line 150
    .local v11, phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    invoke-virtual {v11}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object v7, v14

    check-cast v7, Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 151
    .local v7, gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    const/4 v14, 0x0

    invoke-static {v7, v9, v14}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 161
    .end local v7           #gsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;
    .end local v11           #phoneProxy:Lcom/android/internal/telephony/PhoneProxy;
    :cond_5
    iget-object v14, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 162
    iget-object v14, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v14, v14, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v15, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v14, v15, :cond_b

    const/4 v2, 0x1

    .line 164
    .local v2, activateState:Z
    :goto_1
    iget-object v14, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v14, v14, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v15, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v14, v15, :cond_c

    const/4 v5, 0x1

    .line 167
    .local v5, dialogState:Z
    :goto_2
    const/4 v8, 0x0

    .line 174
    .local v8, isOtaCallActive:Z
    iget-object v14, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v14, v14, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v15, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v14, v15, :cond_6

    iget-object v14, v4, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v14, v14, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v15, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v14, v15, :cond_7

    .line 178
    :cond_6
    const/4 v8, 0x1

    .line 181
    :cond_7
    if-nez v2, :cond_8

    if-eqz v5, :cond_d

    .line 187
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->dismissOtaDialogs()V

    .line 188
    :cond_9
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearOtaState()V

    .line 189
    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->clearInCallScreenMode()V

    .line 198
    .end local v2           #activateState:Z
    .end local v5           #dialogState:Z
    .end local v8           #isOtaCallActive:Z
    :cond_a
    if-nez v9, :cond_e

    .line 199
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "OutgoingCallReceiver"

    const-string v15, "CALL cancelled (null number), returning..."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 162
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 164
    .restart local v2       #activateState:Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_2

    .line 190
    .restart local v5       #dialogState:Z
    .restart local v8       #isOtaCallActive:Z
    :cond_d
    if-eqz v8, :cond_a

    .line 193
    const-string v14, "OutgoingCallReceiver"

    const-string v15, "OTASP call is active: disallowing a new outgoing call."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    .end local v2           #activateState:Z
    .end local v5           #dialogState:Z
    .end local v8           #isOtaCallActive:Z
    :cond_e
    iget-object v14, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v14}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v14, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v14

    sget-object v15, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v14, v15, :cond_f

    iget-object v14, v4, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14, v9}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 204
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "OutgoingCallReceiver"

    const-string v15, "Call is active, a 2nd OTA call cancelled -- returning."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 206
    :cond_f
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 213
    const-string v14, "android.phone.extra.ORIGINAL_URI"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 215
    .local v10, originalUri:Ljava/lang/String;
    if-nez v10, :cond_10

    .line 216
    const-string v14, "OutgoingCallReceiver"

    const-string v15, "Intent is missing EXTRA_ORIGINAL_URI -- returning."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 220
    :cond_10
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 222
    .local v13, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/phone/OutgoingCallBroadcaster;->access$000()Z

    move-result v14

    if-eqz v14, :cond_11

    const-string v14, "OutgoingCallReceiver"

    const-string v15, "CALL to xxxxxxx proceeding."

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    invoke-static {v14, v0, v1, v13, v9}, Lcom/android/phone/OutgoingCallBroadcaster;->access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->doReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;->this$0:Lcom/android/phone/OutgoingCallBroadcaster;

    invoke-virtual {v0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 109
    return-void
.end method
