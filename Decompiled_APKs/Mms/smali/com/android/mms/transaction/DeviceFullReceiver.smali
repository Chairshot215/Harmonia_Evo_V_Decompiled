.class public Lcom/android/mms/transaction/DeviceFullReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceFullReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/DeviceFullReceiver$1;,
        Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;
    }
.end annotation


# static fields
.field private static s_listener:Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;-><init>(Lcom/android/mms/transaction/DeviceFullReceiver$1;)V

    sput-object v0, Lcom/android/mms/transaction/DeviceFullReceiver;->s_listener:Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "android.provider.Telephony.DEVICE_FULL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;

    invoke-direct {v0}, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;-><init>()V

    .line 66
    .local v0, attr:Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
    const v2, 0x7f090133

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->bodyStr:Ljava/lang/String;

    .line 67
    const v2, 0x7f090132

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->title:Ljava/lang/String;

    .line 68
    const v2, 0x104000a

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->positiveStr:Ljava/lang/String;

    .line 69
    iput-boolean v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->hasHyperlink:Z

    .line 70
    iput-boolean v4, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->cancelable:Z

    .line 73
    sget v2, Lcom/android/mms/util/ScheduledDialogActivity;->DEVICE_FULL_KEY:I

    iput v2, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    .line 76
    iget v2, v0, Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;->listenerKey:I

    sget-object v3, Lcom/android/mms/transaction/DeviceFullReceiver;->s_listener:Lcom/android/mms/transaction/DeviceFullReceiver$DialogListener;

    invoke-static {v2, v3}, Lcom/android/mms/util/ScheduledDialogActivity;->resgisterListener(ILcom/android/mms/util/ScheduledDialogActivity$buttonListener;)V

    .line 78
    invoke-static {p1, v0}, Lcom/android/mms/util/ScheduledDialogActivity;->createDlgIntent(Landroid/content/Context;Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;)Landroid/content/Intent;

    move-result-object v1

    .line 80
    .local v1, smsDialogIntent:Landroid/content/Intent;
    const/high16 v2, 0x1800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 81
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 84
    const/16 v2, 0x7d2

    invoke-static {p1, v2}, Lcom/android/mms/transaction/MessagingNotification;->alertWithoutNotificationIcon(Landroid/content/Context;I)V

    .line 87
    .end local v0           #attr:Lcom/android/mms/util/ScheduledDialogActivity$dialogAttr;
    .end local v1           #smsDialogIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
