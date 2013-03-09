.class Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;
.super Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsDialogListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4063
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/SmsReceiverService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4063
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService$GsDialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeBtnClick(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 4065
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNoNotificationIconAlert(Landroid/content/Context;I)V

    .line 4068
    new-instance v0, Ljava/lang/Long;

    const-string v1, "MapKey"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 4069
    .local v0, key:Ljava/lang/Long;
    return-void
.end method

.method public onPositiveBtnClick(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 4071
    new-instance v0, Ljava/lang/Long;

    const-string v1, "MapKey"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    .line 4073
    .local v0, key:Ljava/lang/Long;
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4075
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 4076
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Lcom/android/mms/transaction/SmsReceiverService;->insertcbMessage(Landroid/content/Context;Landroid/content/Intent;Z)Landroid/net/Uri;

    .line 4077
    sget-object v1, Lcom/android/mms/transaction/SmsReceiverService;->mSmsMsgMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    :cond_0
    return-void
.end method
