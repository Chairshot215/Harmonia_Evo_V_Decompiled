.class public Lcom/google/android/apps/uploader/UploadsNotificationManager;
.super Ljava/lang/Object;
.source "UploadsNotificationManager.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x1


# instance fields
.field private context:Landroid/content/Context;

.field private managerIntent:Landroid/app/PendingIntent;

.field private notificationManager:Landroid/app/NotificationManager;

.field private onTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    .line 38
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 40
    return-void
.end method

.method private showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->managerIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    const-class v2, Lcom/google/android/apps/uploader/ManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x800

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->managerIntent:Landroid/app/PendingIntent;

    .line 85
    :cond_0
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 87
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->managerIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 88
    if-eqz p5, :cond_1

    .line 89
    const/16 v1, 0x22

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->clear()V

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 97
    return-void

    .line 92
    :cond_1
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 101
    return-void
.end method

.method public setOnTop(Z)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->onTop:Z

    .line 105
    return-void
.end method

.method public showFinished()V
    .locals 6

    .prologue
    const v4, 0x7f060037

    .line 56
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->onTop:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->clear()V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    const v1, 0x7f02000f

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public showPaused()V
    .locals 6

    .prologue
    const v4, 0x7f060038

    .line 68
    const v1, 0x7f020010

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    const v3, 0x7f060036

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public showUploadState(Lcom/google/android/apps/uploader/UploadInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 43
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getState()Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadsNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->toStringId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 46
    const v1, 0x1080088

    .line 47
    sget-object v3, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->FAILED:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_TO_RETRY:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcom/google/android/apps/uploader/UploadInfo$UploadState;->WAITING_FOR_WIFI:Lcom/google/android/apps/uploader/UploadInfo$UploadState;

    if-ne v0, v3, :cond_1

    .line 50
    :cond_0
    const v0, 0x7f02000e

    move v1, v0

    .line 52
    :cond_1
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/uploader/UploadsNotificationManager;->showNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 53
    return-void
.end method
