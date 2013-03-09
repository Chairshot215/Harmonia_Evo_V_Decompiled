.class final Lcom/android/mms/util/MsgComposeHelper$1;
.super Ljava/lang/Object;
.source "MsgForwardReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/MsgComposeHelper;->sendSMSAsync(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$dests:[Ljava/lang/String;

.field final synthetic val$nTimestamp:J

.field final synthetic val$strCSID:Ljava/lang/String;

.field final synthetic val$strMsgBody:Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$dests:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$strMsgBody:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$strCSID:Ljava/lang/String;

    iput-wide p5, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$nTimestamp:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 405
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v6, it:Landroid/content/Intent;
    const-string v0, "dest"

    iget-object v1, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$dests:[Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v0, "threadId"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    const-string v0, "msg"

    iget-object v1, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$strMsgBody:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    new-instance v7, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v0, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$ctx:Landroid/content/Context;

    invoke-direct {v7, v0, v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 411
    .local v7, msgSender:Lcom/android/mms/transaction/SmsMessageSender;
    const-wide/16 v0, 0x0

    invoke-virtual {v7, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z

    .line 413
    invoke-virtual {v7}, Lcom/android/mms/transaction/SmsMessageSender;->getSentMessage()Landroid/net/Uri;

    move-result-object v8

    .line 414
    .local v8, uriSentMsg:Landroid/net/Uri;
    if-eqz v8, :cond_0

    .line 415
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 416
    .local v5, id:I
    iget-object v0, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$strCSID:Ljava/lang/String;

    sget-object v2, Lcom/android/mms/util/MsgComposeHelper;->SMS_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/util/MsgComposeHelper$1;->val$nTimestamp:J

    invoke-static/range {v0 .. v5}, Lcom/android/mms/util/MsgComposeHelper;->updateMsgDB(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;JI)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    .end local v5           #id:I
    .end local v6           #it:Landroid/content/Intent;
    .end local v7           #msgSender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v8           #uriSentMsg:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    goto :goto_0
.end method
