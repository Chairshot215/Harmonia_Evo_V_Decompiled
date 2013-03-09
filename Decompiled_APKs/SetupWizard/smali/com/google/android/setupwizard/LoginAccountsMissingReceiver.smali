.class public Lcom/google/android/setupwizard/LoginAccountsMissingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginAccountsMissingReceiver.java"


# static fields
.field private static SETUP_WIZARD_ACTIVITY:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/google/android/setupwizard/SetupWizardActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final LDEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/google/android/setupwizard/SetupWizardActivity;

    sput-object v0, Lcom/google/android/setupwizard/LoginAccountsMissingReceiver;->SETUP_WIZARD_ACTIVITY:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupwizard/LoginAccountsMissingReceiver;->LDEBUG:Z

    return-void
.end method

.method private doNotification(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/setupwizard/SetupWizardTestActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    new-instance v1, Landroid/app/Notification;

    const v2, 0x108008a

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 86
    const/16 v2, 0x30

    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 87
    const v2, 0x7f090055

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 88
    const v3, 0x7f090056

    invoke-virtual {p1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 89
    const/high16 v4, 0x1000

    invoke-static {p1, v6, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 91
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 93
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 48
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/ComponentName;

    sget-object v7, Lcom/google/android/setupwizard/LoginAccountsMissingReceiver;->SETUP_WIZARD_ACTIVITY:Ljava/lang/Class;

    invoke-direct {v3, p1, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v3, name:Landroid/content/ComponentName;
    const-string v7, "ro.setupwizard.mode"

    sget-object v8, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->REQUIRED:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-virtual {v8}, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->name()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, mode:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "device_provisioned"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    move v1, v5

    .line 56
    .local v1, firstBoot:Z
    :goto_0
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-eq v7, v5, :cond_2

    move v0, v5

    .line 60
    .local v0, componentDisabled:Z
    :goto_1
    if-eqz v2, :cond_3

    sget-object v5, Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;->REQUIRED:Lcom/google/android/setupwizard/BaseActivity$ProvisioningMode;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 62
    const-string v5, "SetupWizard"

    const-string v6, "Ignoring LOGIN_ACCOUNTS_MISSING because SetupWizard isn\'t required"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    :goto_2
    return-void

    .end local v0           #componentDisabled:Z
    .end local v1           #firstBoot:Z
    :cond_1
    move v1, v6

    .line 53
    goto :goto_0

    .restart local v1       #firstBoot:Z
    :cond_2
    move v0, v6

    .line 56
    goto :goto_1

    .line 64
    .restart local v0       #componentDisabled:Z
    :cond_3
    if-eqz v1, :cond_4

    .line 65
    const-string v5, "SetupWizard"

    const-string v6, "Ignoring LOGIN_ACCOUNTS_MISSING because this is first boot."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 66
    :cond_4
    if-eqz v0, :cond_5

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    const-string v5, "SetupWizard"

    const-string v6, "Sending notification to re-run SetupWizard"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/setupwizard/LoginAccountsMissingReceiver;->doNotification(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 73
    :catch_0
    move-exception v5

    goto :goto_2

    .line 77
    :cond_5
    const-string v5, "SetupWizard"

    const-string v6, "Not re-enabling SetupWizard because component already enabled"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
