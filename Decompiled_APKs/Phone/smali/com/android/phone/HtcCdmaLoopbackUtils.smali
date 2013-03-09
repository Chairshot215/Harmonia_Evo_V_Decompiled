.class public Lcom/android/phone/HtcCdmaLoopbackUtils;
.super Ljava/lang/Object;
.source "HtcCdmaLoopbackUtils.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_LOOPBACK_MODE_TIMER:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "HtcCdmaLoopbackUtils"


# instance fields
.field inLoopbackMode:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoopbackDisplayInterval:J

.field private mLoopbackDisplayingTime:J

.field private mLoopbackStartTime:J

.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayInterval:J

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mNotificationManager:Landroid/app/NotificationManager;

    .line 123
    new-instance v0, Lcom/android/phone/HtcCdmaLoopbackUtils$1;

    invoke-direct {v0, p0}, Lcom/android/phone/HtcCdmaLoopbackUtils$1;-><init>(Lcom/android/phone/HtcCdmaLoopbackUtils;)V

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mHandler:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    .line 30
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mNotificationManager:Landroid/app/NotificationManager;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/HtcCdmaLoopbackUtils;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayInterval:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/phone/HtcCdmaLoopbackUtils;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    return-wide v0
.end method

.method static synthetic access$114(Lcom/android/phone/HtcCdmaLoopbackUtils;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/phone/HtcCdmaLoopbackUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->triggerLoopbackModeTimer()V

    return-void
.end method

.method private clearLoopbackStatusBar()V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    .line 112
    .local v0, mMgr:Lcom/android/phone/NotificationMgr;
    if-eqz v0, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mNotificationManager:Landroid/app/NotificationManager;

    const v2, 0x7f0e00e7

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 115
    :cond_0
    return-void
.end method

.method public static createLoopbackScreenIntent(Z)Landroid/content/Intent;
    .locals 3
    .parameter "bfinish"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1084

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    const-string v1, "com.android.phone"

    const-class v2, Lcom/android/phone/HtcCdmaLoopbackScreen;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v1, "finish"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 70
    return-object v0
.end method

.method private setupLoopbackStatusBar()V
    .locals 11

    .prologue
    const v10, 0x7f0e00e7

    const/4 v9, 0x0

    .line 84
    const v6, 0x1080084

    .line 86
    .local v6, mInCallResId:I
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030046

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 88
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v1, 0x7f0800b1

    invoke-virtual {v0, v1, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 89
    const v1, 0x7f080113

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackStartTime:J

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    const v5, 0x7f0e03a9

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setChronometer(IJLjava/lang/String;Z)V

    .line 93
    const v1, 0x7f080114

    iget-object v2, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 95
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v7

    .line 96
    .local v7, mMgr:Lcom/android/phone/NotificationMgr;
    if-eqz v7, :cond_0

    .line 97
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 98
    .local v8, notification:Landroid/app/Notification;
    iput v6, v8, Landroid/app/Notification;->icon:I

    .line 99
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/phone/HtcCdmaLoopbackUtils;->createLoopbackScreenIntent(Z)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 101
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 102
    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 104
    iget-object v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 106
    .end local v8           #notification:Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method private startupLoopbackScreen()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackUtils;->createLoopbackScreenIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method private stopLoopbackScreen()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/phone/HtcCdmaLoopbackUtils;->createLoopbackScreenIntent(Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 80
    return-void
.end method

.method private triggerLoopbackModeTimer()V
    .locals 6

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    iget-wide v4, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayInterval:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 121
    return-void
.end method


# virtual methods
.method public handleLoopbackMode(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "ar"

    .prologue
    const/4 v2, 0x0

    .line 34
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "HtcCdmaLoopbackUtils"

    const-string v2, "Exception Loopback mode:"

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    .line 40
    .local v0, loopback:[I
    if-nez v0, :cond_1

    .line 41
    const-string v1, "HtcCdmaLoopbackUtils"

    const-string v2, "Loopback without parameter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    aget v1, v0, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->inLoopbackMode:Z

    .line 48
    iget-boolean v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->inLoopbackMode:Z

    if-eqz v1, :cond_3

    .line 49
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->startupLoopbackScreen()V

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackStartTime:J

    .line 51
    iget-wide v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackStartTime:J

    iput-wide v1, p0, Lcom/android/phone/HtcCdmaLoopbackUtils;->mLoopbackDisplayingTime:J

    .line 52
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->triggerLoopbackModeTimer()V

    .line 53
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->setupLoopbackStatusBar()V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 45
    goto :goto_1

    .line 56
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->clearLoopbackStatusBar()V

    .line 58
    invoke-direct {p0}, Lcom/android/phone/HtcCdmaLoopbackUtils;->stopLoopbackScreen()V

    goto :goto_0
.end method
