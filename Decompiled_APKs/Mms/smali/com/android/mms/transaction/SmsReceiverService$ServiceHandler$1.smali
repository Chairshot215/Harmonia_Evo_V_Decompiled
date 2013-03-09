.class Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;->this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 582
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;->this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/mms/transaction/SmsReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 583
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 584
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->doneSimSmsAutoSync()V

    .line 585
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->doneVeryFirstExecute()V

    .line 587
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 588
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;->this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "index_on_sim <> -1 AND Length(index_on_sim) > 0"

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 590
    const-string v0, "content://sms/sim"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 592
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;->this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v0}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 594
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 595
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler$1;->this$1:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v0, v0, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #calls: Lcom/android/mms/transaction/SmsReceiverService;->copyAllMsgToPhone(Landroid/database/Cursor;)V
    invoke-static {v0, v6}, Lcom/android/mms/transaction/SmsReceiverService;->access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/database/Cursor;)V

    .line 597
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 598
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 601
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    return-void
.end method
