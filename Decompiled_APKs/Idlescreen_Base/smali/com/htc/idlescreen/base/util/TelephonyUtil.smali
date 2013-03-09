.class public Lcom/htc/idlescreen/base/util/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "TelephonyUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTelephonyStateString(Landroid/content/Context;)[Ljava/lang/String;
    .locals 26
    .parameter "context"

    .prologue
    .line 20
    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v14, v0, [Ljava/lang/String;

    .line 25
    .local v14, ret:[Ljava/lang/String;
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->getTelephonyState()Lcom/htc/lockscreen/telephony/TelephonyState;

    move-result-object v18

    .line 26
    .local v18, teleState:Lcom/htc/lockscreen/telephony/TelephonyState;
    if-nez v18, :cond_0

    .line 297
    :goto_0
    return-object v14

    .line 29
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/htc/lockscreen/telephony/TelephonyState;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v17

    .line 30
    .local v17, simState:Lcom/android/internal/telephony/IccCard$State;
    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mNetworkServiceStatus:I

    .line 31
    .local v15, serviceStatus:I
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccProvision:Z

    move/from16 v21, v0

    .line 32
    .local v21, uiccProvisioned:Z
    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/lockscreen/telephony/TelephonyState;->mUiccState:I

    move/from16 v22, v0

    .line 34
    .local v22, uiccState:I
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->isUiccProblem()Z

    move-result v20

    .line 35
    .local v20, uiccProblem:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->isWiFiOnlySIM()Z

    move-result v9

    .line 36
    .local v9, isWiFiOnlySIM:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->isSimMissed()Z

    move-result v6

    .line 37
    .local v6, isSimMissed:Z
    const/16 v19, 0x0

    .line 38
    .local v19, title:Ljava/lang/String;
    const/4 v3, 0x0

    .line 39
    .local v3, event:Ljava/lang/String;
    const/4 v4, 0x0

    .line 41
    .local v4, hint:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/idlescreen/base/util/MyUtil;->isShowEmergencyHint(Landroid/content/Context;)Z

    move-result v16

    .line 42
    .local v16, showEmergencyHint:Z
    const/4 v2, 0x0

    .line 43
    .local v2, addEmergency:Z
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->isUICCRegistered()Z

    move-result v7

    .line 44
    .local v7, isUICCRegistered:Z
    const-string v23, "TelephonyUtil"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getTelephonyStateString simState:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " uiccProblem:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isWiFiOnlySIM:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " isUICCRegistered:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->ICC_EXPIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 49
    const-string v23, "TelephonyUtil"

    const-string v24, "ICC_EXPIRED"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const v5, 0x7f040016

    .line 51
    .local v5, hintResId:I
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isSBM()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 52
    const v5, 0x7f040017

    .line 54
    :cond_1
    const v23, 0x7f040039

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 55
    const v23, 0x7f040015

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 285
    .end local v5           #hintResId:I
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    if-eqz v15, :cond_3

    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v15, v0, :cond_3

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v15, v0, :cond_4

    .line 289
    :cond_3
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    :cond_4
    const/16 v23, 0x0

    aput-object v19, v14, v23

    .line 292
    const/16 v23, 0x1

    aput-object v3, v14, v23

    .line 293
    const/16 v23, 0x2

    aput-object v4, v14, v23

    .line 294
    const-string v23, "TelephonyUtil"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "getTelephonyStateString title:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " event:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " hint:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 58
    :cond_5
    if-eqz v9, :cond_7

    .line 59
    const-string v23, "TelephonyUtil"

    const-string v24, "isWiFiOnlySIM"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const v23, 0x7f04000d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 61
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->isPhoneFeatureEnabled()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 62
    const v23, 0x7f04000f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 65
    :cond_6
    const v23, 0x7f04000e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 68
    :cond_7
    if-eqz v6, :cond_d

    .line 69
    const-string v23, "TelephonyUtil"

    const-string v24, "isSimMissed"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const v13, 0x7f04003b

    .line 71
    .local v13, missSimMsgId:I
    const v12, 0x7f04003f

    .line 73
    .local v12, missSimHintId:I
    const v23, 0x7f040038

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 74
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isVZWLTE()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 75
    const v23, 0x7f040060

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 76
    const v13, 0x7f040066

    .line 78
    const v12, 0x20c0127

    .line 107
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 109
    goto/16 :goto_1

    .line 80
    :cond_8
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isSBM()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 81
    const v13, 0x7f04001a

    .line 82
    const v12, 0x7f04001b

    goto :goto_2

    .line 84
    :cond_9
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isUIMOnly()Z

    move-result v23

    if-nez v23, :cond_a

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBothUIMSIMCard()Z

    move-result v23

    if-eqz v23, :cond_c

    .line 86
    :cond_a
    const v23, 0x7f040005

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 87
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportPhone()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 88
    const/high16 v13, 0x7f04

    .line 92
    :goto_3
    const v12, 0x7f040002

    goto :goto_2

    .line 90
    :cond_b
    const v13, 0x7f040001

    goto :goto_3

    .line 104
    :cond_c
    const/4 v2, 0x1

    goto :goto_2

    .line 110
    .end local v12           #missSimHintId:I
    .end local v13           #missSimMsgId:I
    :cond_d
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_PERM_BLOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_e

    .line 111
    const v23, 0x7f040061

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 112
    const v23, 0x7f04004d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 116
    :cond_e
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 117
    const-string v23, "TelephonyUtil"

    const-string v24, "PIN_REQUIRED"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isUIMOnly()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 126
    const v23, 0x7f040003

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 134
    :goto_4
    const v23, 0x7f040040

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 135
    const-string v4, ""

    .line 136
    if-eqz v16, :cond_2

    .line 137
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 128
    :cond_f
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBothUIMSIMCard()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 129
    const v23, 0x7f04000a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 132
    :cond_10
    const v23, 0x20c011e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_4

    .line 140
    :cond_11
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_13

    .line 141
    const-string v23, "TelephonyUtil"

    const-string v24, "PUK_REQUIRED"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const v23, 0x7f040041

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 144
    const v23, 0x7f040044

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 145
    const-string v4, ""

    .line 146
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v24, 0x9b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_12

    .line 147
    const v23, 0x7f04003a

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 148
    const v23, 0x7f040043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isSupportPhone()Z

    move-result v23

    if-eqz v23, :cond_2

    .line 150
    const v23, 0x7f04003d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 153
    :cond_12
    if-eqz v16, :cond_2

    .line 154
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 157
    :cond_13
    if-nez v7, :cond_14

    .line 158
    const-string v23, "TelephonyUtil"

    const-string v24, "unregistered uicc"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const v23, 0x7f040013

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 160
    const v23, 0x7f040014

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 162
    :cond_14
    if-eqz v20, :cond_18

    .line 163
    const-string v23, "TelephonyUtil"

    const-string v24, "uiccProblem"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/htc/idlescreen/base/IdleState;->isVZWSIM()Z

    move-result v8

    .line 166
    .local v8, isVZWSim:Z
    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_16

    .line 167
    if-eqz v8, :cond_15

    .line 168
    const v23, 0x7f040067

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 169
    const v23, 0x7f040063

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    const v23, 0x7f040068

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 173
    :cond_15
    const v23, 0x7f040064

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 174
    const v23, 0x7f04006b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 181
    :cond_16
    if-eqz v8, :cond_17

    .line 183
    const v23, 0x7f040065

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 184
    const v23, 0x7f04006b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 189
    :cond_17
    const v23, 0x7f040064

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 190
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 197
    .end local v8           #isVZWSim:Z
    :cond_18
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1b

    .line 198
    const-string v23, "TelephonyUtil"

    const-string v24, "NETWORK_LOCKED"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const v11, 0x7f040045

    .line 201
    .local v11, lockMsgId:I
    const v10, 0x7f040043

    .line 203
    .local v10, lockHintId:I
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isSBM()Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 204
    const v11, 0x7f040018

    .line 205
    const v10, 0x7f040019

    .line 211
    :cond_19
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 212
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    const-string v4, ""

    .line 214
    goto/16 :goto_1

    .line 207
    :cond_1a
    if-eqz v16, :cond_19

    .line 208
    const/4 v2, 0x1

    goto :goto_5

    .line 216
    .end local v10           #lockHintId:I
    .end local v11           #lockMsgId:I
    :cond_1b
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->ICC_FAIL:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1f

    .line 217
    const-string v23, "TelephonyUtil"

    const-string v24, "ICC_FAIL"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isUIMOnly()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 221
    const v23, 0x7f040004

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 222
    const v23, 0x7f040043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 223
    const-string v4, ""

    .line 241
    :goto_6
    if-eqz v16, :cond_2

    .line 242
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 225
    :cond_1c
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->isBothUIMSIMCard()Z

    move-result v23

    if-eqz v23, :cond_1d

    .line 226
    const v23, 0x7f04000b

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 227
    const v23, 0x7f040043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    const-string v4, ""

    goto :goto_6

    .line 230
    :cond_1d
    invoke-static {}, Lcom/htc/idlescreen/base/util/MyUtil;->isKT()Z

    move-result v23

    if-eqz v23, :cond_1e

    .line 231
    const v23, 0x7f040010

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 232
    const v23, 0x7f040011

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    const v23, 0x7f040012

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 236
    :cond_1e
    const v23, 0x7f040046

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 237
    const v23, 0x7f040043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 238
    const-string v4, ""

    goto :goto_6

    .line 245
    :cond_1f
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->IMEI_LOCKED:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_20

    .line 246
    const-string v23, "TelephonyUtil"

    const-string v24, "IMEI_LOCKED"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const v23, 0x20c0198

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 249
    const v23, 0x7f040043

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 250
    const-string v4, ""

    .line 251
    if-eqz v16, :cond_2

    .line 252
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 255
    :cond_20
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_22

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v15, v0, :cond_22

    .line 257
    const-string v23, "TelephonyUtil"

    const-string v24, "STATE_EMERGENCY_ONLY"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const v23, 0x7f040039

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 259
    const v23, 0x7f040047

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 260
    if-eqz v16, :cond_21

    .line 261
    const v23, 0x20c0127

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 264
    :cond_21
    const-string v4, ""

    goto/16 :goto_1

    .line 267
    :cond_22
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_23

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_23

    .line 269
    const-string v23, "TelephonyUtil"

    const-string v24, "STATE_OUT_OF_SERVICE"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const v23, 0x7f040039

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 271
    const v23, 0x20c0126

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    const-string v4, ""

    .line 273
    if-eqz v16, :cond_2

    .line 274
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 278
    :cond_23
    sget-object v23, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_2

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ne v15, v0, :cond_2

    .line 280
    const-string v23, "TelephonyUtil"

    const-string v24, "STATE_NETWORK_SEARCHING"

    invoke-static/range {v23 .. v24}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const v23, 0x7f040039

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 282
    const v23, 0x7f040048

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method
