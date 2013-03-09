.class public Lcom/android/phone/VvmBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VvmBroadcastReceiver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VvmBroadcastReceiver"

.field public static final mIsSupportToggleMwi:Z

.field private static mIsVvmOn:Z

.field private static mMwiNotification:Landroid/app/Notification;

.field public static final mSyncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-boolean v0, Lcom/android/phone/VvmBroadcastReceiver;->mIsVvmOn:Z

    .line 36
    const/4 v1, 0x0

    sput-object v1, Lcom/android/phone/VvmBroadcastReceiver;->mMwiNotification:Landroid/app/Notification;

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    .line 39
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static IsVvmOn()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/VvmBroadcastReceiver;->mIsVvmOn:Z

    return v0
.end method

.method public static SetMwiNotification(Landroid/app/Notification;)V
    .locals 0
    .parameter "notf"

    .prologue
    .line 45
    sput-object p0, Lcom/android/phone/VvmBroadcastReceiver;->mMwiNotification:Landroid/app/Notification;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 49
    sget-boolean v2, Lcom/android/phone/VvmBroadcastReceiver;->mIsSupportToggleMwi:Z

    if-nez v2, :cond_0

    .line 50
    const-string v2, "VvmBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " occurred in wrong device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "intent.action.vvmstatus"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 56
    const-string v2, "vvmActiveStatus"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, status:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 58
    const-string v2, "VvmBroadcastReceiver"

    const-string v3, "vvmActiveStatus is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_1
    sget-object v3, Lcom/android/phone/VvmBroadcastReceiver;->mSyncObj:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    sget-boolean v0, Lcom/android/phone/VvmBroadcastReceiver;->mIsVvmOn:Z

    .line 65
    .local v0, OrgVvmStatus:Z
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/phone/VvmBroadcastReceiver;->mIsVvmOn:Z

    .line 68
    if-nez v0, :cond_2

    sget-object v2, Lcom/android/phone/VvmBroadcastReceiver;->mMwiNotification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    .line 69
    const-string v2, "VvmBroadcastReceiver"

    const-string v4, "vvmActiveStatus is true, cancel MWI notification."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 81
    :cond_2
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0           #OrgVvmStatus:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 74
    .restart local v0       #OrgVvmStatus:Z
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    sput-boolean v2, Lcom/android/phone/VvmBroadcastReceiver;->mIsVvmOn:Z

    .line 76
    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/phone/VvmBroadcastReceiver;->mMwiNotification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    .line 77
    const-string v2, "VvmBroadcastReceiver"

    const-string v4, "vvmActiveStatus is false, display MWI notification."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v4, 0x5

    sget-object v5, Lcom/android/phone/VvmBroadcastReceiver;->mMwiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 84
    .end local v0           #OrgVvmStatus:Z
    .end local v1           #status:Ljava/lang/String;
    :cond_4
    const-string v2, "VvmBroadcastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
