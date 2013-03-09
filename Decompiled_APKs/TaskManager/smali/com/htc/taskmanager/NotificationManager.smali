.class public Lcom/htc/taskmanager/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"


# static fields
.field private static final TASK_MANAGER_NOTIFICATION_ID:I = 0x1

.field private static sInstance:Lcom/htc/taskmanager/NotificationManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLowMemNotificationOn:Z

.field private mManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/taskmanager/NotificationManager;->sInstance:Lcom/htc/taskmanager/NotificationManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/taskmanager/NotificationManager;->mLowMemNotificationOn:Z

    .line 19
    iput-object v1, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    .line 20
    iput-object v1, p0, Lcom/htc/taskmanager/NotificationManager;->mManager:Landroid/app/NotificationManager;

    .line 30
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/htc/taskmanager/NotificationManager;->mManager:Landroid/app/NotificationManager;

    .line 36
    return-void
.end method

.method private doDismissNotification()V
    .locals 2

    .prologue
    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/htc/taskmanager/NotificationManager;->mManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doShowLowMemoryNotification()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 57
    const v2, 0x7f020006

    .line 58
    .local v2, icon:I
    iget-object v5, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    const v6, 0x7f06000e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, tickerText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    const v6, 0x7f06000f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, contentTitle:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    const v6, 0x7f060010

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/taskmanager/SettingsManager;->getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/SettingsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/taskmanager/SettingsManager;->getThresholdSettingValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, contentText:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/htc/taskmanager/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v4, v1, v0}, Lcom/htc/taskmanager/Customize;->getNotification(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Notification;

    move-result-object v3

    .line 68
    .local v3, notification:Landroid/app/Notification;
    if-eqz v3, :cond_0

    .line 70
    :try_start_0
    iget-object v5, p0, Lcom/htc/taskmanager/NotificationManager;->mManager:Landroid/app/NotificationManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/NotificationManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 23
    sget-object v0, Lcom/htc/taskmanager/NotificationManager;->sInstance:Lcom/htc/taskmanager/NotificationManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/taskmanager/NotificationManager;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/NotificationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/taskmanager/NotificationManager;->sInstance:Lcom/htc/taskmanager/NotificationManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/taskmanager/NotificationManager;->sInstance:Lcom/htc/taskmanager/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public dismissLowMemNotification()V
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/taskmanager/NotificationManager;->mLowMemNotificationOn:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/taskmanager/NotificationManager;->mLowMemNotificationOn:Z

    .line 50
    invoke-direct {p0}, Lcom/htc/taskmanager/NotificationManager;->doDismissNotification()V

    .line 54
    :cond_0
    return-void
.end method

.method public showLowMemNotification()V
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/htc/taskmanager/NotificationManager;->mLowMemNotificationOn:Z

    if-eqz v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/taskmanager/NotificationManager;->mLowMemNotificationOn:Z

    .line 43
    invoke-direct {p0}, Lcom/htc/taskmanager/NotificationManager;->doShowLowMemoryNotification()V

    goto :goto_0
.end method
