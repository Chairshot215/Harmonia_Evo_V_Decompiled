.class Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;
.super Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;
.source "DeviceFullReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/DeviceFullReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogListener"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/util/ScheduledDialogActivity$buttonListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/DeviceFullReceiver$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveBtnClick(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 50
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x7d2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNoNotificationIconAlert(Landroid/content/Context;I)V

    .line 54
    return-void
.end method
