.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioStreamType:I

.field private mContentInfo:Ljava/lang/CharSequence;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentText:Ljava/lang/CharSequence;

.field private mContentTitle:Ljava/lang/CharSequence;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mDefaults:I

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mFullScreenIntent:Landroid/app/PendingIntent;

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mLedArgb:I

.field private mLedOffMs:I

.field private mLedOnMs:I

.field private mNumber:I

.field private mProgress:I

.field private mProgressIndeterminate:Z

.field private mProgressMax:I

.field private mSmallIcon:I

.field private mSmallIconLevel:I

.field private mSound:Landroid/net/Uri;

.field private mTickerText:Ljava/lang/CharSequence;

.field private mTickerView:Landroid/widget/RemoteViews;

.field private mVibrate:[J

.field private mWhen:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/Notification$Builder;->mWhen:J

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    return-void
.end method

.method private makeContentView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x1090098

    :goto_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x1090099

    goto :goto_1
.end method

.method private makeRemoteViews(I)Landroid/widget/RemoteViews;
    .locals 10

    const v9, 0x102000d

    const v7, 0x1020006

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v8, 0x102031a

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6, p1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    invoke-virtual {v0, v7, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    if-eqz v6, :cond_0

    const v6, 0x1020016

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_0
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    if-eqz v6, :cond_1

    const v6, 0x1020046

    iget-object v7, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v2, 0x1

    :cond_1
    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x1

    :goto_1
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    if-nez v6, :cond_2

    iget-boolean v6, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    if-eqz v6, :cond_8

    :cond_2
    iget v6, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    iget v7, p0, Landroid/app/Notification$Builder;->mProgress:I

    iget-boolean v8, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    invoke-virtual {v0, v9, v6, v7, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-virtual {v0, v9, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_2
    iget-wide v6, p0, Landroid/app/Notification$Builder;->mWhen:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    const v6, 0x1020064

    const-string/jumbo v7, "setTime"

    iget-wide v8, p0, Landroid/app/Notification$Builder;->mWhen:J

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    :cond_3
    const v6, 0x1020319

    if-eqz v2, :cond_9

    :goto_3
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v0

    :cond_4
    invoke-virtual {v0, v7, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    :cond_5
    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-lez v6, :cond_7

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    if-le v6, v3, :cond_6

    iget-object v6, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_4
    invoke-virtual {v0, v8, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v6, p0, Landroid/app/Notification$Builder;->mNumber:I

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0, v8, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3
.end method

.method private makeTickerView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    const v0, 0x109009a

    :goto_1
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makeRemoteViews(I)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v0, 0x109009b

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFlag(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification$Builder;->mFlags:I

    goto :goto_0
.end method


# virtual methods
.method public getNotification()Landroid/app/Notification;
    .locals 3

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iget-wide v1, p0, Landroid/app/Notification$Builder;->mWhen:J

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget v1, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    iput v1, v0, Landroid/app/Notification;->iconLevel:I

    iget v1, p0, Landroid/app/Notification$Builder;->mNumber:I

    iput v1, v0, Landroid/app/Notification;->number:I

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->makeTickerView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v1, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    iput-object v1, v0, Landroid/app/Notification;->vibrate:[J

    iget v1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput v1, v0, Landroid/app/Notification;->ledARGB:I

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput v1, v0, Landroid/app/Notification;->ledOnMS:I

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    iput v1, v0, Landroid/app/Notification;->ledOffMS:I

    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget v1, p0, Landroid/app/Notification$Builder;->mFlags:I

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_0
    iget v1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    :cond_1
    return-object v0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentInfo:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mContentTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mDefaults:I

    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;

    const/16 v0, 0x80

    invoke-direct {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mLedArgb:I

    iput p2, p0, Landroid/app/Notification$Builder;->mLedOnMs:I

    iput p3, p0, Landroid/app/Notification$Builder;->mLedOffMs:I

    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mNumber:I

    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)V

    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mProgressMax:I

    iput p2, p0, Landroid/app/Notification$Builder;->mProgress:I

    iput-boolean p3, p0, Landroid/app/Notification$Builder;->mProgressIndeterminate:Z

    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    return-object p0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 0

    iput p1, p0, Landroid/app/Notification$Builder;->mSmallIcon:I

    iput p2, p0, Landroid/app/Notification$Builder;->mSmallIconLevel:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 1

    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mSound:Landroid/net/Uri;

    iput p2, p0, Landroid/app/Notification$Builder;->mAudioStreamType:I

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mTickerText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/app/Notification$Builder;->mTickerView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$Builder;->mVibrate:[J

    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/Notification$Builder;->mWhen:J

    return-object p0
.end method
