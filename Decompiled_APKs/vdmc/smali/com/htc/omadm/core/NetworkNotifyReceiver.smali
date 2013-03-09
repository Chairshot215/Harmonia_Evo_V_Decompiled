.class public Lcom/htc/omadm/core/NetworkNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkNotifyReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkNotifyReceiver"

.field protected static final UI_MODE_BACKGROUND:Ljava/lang/String; = "01"

.field protected static final UI_MODE_INFORMATIVE:Ljava/lang/String; = "10"

.field protected static final UI_MODE_INTERACTIVE:Ljava/lang/String; = "11"

.field protected static final UI_MODE_NIDC:Ljava/lang/String; = "10"

.field protected static final UI_MODE_NIFUMO:Ljava/lang/String; = "11"

.field protected static final UI_MODE_NIPRL:Ljava/lang/String; = "01"

.field protected static final UI_MODE_NOT_SPECIFIED:Ljava/lang/String; = "00"

.field protected static final WAP_DIGEST_HEX_NUM:I = 0x20

.field protected static final WAP_INFO_HEX_NUM:I = 0xa

.field protected static final WAP_SESSION_ID_HEX_NUM:I = 0x4

.field protected static final WSP_FULLY_SIZE:I = 0x48

.field protected static final WSP_HEADER_HEX_NUM:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static parsingWAP(Ljava/lang/String;)[I
    .locals 13
    .parameter "hexString"

    .prologue
    const/16 v12, 0x10

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 70
    new-array v3, v11, [I

    .line 71
    .local v3, result:[I
    const/16 v7, 0x48

    invoke-static {p0, v7}, Lcom/htc/omadm/util/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, uiModeHexStr:Ljava/lang/String;
    const-string v7, "NetworkNotifyReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uiModeHexStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/16 v7, 0x2e

    const/16 v8, 0x30

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 77
    const-string v7, "NetworkNotifyReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uiModeHexStr:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 82
    .local v1, dig:I
    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/htc/omadm/util/Utility;->pendZero(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, pendZero:Ljava/lang/String;
    invoke-virtual {v2, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, binaryUiMode:Ljava/lang/String;
    const-string v7, "01"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 90
    const/16 v7, 0x8

    aput v7, v3, v10

    .line 109
    :cond_0
    :goto_0
    const-string v7, "NetworkNotifyReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ui mode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const/16 v7, 0x36

    const/16 v8, 0x3a

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 115
    .local v5, sidHexStr:Ljava/lang/String;
    invoke-static {v5, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 116
    .local v4, sid:I
    const/4 v7, 0x1

    aput v4, v3, v7

    .line 117
    const-string v7, "NetworkNotifyReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "session id:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-object v3

    .line 91
    .end local v4           #sid:I
    .end local v5           #sidHexStr:Ljava/lang/String;
    :cond_1
    const-string v7, "10"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 92
    const/4 v7, 0x6

    aput v7, v3, v10

    goto :goto_0

    .line 93
    :cond_2
    const-string v7, "11"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 94
    const/16 v7, 0xa

    aput v7, v3, v10

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 35
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/htc/omadm/rule/Factory;->checkFactoryInit(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const-string v4, "data"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 45
    .local v3, wapData:[B
    invoke-static {v3}, Lcom/htc/omadm/util/Utility;->byteToHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, hexString:Ljava/lang/String;
    const-string v4, "NetworkNotifyReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAP: data -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v4, "NetworkNotifyReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAP: type -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.syncml.notification"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-static {}, Lcom/htc/omadm/libdo/system/SysLib;->getSingleton()Lcom/htc/omadm/libdo/system/SysLib;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/htc/omadm/libdo/system/SysLib;->setPowerAcquire(Z)V

    .line 56
    const-string v4, "NetworkNotifyReceiver"

    const-string v5, "WAP: NI_DM"

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {v0}, Lcom/htc/omadm/core/NetworkNotifyReceiver;->parsingWAP(Ljava/lang/String;)[I

    move-result-object v2

    .line 58
    .local v2, result:[I
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.htc.omadm.core.start"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, i:Landroid/content/Intent;
    const-string v4, "SESSION_TYPE"

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 60
    const-string v4, "SESSION_ID"

    aget v5, v2, v7

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string v4, "SESSION_WAP_DATA"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 62
    const-string v4, "com.redbend.vdmc"

    const-string v5, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method
