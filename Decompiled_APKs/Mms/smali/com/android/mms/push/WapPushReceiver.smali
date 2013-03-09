.class public Lcom/android/mms/push/WapPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WapPushReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WapPushReceiver"

.field static final MIME_CO_TOKENISED_FORM:Ljava/lang/String; = "application/vnd.wap.coc"

.field static final MIME_SI_TOKENISED_FORM:Ljava/lang/String; = "application/vnd.wap.sic"

.field static final MIME_SL_TOKENISED_FORM:Ljava/lang/String; = "application/vnd.wap.slc"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 42
    const-string v3, "Messaging-WapPushReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----------------> Receive intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportWapPush()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, mime:Ljava/lang/String;
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    .line 48
    .local v2, pushWbxmlContent:[B
    if-eqz v1, :cond_0

    if-nez v2, :cond_2

    .line 49
    :cond_0
    const-string v3, "WapPushReceiver"

    const-string v4, "Invalid WAP push message!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v1           #mime:Ljava/lang/String;
    .end local v2           #pushWbxmlContent:[B
    :cond_1
    :goto_0
    return-void

    .line 54
    .restart local v1       #mime:Ljava/lang/String;
    .restart local v2       #pushWbxmlContent:[B
    :cond_2
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 55
    const-string v3, "application/vnd.wap.slc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 56
    const-string v3, "WapPushReceiver"

    const-string v4, "Ignore SL message"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 63
    :cond_3
    const-string v3, "OriAddr"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, OriAddr:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 65
    new-instance v0, Ljava/lang/String;

    .end local v0           #OriAddr:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0       #OriAddr:Ljava/lang/String;
    :cond_4
    const-string v3, "application/vnd.wap.sic"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 70
    invoke-static {p1, v2, v0}, Lcom/android/mms/push/PushUtil;->processSi(Landroid/content/Context;[BLjava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v3, "application/vnd.wap.slc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 72
    invoke-static {p1, v2, v0}, Lcom/android/mms/push/PushUtil;->processSl(Landroid/content/Context;[BLjava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_6
    const-string v3, "application/vnd.wap.coc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 76
    const-string v3, "WapPushReceiver"

    const-string v4, "got COC wap push, don\'t process it"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :cond_7
    const-string v3, "WapPushReceiver"

    const-string v4, "Unknown message!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
