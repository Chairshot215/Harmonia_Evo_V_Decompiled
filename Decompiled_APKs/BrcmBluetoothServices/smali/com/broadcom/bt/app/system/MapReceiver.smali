.class public Lcom/broadcom/bt/app/system/MapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MapReceiver.java"


# static fields
.field protected static final ACTION_MESSAGE_DELETED_BY_MMS_APP:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP"

.field protected static final ACTION_MESSAGE_DELETED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP"

.field protected static final ACTION_MESSAGE_SENT_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_SENT_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

.field protected static final ACTION_MESSAGE_STATUS_RECEIVED_FORWARD:Ljava/lang/String; = "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "MAP.MapReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "ctx"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, action:Ljava/lang/String;
    const-string v6, "pdu"

    .line 51
    .local v6, pduExtraName:Ljava/lang/String;
    const-string v5, "MapURI"

    .line 52
    .local v5, intentExtraName:Ljava/lang/String;
    const-string v3, "errorCode"

    .line 54
    .local v3, errorCodeName:Ljava/lang/String;
    const-string v2, "deletedMessageId"

    .line 55
    .local v2, deletedMsgIdName:Ljava/lang/String;
    const-string v1, "deletedFolderId"

    .line 58
    .local v1, deletedMsgFolderIdName:Ljava/lang/String;
    const-string v7, "MAP.MapReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got event in onReceiver "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_SENT"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 64
    const-string v7, "MAP.MapReceiver"

    const-string v8, "Sending com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_FORWARD"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v4, i:Landroid/content/Intent;
    const-string v7, "MapURI"

    const-string v8, "MapURI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 69
    const-string v7, "errorCode"

    const-string v8, "errorCode"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    .end local v4           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 74
    const-string v7, "MAP.MapReceiver"

    const-string v8, "Sending com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_FORWARD"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "MapURI"

    const-string v8, "MapURI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string v8, "pdu"

    const-string v7, "pdu"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 84
    .end local v4           #i:Landroid/content/Intent;
    :cond_2
    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 85
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_STATUS_RECEIVED_BY_MMS_APP_FWD"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "MapURI"

    const-string v8, "MapURI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    const-string v8, "pdu"

    const-string v7, "pdu"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v4, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 88
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    .end local v4           #i:Landroid/content/Intent;
    :cond_3
    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 92
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_SENT_BY_MMS_APP_FWD"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "MapURI"

    const-string v8, "MapURI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    const-string v7, "errorCode"

    const-string v8, "errorCode"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 97
    .end local v4           #i:Landroid/content/Intent;
    :cond_4
    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.broadcom.bt.service.map.sms.MESSAGE_DELETED_BY_MMS_APP_FWD"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .restart local v4       #i:Landroid/content/Intent;
    const-string v7, "deletedMessageId"

    const-string v8, "deletedMessageId"

    const-wide/16 v9, 0x0

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    const-string v7, "deletedFolderId"

    const-string v8, "deletedFolderId"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
