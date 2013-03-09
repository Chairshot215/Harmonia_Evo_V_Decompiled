.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final EMN_USER_AGENT_AN:I = 0x9

.field private static final EMN_USER_AGENT_TYPE:Ljava/lang/String; = "x-wap-application:emn.ua"

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"

.field private static final SYNC_DM_USER_AGENT_AN:I = 0x7

.field private static final SYNC_DM_USER_AGENT_TYPE:Ljava/lang/String; = "x-wap-application:syncml.dm"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    return-void
.end method

.method private dispatchWapPdu_FOTA()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.HTCcheckin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "intentSource"

    const-string v2, "pushmode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 26

    const/4 v11, 0x0

    const/16 v18, 0x0

    add-int/lit8 v12, v11, 0x1

    aget-byte v21, p1, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    add-int/lit8 v11, v12, 0x1

    aget-byte v21, p1, v12

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/4 v9, 0x0

    const-string v21, "power"

    invoke-static/range {v21 .. v21}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mPowerManagerService:Landroid/os/IPowerManager;

    sget-short v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v22, 0xd8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    const/16 v21, 0x3

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v21, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_2

    const/16 v21, 0x2

    :goto_0
    return v21

    :cond_1
    const/16 v21, 0x6

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x7

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    const/16 v21, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int/lit8 v11, v21, 0x2

    move v10, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v21

    if-nez v21, :cond_3

    const/16 v21, 0x2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    new-array v8, v9, [B

    const/16 v21, 0x0

    array-length v0, v8

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v10, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v17, "android.permission.RECEIVE_WAP_PUSH"

    const-string v21, "application/vnd.wap.coc"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    move-object/from16 v14, p1

    :goto_1
    const-string v21, "application/vnd.wap.mms-message"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    const-string v17, "android.permission.RECEIVE_MMS"

    :cond_4
    const/4 v6, 0x0

    const-string v21, "application/vnd.omaloc-supl-init"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string v21, "WAP PUSH"

    const-string v22, "STEricsson GPS flag"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    move-result v21

    if-eqz v21, :cond_6

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v21

    move-wide/from16 v0, v21

    long-to-int v4, v0

    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received PDU. Application ID = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x10

    move/from16 v0, v21

    if-ne v0, v4, :cond_a

    const/16 v20, 0x1

    :goto_2
    const-string v21, "x-oma-application:ulp.ua"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "I-Mz validSuplInit = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v20, :cond_5

    const-string v21, "WAP PUSH"

    const-string v22, "I-Mz validSuplInit ++"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "android.permission.RECEIVE_SUPL_PUSH"

    :cond_5
    :try_start_0
    const-string v21, "WAP PUSH"

    const-string v22, "I-Mz Screen On..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mPowerManagerService:Landroid/os/IPowerManager;

    move-object/from16 v21, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    const/16 v24, 0x0

    const/16 v25, 0x1

    invoke-interface/range {v21 .. v25}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    const-string v21, "application/vnd.oma.drm.rights+xml"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "application/vnd.oma.drm.rights+wbxml"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "application/vnd.oma.dd+xml"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "application/vnd.oma.drm.message"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "application/vnd.oma.drm.content"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string v21, "application/vnd.oma.drm.roap-trigger+wbxml"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_7
    sget-boolean v21, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_DRM_V2_FLAG:Z

    if-eqz v21, :cond_8

    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.DX_WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_8
    const-string v21, "HTCFOTA01"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_FOTA()V

    const/16 v21, -0x1

    goto/16 :goto_0

    :cond_9
    add-int v5, v10, v9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v5

    move/from16 v0, v21

    new-array v14, v0, [B

    const/16 v21, 0x0

    array-length v0, v14

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v5, v14, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_1

    :cond_a
    const/16 v20, 0x0

    goto/16 :goto_2

    :cond_b
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received PDU. Application ID = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_0
    move-exception v7

    const-string v21, "WAP PUSH"

    const-string v22, "I-Mz doSendSuplMsg error"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v13, v15}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v21, "transactionId"

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v21, "pduType"

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v21, "header"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v21, "pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v21, "headerLength"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v21, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_d

    const-string v21, "OriAddr"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v21, -0x1

    goto/16 :goto_0
.end method
