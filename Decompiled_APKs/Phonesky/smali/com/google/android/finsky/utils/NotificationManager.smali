.class public Lcom/google/android/finsky/utils/NotificationManager;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Lcom/google/android/finsky/utils/Notifier;


# static fields
.field private static final SUPPORTS_RICH_NOTIFICATIONS:Z

.field private static final UNKNOWN_PACKAGE_ID:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/finsky/utils/NotificationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string v0, "unknown package"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sput v0, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method public static createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    const-class v1, Lcom/google/android/finsky/activities/MainActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 461
    invoke-static {p0, p4}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 462
    const-string v1, "error_doc_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 465
    const-string v1, "error_title"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 468
    const-string v1, "error_html_message"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :cond_2
    return-object v0
.end method

.method private declared-synchronized drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "drawable"
    .parameter "loggingId"

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-object v10, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 201
    .local v6, res:Landroid/content/res/Resources;
    const v10, 0x1050005

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 202
    .local v2, maxIconWidth:I
    const v10, 0x1050006

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 204
    .local v1, maxIconHeight:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 205
    .local v4, originalWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 207
    .local v3, originalHeight:I
    if-gt v4, v2, :cond_0

    if-gt v3, v1, :cond_0

    instance-of v10, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_0

    .line 209
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 229
    :goto_0
    monitor-exit p0

    return-object v7

    .line 212
    .restart local p1
    :cond_0
    :try_start_1
    const-string v10, "Resource for %s is %s of size %d*%d"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p2, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    int-to-float v10, v2

    int-to-float v11, v4

    div-float/2addr v10, v11

    int-to-float v11, v1

    int-to-float v12, v3

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 219
    .local v5, ratio:F
    const/high16 v10, 0x3f80

    invoke-static {v10, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 220
    int-to-float v10, v4

    mul-float/2addr v10, v5

    float-to-int v9, v10

    .line 221
    .local v9, scaledWidth:I
    int-to-float v10, v3

    mul-float/2addr v10, v5

    float-to-int v8, v10

    .line 222
    .local v8, scaledHeight:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 225
    .local v7, result:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 226
    .local v0, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v9, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 227
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v1           #maxIconHeight:I
    .end local v2           #maxIconWidth:I
    .end local v3           #originalHeight:I
    .end local v4           #originalWidth:I
    .end local v5           #ratio:F
    .end local v6           #res:Landroid/content/res/Resources;
    .end local v7           #result:Landroid/graphics/Bitmap;
    .end local v8           #scaledHeight:I
    .end local v9           #scaledWidth:I
    .end local p1
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10
.end method

.method private showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"

    .prologue
    .line 255
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 257
    return-void
.end method

.method private showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "returnCode"

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4}, Lcom/google/android/finsky/utils/NotificationListener;->showAppNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v2, v2, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 279
    .local v6, detailsIntent:Landroid/content/Intent;
    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 280
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 282
    .end local v6           #detailsIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "packageName"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "returnCode"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showAppAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p3, p4, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 267
    .local v6, detailsIntent:Landroid/content/Intent;
    const-string v0, "error_return_code"

    invoke-virtual {v6, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 268
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 270
    .end local v6           #detailsIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "docId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "message"
    .parameter "icon"
    .parameter "detailsUrl"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    invoke-interface {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationListener;->showDocAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p3, p4, p6}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 290
    :cond_1
    return-void
.end method

.method private showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;)V
    .locals 10
    .parameter "notificationId"
    .parameter "tickerText"
    .parameter "contentTitle"
    .parameter "contentText"
    .parameter "extraText"
    .parameter "icon"
    .parameter "largeBitmap"
    .parameter "extraCount"
    .parameter "clickIntent"

    .prologue
    .line 402
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v1, builder:Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 404
    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 405
    invoke-virtual {v1, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 406
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 407
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {v5, p5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 409
    :cond_0
    move/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 410
    if-eqz p7, :cond_1

    .line 411
    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 413
    :cond_1
    if-lez p8, :cond_2

    .line 414
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 416
    :cond_2
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 418
    if-nez p1, :cond_4

    sget v3, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    .line 420
    .local v3, notificationCode:I
    :goto_0
    iget-object v5, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v6, 0x5000

    move-object/from16 v0, p9

    invoke-static {v5, v3, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 423
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 425
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 427
    iget-object v5, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 430
    .local v2, mgr:Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 432
    sget-object v5, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v5}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 433
    const-string v5, "Showing notification: [ID=%s, Title=%s, Message=%s, returnCode=%d]"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    const-string v8, "error_return_code"

    const/4 v9, -0x1

    move-object/from16 v0, p9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_3
    return-void

    .line 418
    .end local v2           #mgr:Landroid/app/NotificationManager;
    .end local v3           #notificationCode:I
    .end local v4           #pendingIntent:Landroid/app/PendingIntent;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public hideAllMessagesForAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"

    .prologue
    .line 450
    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 452
    .local v0, mgr:Landroid/app/NotificationManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, notificationId:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 454
    return-void
.end method

.method public hideAllMessagesForPackage(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 445
    .local v0, mgr:Landroid/app/NotificationManager;
    if-nez p1, :cond_0

    sget v1, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 446
    return-void

    .line 445
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public setNotificationListener(Lcom/google/android/finsky/utils/NotificationListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mListener:Lcom/google/android/finsky/utils/NotificationListener;

    .line 59
    return-void
.end method

.method public showDownloadErrorMessage(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 9
    .parameter "title"
    .parameter "packageName"
    .parameter "errorCode"
    .parameter "serverMessage"
    .parameter "isUpdate"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 111
    if-nez p5, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a1

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, barText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a2

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, titleText:Ljava/lang/String;
    if-eqz p4, :cond_0

    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, messageText:Ljava/lang/String;
    :goto_0
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    return-void

    .line 119
    .end local v4           #messageText:Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a3

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_0

    .line 123
    .end local v2           #barText:Ljava/lang/String;
    .end local v3           #titleText:Ljava/lang/String;
    .end local v4           #messageText:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a5

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 124
    .restart local v2       #barText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .restart local v3       #titleText:Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 126
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a8

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p4, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v4           #messageText:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a7

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #messageText:Ljava/lang/String;
    goto :goto_0
.end method

.method public showExternalStorageMissing(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 98
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070098

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070099

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009a

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    return-void
.end method

.method public showInstallationFailureMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "title"
    .parameter "packageName"
    .parameter "message"
    .parameter "returnCode"

    .prologue
    .line 235
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOrAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 237
    return-void
.end method

.method public showInstallingMessage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .parameter "title"
    .parameter "packageName"
    .parameter "isUpdate"

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_0

    const v0, 0x7f0700ab

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, tickerText:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p3, :cond_1

    const v0, 0x7f0700ac

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 147
    .local v4, contentText:Ljava/lang/String;
    const v6, 0x1080081

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v5, v5, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    move-object v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;)V

    .line 151
    return-void

    .line 140
    .end local v2           #tickerText:Ljava/lang/String;
    .end local v4           #contentText:Ljava/lang/String;
    :cond_0
    const v0, 0x7f0700a9

    goto :goto_0

    .line 143
    .restart local v2       #tickerText:Ljava/lang/String;
    :cond_1
    const v0, 0x7f0700aa

    goto :goto_1
.end method

.method public showInternalStorageFull(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 64
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070092

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070093

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f070094

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 89
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009b

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v2, 0x7f07009c

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x7f07009d

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/finsky/utils/NotificationManager;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 294
    const v5, 0x108008a

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, p1, p3, v1}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, p0

    move-object v2, p1

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V

    .line 296
    return-void
.end method

.method public showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009e

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f07009f

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700a0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/utils/NotificationManager;->showAppMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 84
    return-void
.end method

.method public showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;)V
    .locals 11
    .parameter "notificationId"
    .parameter "statusBarText"
    .parameter "title"
    .parameter "htmlMessage"
    .parameter "icon"
    .parameter "clickIntent"

    .prologue
    .line 302
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, message:Ljava/lang/String;
    if-nez p1, :cond_2

    sget v4, Lcom/google/android/finsky/utils/NotificationManager;->UNKNOWN_PACKAGE_ID:I

    .line 305
    .local v4, notificationCode:I
    :goto_0
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/high16 v7, 0x5000

    move-object/from16 v0, p6

    invoke-static {v6, v4, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 309
    .local v5, pendingIntent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move/from16 v0, p5

    invoke-direct {v3, v0, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 311
    .local v3, notification:Landroid/app/Notification;
    iget v6, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v3, Landroid/app/Notification;->flags:I

    .line 312
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, p3, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 313
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 315
    .local v2, mgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6, p3, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 317
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 318
    const-string v6, "updates"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    const/4 v6, -0x1

    iput v6, v3, Landroid/app/Notification;->priority:I

    .line 323
    :cond_0
    invoke-virtual {v2, v4, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 324
    sget-object v6, Lcom/google/android/finsky/config/G;->debugOptionsEnabled:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v6}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const-string v6, "Showing notification: [ID=%s, Title=%s, Message=%s, returnCode=%d]"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p3, v7, v8

    const/4 v8, 0x2

    aput-object v1, v7, v8

    const/4 v8, 0x3

    const-string v9, "error_return_code"

    const/4 v10, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    :cond_1
    return-void

    .line 303
    .end local v2           #mgr:Landroid/app/NotificationManager;
    .end local v3           #notification:Landroid/app/Notification;
    .end local v4           #notificationCode:I
    .end local v5           #pendingIntent:Landroid/app/PendingIntent;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    goto :goto_0
.end method

.method public showPurchaseErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "shortMessage"
    .parameter "message"
    .parameter "docId"
    .parameter "detailsUrl"

    .prologue
    .line 242
    const v5, 0x108008a

    move-object v0, p0

    move-object v1, p4

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showDocNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method public showSingleUpdateAvailableMessage(Lcom/google/android/finsky/api/model/Document;)V
    .locals 12
    .parameter "appDoc"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    .line 385
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 386
    .local v10, res:Landroid/content/res/Resources;
    const v0, 0x7f070197

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    .local v2, tickerText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 388
    .local v3, contentTitle:Ljava/lang/String;
    const v0, 0x7f0d0001

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v8

    invoke-virtual {v10, v0, v11, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, contentText:Ljava/lang/String;
    const v6, 0x7f020104

    .line 392
    .local v6, iconId:I
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/IntentUtils;->createViewDocumentUrlIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 395
    .local v9, detailsIntent:Landroid/content/Intent;
    const-string v1, "updates"

    move-object v0, p0

    move-object v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;)V

    .line 397
    return-void
.end method

.method public showSubscriptionsWarningMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "title"
    .parameter "packageName"
    .parameter "message"

    .prologue
    .line 248
    const v5, 0x108008a

    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/finsky/utils/NotificationManager;->showAppNotificationOnly(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 251
    return-void
.end method

.method public showSuccessfulInstallMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "title"
    .parameter "packageName"
    .parameter "continueUrl"
    .parameter "isUpdate"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_3

    const v0, 0x7f0700b0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, tickerText:Ljava/lang/String;
    iget-object v1, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    if-eqz p4, :cond_4

    const v0, 0x7f0700b1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, contentText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 168
    .local v9, intent:Landroid/content/Intent;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0700af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-static {p2, p3}, Lcom/google/android/finsky/utils/IntentUtils;->createContinueUrlIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 174
    :cond_0
    if-nez v9, :cond_1

    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/google/android/finsky/api/DfeUtils;->createDetailsUrlFromId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v1, v3, v5}, Lcom/google/android/finsky/utils/NotificationManager;->createDefaultClickIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 181
    :cond_1
    const/4 v7, 0x0

    .line 182
    .local v7, largeBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 186
    .local v11, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v11, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 187
    .local v10, appIconDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_2

    .line 188
    invoke-direct {p0, v10, p2}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 195
    .end local v10           #appIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_2
    const/4 v5, 0x0

    const v6, 0x7f020104

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;)V

    .line 197
    return-void

    .line 159
    .end local v2           #tickerText:Ljava/lang/String;
    .end local v4           #contentText:Ljava/lang/String;
    .end local v7           #largeBitmap:Landroid/graphics/Bitmap;
    .end local v9           #intent:Landroid/content/Intent;
    :cond_3
    const v0, 0x7f0700ad

    goto :goto_0

    .line 162
    .restart local v2       #tickerText:Ljava/lang/String;
    :cond_4
    const v0, 0x7f0700ae

    goto :goto_1

    .line 190
    .restart local v4       #contentText:Ljava/lang/String;
    .restart local v7       #largeBitmap:Landroid/graphics/Bitmap;
    .restart local v9       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public showUpdatesAvailableMessage(Ljava/util/List;I)V
    .locals 14
    .parameter
    .parameter "totalUpdateCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, appDocs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 335
    .local v12, res:Landroid/content/res/Resources;
    const v0, 0x7f070197

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, tickerText:Ljava/lang/String;
    const v0, 0x7f070198

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, contentTitle:Ljava/lang/String;
    const v0, 0x7f0d0001

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v8

    invoke-virtual {v12, v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, contentText:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/finsky/activities/MainActivity;->getMyDownloadsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v9

    .line 341
    .local v9, myDownloadsIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 342
    .local v5, extraText:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 364
    const v1, 0x7f070288

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v0

    invoke-virtual {v12, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 371
    :goto_0
    const/4 v7, 0x0

    .line 372
    .local v7, largeBitmap:Landroid/graphics/Bitmap;
    sget-boolean v0, Lcom/google/android/finsky/utils/NotificationManager;->SUPPORTS_RICH_NOTIFICATIONS:Z

    if-eqz v0, :cond_0

    .line 373
    const v10, 0x7f020105

    .line 374
    .local v10, largeBitmapResourceId:I
    iget-object v0, p0, Lcom/google/android/finsky/utils/NotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 375
    .local v11, largeDrawable:Landroid/graphics/drawable/Drawable;
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v11, v0}, Lcom/google/android/finsky/utils/NotificationManager;->drawableToBitmap(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 378
    .end local v10           #largeBitmapResourceId:I
    .end local v11           #largeDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string v1, "updates"

    const v6, 0x7f020104

    move-object v0, p0

    move/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/android/finsky/utils/NotificationManager;->showNewNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;ILandroid/content/Intent;)V

    .line 381
    return-void

    .line 344
    .end local v7           #largeBitmap:Landroid/graphics/Bitmap;
    :pswitch_0
    const v1, 0x7f070284

    const/4 v0, 0x2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {v12, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 346
    goto :goto_0

    .line 348
    :pswitch_1
    const v1, 0x7f070285

    const/4 v0, 0x3

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {v12, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 351
    goto/16 :goto_0

    .line 353
    :pswitch_2
    const v1, 0x7f070286

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {v12, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 356
    goto/16 :goto_0

    .line 358
    :pswitch_3
    const v1, 0x7f070287

    const/4 v0, 0x5

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x3

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v8, 0x4

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-virtual {v12, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 362
    goto/16 :goto_0

    .line 342
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
