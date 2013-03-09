.class Lcom/android/mms/transaction/SmsReceiverService$DialogListener;
.super Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/SmsReceiverService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3468
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService$DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 3470
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNoNotificationIconAlert(Landroid/content/Context;I)V

    .line 3473
    new-instance v0, Ljava/lang/Long;

    const-string v1, "MapKey"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 3474
    .local v0, key:Ljava/lang/Long;
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3475
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3478
    :cond_0
    return-void
.end method

.method public onPositiveBtnClick(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 3480
    new-instance v0, Ljava/lang/Long;

    const-string v2, "MapKey"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 3482
    .local v0, key:Ljava/lang/Long;
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3483
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, [Landroid/telephony/SmsMessage;

    if-eqz v2, :cond_0

    .line 3484
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/telephony/SmsMessage;

    move-object v1, v2

    check-cast v1, [Landroid/telephony/SmsMessage;

    .line 3485
    .local v1, msg:[Landroid/telephony/SmsMessage;
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const-string v3, "isevdo"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x0

    invoke-static {v2, v1, v5, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ[I)Landroid/net/Uri;

    .line 3487
    .end local v1           #msg:[Landroid/telephony/SmsMessage;
    :cond_0
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3491
    :cond_1
    return-void
.end method
