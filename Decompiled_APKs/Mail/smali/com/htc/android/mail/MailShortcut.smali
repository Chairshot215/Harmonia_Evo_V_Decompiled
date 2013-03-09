.class public Lcom/htc/android/mail/MailShortcut;
.super Landroid/app/Activity;
.source "MailShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final DLG_SHOW_ACCOUNT_LIST:I = 0x0

.field private static final REQUEST_CODE_ACCOUNT_LIST_SHORTCUT:I = 0x1

.field private static final REQUEST_CODE_SHORTCUT_CREATE_ACCOUNT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MailShortcut"

.field private static bNewStyle:Z

.field private static mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

.field private static sFactory:Lcom/htc/android/mail/util/MailIconGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    .line 87
    new-instance v0, Lcom/htc/android/mail/util/MailIconGenerator;

    invoke-direct {v0}, Lcom/htc/android/mail/util/MailIconGenerator;-><init>()V

    sput-object v0, Lcom/htc/android/mail/MailShortcut;->sFactory:Lcom/htc/android/mail/util/MailIconGenerator;

    .line 88
    new-instance v0, Lcom/htc/android/mail/util/SparseLongArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongArray;-><init>()V

    sput-object v0, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/android/mail/MailShortcut;->bNewStyle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 501
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcut(Landroid/content/Context;Z)V

    return-void
.end method

.method public static declared-synchronized clearMailShortcut(Landroid/content/Context;J)V
    .locals 9
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 337
    const-class v8, Lcom/htc/android/mail/MailShortcut;

    monitor-enter v8

    :try_start_0
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearMailShortcut>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcut(Landroid/content/Context;Z)V

    .line 341
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 342
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailShortcut"

    const-string v2, "accountId return>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_1
    :goto_0
    monitor-exit v8

    return-void

    .line 346
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/htc/android/mail/MailShortcut;->bNewStyle:Z

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, uriStr:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v4, p1

    invoke-static/range {v0 .. v7}, Lcom/htc/android/mail/MailShortcut;->generateIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 337
    .end local v1           #uriStr:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static clearMailShortcutInLine(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 537
    sget-boolean v1, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearMailShortcutInLine: context>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 539
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/MailShortcut$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/android/mail/MailShortcut$4;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 544
    return-void
.end method

.method private static genPriority(J)I
    .locals 3
    .parameter "accountId"

    .prologue
    .line 431
    const/4 v0, -0x1

    .line 433
    .local v0, priority:I
    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-nez v1, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0

    .line 435
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v1

    cmp-long v1, p0, v1

    if-nez v1, :cond_1

    .line 436
    const/4 v0, 0x1

    goto :goto_0

    .line 438
    :cond_1
    long-to-int v1, p0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method private static generateBitmap(Landroid/content/Context;I)Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    .locals 11
    .parameter "context"
    .parameter "newMail"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 475
    const/4 v8, 0x0

    .line 477
    .local v8, sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    const v7, 0x7f020026

    .line 481
    .local v7, iconResId:I
    if-lez p1, :cond_1

    .line 482
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    const-string v1, "bubble text>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    sget-object v0, Lcom/htc/android/mail/MailShortcut;->sFactory:Lcom/htc/android/mail/util/MailIconGenerator;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/android/mail/MailShortcut;->getBubbleDrawableId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/MailIconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 487
    .local v6, bmp:Landroid/graphics/Bitmap;
    new-instance v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;

    .end local v8           #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    invoke-direct {v8, v10}, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;-><init>(Lcom/htc/android/mail/MailShortcut$1;)V

    .line 488
    .restart local v8       #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    iput-object v6, v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 489
    iput-boolean v9, v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->canRecycled:Z

    .line 498
    :goto_0
    return-object v8

    .line 491
    .end local v6           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MailShortcut"

    const-string v1, "default icon>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 494
    .restart local v6       #bmp:Landroid/graphics/Bitmap;
    new-instance v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;

    .end local v8           #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    invoke-direct {v8, v10}, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;-><init>(Lcom/htc/android/mail/MailShortcut$1;)V

    .line 495
    .restart local v8       #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    iput-object v6, v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->bmp:Landroid/graphics/Bitmap;

    .line 496
    iput-boolean v9, v8, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->canRecycled:Z

    goto :goto_0
.end method

.method private static generateIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JIZ)V
    .locals 12
    .parameter "context"
    .parameter "uriStr"
    .parameter "intent"
    .parameter "title"
    .parameter "accountId"
    .parameter "newMail"
    .parameter "checkCache"

    .prologue
    .line 395
    if-eqz p7, :cond_3

    .line 396
    const/4 v11, 0x0

    .line 398
    .local v11, unreadInCache:I
    sget-object v3, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    monitor-enter v3

    .line 399
    :try_start_0
    sget-boolean v2, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "MailShortcut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUnreadList>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    sget-object v2, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    const-wide/16 v4, -0x1

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/htc/android/mail/util/SparseLongArray;->get(JJ)J

    move-result-wide v4

    long-to-int v11, v4

    .line 401
    monitor-exit v3

    .line 403
    move/from16 v0, p6

    if-eq v11, v0, :cond_1

    const/16 v2, 0x63

    if-le v11, v2, :cond_2

    const/16 v2, 0x63

    move/from16 v0, p6

    if-le v0, v2, :cond_2

    .line 424
    .end local v11           #unreadInCache:I
    :cond_1
    :goto_0
    return-void

    .line 401
    .restart local v11       #unreadInCache:I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 405
    :cond_2
    sget-object v3, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    monitor-enter v3

    .line 406
    :try_start_1
    sget-object v2, Lcom/htc/android/mail/MailShortcut;->mUnreadList:Lcom/htc/android/mail/util/SparseLongArray;

    move/from16 v0, p6

    int-to-long v4, v0

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/htc/android/mail/util/SparseLongArray;->put(JJ)V

    .line 407
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 410
    .end local v11           #unreadInCache:I
    :cond_3
    move/from16 v0, p6

    invoke-static {p0, v0}, Lcom/htc/android/mail/MailShortcut;->generateBitmap(Landroid/content/Context;I)Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;

    move-result-object v10

    .line 412
    .local v10, sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    if-eqz v10, :cond_5

    iget-object v2, v10, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->bmp:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 413
    iget-object v3, v10, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->bmp:Landroid/graphics/Bitmap;

    const-string v6, "intent like ?"

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->bNewStyle:Z

    invoke-static/range {p4 .. p5}, Lcom/htc/android/mail/MailShortcut;->genPriority(J)I

    move-result v9

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v9}, Lcom/htc/home/RosieItemUtility;->updateIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)V

    .line 414
    iget-boolean v2, v10, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->canRecycled:Z

    if-eqz v2, :cond_4

    .line 415
    iget-object v2, v10, Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 421
    :cond_4
    :goto_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    .line 422
    sget-boolean v2, Lcom/htc/android/mail/MailShortcut;->bNewStyle:Z

    move/from16 v0, p6

    invoke-static {p0, v0, v2}, Lcom/htc/android/mail/MailEventBroadcaster;->sendUnreadMailCount(Landroid/content/Context;IZ)V

    goto :goto_0

    .line 407
    .end local v10           #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    .restart local v11       #unreadInCache:I
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 418
    .end local v11           #unreadInCache:I
    .restart local v10       #sbmp:Lcom/htc/android/mail/MailShortcut$ShortcutBitmap;
    :cond_5
    const-string v2, "MailShortcut"

    const-string v3, "bmp null>"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static getBubbleDrawableId(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 450
    const-string v1, ""

    .line 451
    .local v1, resName:Ljava/lang/String;
    const/4 v0, -0x1

    .line 461
    .local v0, resId:I
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 462
    const-string v1, "common_notification_new_on"

    .line 463
    const v0, 0x20805ac

    .line 470
    :cond_0
    :goto_0
    invoke-static {p0, v1, v0}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 464
    :cond_1
    sget v2, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 465
    const-string v1, "common_notification_on"

    .line 466
    const v0, 0x208006a

    goto :goto_0
.end method

.method private returnToShortCut(JLjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "accouontId"
    .parameter "accountName"

    .prologue
    const v4, 0x7f020026

    const/4 v3, 0x1

    .line 137
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "returnToShortCut1>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_0
    sget-object v0, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 141
    .local v7, accountUri:Landroid/net/Uri;
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 142
    .local v11, shortcutIntent:Landroid/content/Intent;
    const-string v0, "vnd.android.cursor.dir/mail_tab"

    invoke-virtual {v11, v7, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v0, 0x400

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    const-string v0, "shortcut"

    invoke-virtual {v11, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 148
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 151
    const-string v0, "android.intent.extra.shortcut.NAME"

    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/MailShortcut;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 187
    :cond_1
    :try_start_0
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v1, 0x7f020026

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_0
    return-object v10

    .line 153
    :cond_2
    const-string v0, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v10, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v6

    .line 155
    .local v6, account:Lcom/htc/android/mail/Account;
    const/4 v5, 0x0

    .line 156
    .local v5, unread:I
    if-eqz v6, :cond_3

    .line 164
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 165
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/htc/android/mail/MailCommon;->getUnreadNumberFromNotification(Landroid/content/Context;J)I

    move-result v5

    .line 170
    :cond_3
    :goto_1
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "account>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",new mail>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_4
    if-lez v5, :cond_1

    .line 176
    sget-object v0, Lcom/htc/android/mail/MailShortcut;->sFactory:Lcom/htc/android/mail/util/MailIconGenerator;

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/MailShortcut;->getBubbleDrawableId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/util/MailIconGenerator;->MailcreateBubbleTextIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 180
    .local v8, bmp:Landroid/graphics/Bitmap;
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 166
    .end local v8           #bmp:Landroid/graphics/Bitmap;
    :cond_5
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    if-ne v0, v3, :cond_3

    .line 167
    invoke-virtual {v6}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v0

    const-wide v2, 0x7ffffffffffffffaL

    invoke-static {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJ)I

    move-result v5

    goto :goto_1

    .line 189
    .end local v5           #unread:I
    .end local v6           #account:Lcom/htc/android/mail/Account;
    :catch_0
    move-exception v9

    .line 190
    .local v9, e:Ljava/lang/OutOfMemoryError;
    const-string v0, "MailShortcut"

    const-string v1, "loadContactPhoto: OutOfMemoryError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 191
    .end local v9           #e:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v9

    .line 192
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "MailShortcut"

    const-string v1, "loadContactPhoto: exception"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static declared-synchronized updateMailAPshortcut(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "checkCache"

    .prologue
    .line 254
    const-class v8, Lcom/htc/android/mail/MailShortcut;

    monitor-enter v8

    :try_start_0
    const-string v1, "%com.htc.android.mail/.Mail%"

    .line 255
    .local v1, uriStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 263
    .local v6, newMail:I
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 264
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {p0, v2, v3}, Lcom/htc/android/mail/MailCommon;->getUnreadNumberFromNotification(Landroid/content/Context;J)I

    move-result v6

    .line 268
    :cond_0
    :goto_0
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailAPshortcut>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/htc/android/mail/MailShortcut;->generateIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit v8

    return-void

    .line 265
    :cond_2
    :try_start_1
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 266
    const-wide v2, 0x7fffffffffffffffL

    const-wide v4, 0x7ffffffffffffffaL

    invoke-static {p0, v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    goto :goto_0

    .line 254
    .end local v1           #uriStr:Ljava/lang/String;
    .end local v6           #newMail:I
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static updateMailAPshortcutInLine(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "checkCache"

    .prologue
    .line 507
    sget-boolean v1, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailAPshortcutInLine: context>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkCache>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 509
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/MailShortcut$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/android/mail/MailShortcut$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 514
    return-void
.end method

.method public static declared-synchronized updateMailShortcut(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 280
    const-class v0, Lcom/htc/android/mail/MailShortcut;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/htc/android/mail/MailShortcut;->updateMailShortcut(Landroid/content/Context;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit v0

    return-void

    .line 280
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized updateMailShortcut(Landroid/content/Context;JZ)V
    .locals 12
    .parameter "context"
    .parameter "accountId"
    .parameter "checkCache"

    .prologue
    const/4 v4, 0x1

    .line 284
    const-class v11, Lcom/htc/android/mail/MailShortcut;

    monitor-enter v11

    :try_start_0
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailShortcut>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    .line 287
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailShortcut"

    const-string v2, "accountId return>"

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    :goto_0
    monitor-exit v11

    return-void

    .line 291
    :cond_2
    const/4 v6, 0x0

    .line 293
    .local v6, unreadMail:I
    :try_start_1
    invoke-static {p1, p2}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v8

    .line 295
    .local v8, account:Lcom/htc/android/mail/Account;
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_3
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getDelStatus()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 311
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 312
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/MailCommon;->getUnreadNumberFromNotification(Landroid/content/Context;J)I

    move-result v6

    .line 322
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accountId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", unreadMail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://mail/accounts/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, uriStr:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v4, p1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/htc/android/mail/MailShortcut;->generateIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JIZ)V

    .line 328
    invoke-static {p0, p3}, Lcom/htc/android/mail/MailShortcut;->updateMailAPshortcut(Landroid/content/Context;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    .end local v1           #uriStr:Ljava/lang/String;
    .end local v6           #unreadMail:I
    .end local v8           #account:Lcom/htc/android/mail/Account;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0

    .line 313
    .restart local v6       #unreadMail:I
    .restart local v8       #account:Lcom/htc/android/mail/Account;
    :cond_6
    :try_start_2
    sget v0, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    if-ne v0, v4, :cond_4

    .line 314
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v10

    .line 315
    .local v10, mailboxs:Lcom/htc/android/mail/Mailboxs;
    if-eqz v10, :cond_4

    .line 316
    invoke-virtual {v10}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v9

    .line 317
    .local v9, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v9, :cond_4

    .line 318
    invoke-virtual {v8}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v2

    const-wide v4, 0x7ffffffffffffffaL

    invoke-static {p0, v2, v3, v4, v5}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    goto :goto_1
.end method

.method public static updateMailShortcutInLine(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 517
    sget-boolean v1, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailShortcutInLine: context>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 519
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/MailShortcut$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/android/mail/MailShortcut$2;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public static updateMailShortcutInLine(Landroid/content/Context;JZ)V
    .locals 4
    .parameter "context"
    .parameter "accountId"
    .parameter "checkCache"

    .prologue
    .line 527
    sget-boolean v1, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MailShortcut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMailShortcutInLine: context>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", accountId>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", checkCache>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    .line 529
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/htc/android/mail/MailShortcut$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/htc/android/mail/MailShortcut$3;-><init>(Landroid/content/Context;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    return-void
.end method

.method public static declared-synchronized updateMailShortcutNewId(Landroid/content/Context;JJ)V
    .locals 17
    .parameter "context"
    .parameter "oldAccountId"
    .parameter "newAccountId"

    .prologue
    .line 352
    const-class v14, Lcom/htc/android/mail/MailShortcut;

    monitor-enter v14

    :try_start_0
    sget-boolean v3, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "MailShortcut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateMailShortcutNewId: oldAccountId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p1

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newAccountId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://mail/accounts/"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, uriStr:Ljava/lang/String;
    const-wide/16 v6, 0x0

    cmp-long v3, p1, v6

    if-ltz v3, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v3, p3, v6

    if-gez v3, :cond_3

    .line 356
    :cond_1
    sget-boolean v3, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "MailShortcut"

    const-string v6, "negative accountId"

    invoke-static {v3, v6}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :cond_2
    :goto_0
    monitor-exit v14

    return-void

    .line 360
    :cond_3
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v5, shortcutIntent:Landroid/content/Intent;
    sget-object v3, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 362
    .local v13, newAccountUri:Landroid/net/Uri;
    const-string v3, "vnd.android.cursor.dir/mail_tab"

    invoke-virtual {v5, v13, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const/high16 v3, 0x400

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    const-string v3, "shortcut"

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/Account;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v11

    .line 367
    .local v11, account:Lcom/htc/android/mail/Account;
    if-eqz v11, :cond_2

    .line 369
    const/4 v9, 0x0

    .line 382
    .local v9, unreadMail:I
    sget v3, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    .line 383
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/htc/android/mail/MailCommon;->getUnreadNumberFromNotification(Landroid/content/Context;J)I

    move-result v9

    .line 391
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v7

    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/htc/android/mail/MailShortcut;->generateIcon(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JIZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 352
    .end local v4           #uriStr:Ljava/lang/String;
    .end local v5           #shortcutIntent:Landroid/content/Intent;
    .end local v9           #unreadMail:I
    .end local v11           #account:Lcom/htc/android/mail/Account;
    .end local v13           #newAccountUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    monitor-exit v14

    throw v3

    .line 384
    .restart local v4       #uriStr:Ljava/lang/String;
    .restart local v5       #shortcutIntent:Landroid/content/Intent;
    .restart local v9       #unreadMail:I
    .restart local v11       #account:Lcom/htc/android/mail/Account;
    .restart local v13       #newAccountUri:Landroid/net/Uri;
    :cond_5
    :try_start_2
    sget v3, Lcom/htc/android/mail/NewMailNotification;->sVersion:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 385
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getMailboxs()Lcom/htc/android/mail/Mailboxs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/mail/Mailboxs;->getDefaultMailbox()Lcom/htc/android/mail/Mailbox;

    move-result-object v12

    .line 386
    .local v12, mailbox:Lcom/htc/android/mail/Mailbox;
    if-eqz v12, :cond_4

    .line 387
    invoke-virtual {v11}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v6

    const-wide v15, 0x7ffffffffffffffaL

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v6, v7, v1, v2}, Lcom/htc/android/mail/MailCommon;->getUnreadNumber(Landroid/content/Context;JJ)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    goto :goto_1
.end method

.method public static updateMailShortcutNewIdInLine(Landroid/content/Context;JJ)V
    .locals 7
    .parameter "context"
    .parameter "oldAccountId"
    .parameter "newAccountId"

    .prologue
    .line 547
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearMailShortcutInLine: context>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldAccountId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newAccountId>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/MailListTab$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v6

    .line 549
    .local v6, handler:Landroid/os/Handler;
    new-instance v0, Lcom/htc/android/mail/MailShortcut$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/MailShortcut$5;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 554
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 199
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MailShortcut"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onActivityResult>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 244
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "MailShortcut"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unknow >"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 202
    :pswitch_0
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string v8, "MailShortcut"

    const-string v9, "SHORTCUT_CREATE_ACCOUNT>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_2
    const/4 v8, -0x1

    if-ne p2, v8, :cond_4

    if-eqz p3, :cond_4

    .line 204
    const-string v8, "AccountId"

    const/4 v9, -0x1

    invoke-virtual {p3, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 205
    .local v4, id:I
    const-string v8, "AccountName"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    .local v7, name:Ljava/lang/String;
    int-to-long v8, v4

    invoke-direct {p0, v8, v9, v7}, Lcom/htc/android/mail/MailShortcut;->returnToShortCut(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 207
    .local v5, intent:Landroid/content/Intent;
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v5}, Lcom/htc/android/mail/MailShortcut;->setResult(ILandroid/content/Intent;)V

    .line 219
    .end local v4           #id:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #name:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->finish()V

    goto :goto_0

    .line 208
    :cond_4
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v9

    if-ne v8, v9, :cond_6

    .line 210
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string v8, "MailShortcut"

    const-string v9, "use the default account"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_5
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->getDefaultAccountId()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/htc/android/mail/MailProvider;->getAccount(J)Lcom/htc/android/mail/Account;

    move-result-object v0

    .line 212
    .local v0, account:Lcom/htc/android/mail/Account;
    if-eqz v0, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getId()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/htc/android/mail/Account;->getDesc()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v9, v10}, Lcom/htc/android/mail/MailShortcut;->returnToShortCut(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 214
    .restart local v5       #intent:Landroid/content/Intent;
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v5}, Lcom/htc/android/mail/MailShortcut;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 217
    .end local v0           #account:Lcom/htc/android/mail/Account;
    .end local v5           #intent:Landroid/content/Intent;
    :cond_6
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "MailShortcut"

    const-string v9, " no create account>"

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 223
    :pswitch_1
    const/4 v8, -0x1

    if-ne p2, v8, :cond_8

    .line 224
    if-eqz p3, :cond_1

    .line 226
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p3, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 227
    .local v1, accountId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_8

    .line 228
    invoke-static {p0}, Lcom/htc/android/mail/AccountPool;->getInstance(Landroid/content/Context;)Lcom/htc/android/mail/AccountPool;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9, v1, v2}, Lcom/htc/android/mail/AccountPool;->getAccount(Landroid/content/Context;J)Lcom/htc/android/mail/Account;

    move-result-object v8

    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/htc/android/mail/Account;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, accountName:Ljava/lang/String;
    sget-boolean v8, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v8, :cond_7

    const-string v8, "MailShortcut"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "choose account = +accountId++accountName"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_7
    invoke-direct {p0, v1, v2, v3}, Lcom/htc/android/mail/MailShortcut;->returnToShortCut(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 234
    .restart local v5       #intent:Landroid/content/Intent;
    const/4 v8, -0x1

    invoke-virtual {p0, v8, v5}, Lcom/htc/android/mail/MailShortcut;->setResult(ILandroid/content/Intent;)V

    .line 236
    new-instance v6, Landroid/content/Intent;

    const-string v8, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, it:Landroid/content/Intent;
    const-string v8, "silder_state"

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v6}, Lcom/htc/android/mail/MailShortcut;->sendBroadcast(Landroid/content/Intent;)V

    .line 241
    .end local v1           #accountId:J
    .end local v3           #accountName:Ljava/lang/String;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #it:Landroid/content/Intent;
    :cond_8
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->finish()V

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MailShortcut"

    const-string v1, "onCreate >"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/MailShortcut;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/Util;->getAccountCountPref(Landroid/content/Context;)I

    move-result v6

    .line 97
    .local v6, accountCount:I
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "MailShortcut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accountCount>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    if-nez v6, :cond_3

    .line 101
    new-instance v11, Landroid/content/Intent;

    const-class v0, Lcom/htc/android/mail/MailListTab;

    invoke-direct {v11, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v11, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    invoke-virtual {p0, v11, v0}, Lcom/htc/android/mail/MailShortcut;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    .end local v11           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 103
    :cond_3
    const/4 v0, 0x1

    if-ne v6, v0, :cond_5

    .line 104
    sget-boolean v0, Lcom/htc/android/mail/MailShortcut;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MailShortcut"

    const-string v1, "only one account for shortcut>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sAccountsURI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id, _desc"

    aput-object v4, v2, v3

    const-string v3, "_del = -1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 106
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 107
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 109
    .local v7, accountId:J
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, accountName:Ljava/lang/String;
    invoke-direct {p0, v7, v8, v9}, Lcom/htc/android/mail/MailShortcut;->returnToShortCut(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 112
    .restart local v11       #intent:Landroid/content/Intent;
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v11}, Lcom/htc/android/mail/MailShortcut;->setResult(ILandroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/android/mail/MailShortcut;->finish()V

    .line 116
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.htc.launcher.ThemeChooser.action.silder_change"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v12, it:Landroid/content/Intent;
    const-string v0, "silder_state"

    const/4 v1, 0x0

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v12}, Lcom/htc/android/mail/MailShortcut;->sendBroadcast(Landroid/content/Intent;)V

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 125
    .end local v7           #accountId:J
    .end local v9           #accountName:Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #it:Landroid/content/Intent;
    :cond_5
    new-instance v11, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v11       #intent:Landroid/content/Intent;
    const-class v0, Lcom/htc/android/mail/AccountListDialogPicker;

    invoke-virtual {v11, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const-string v0, "show_separate_account_only"

    const/4 v1, 0x1

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string v0, "show_exchange_only"

    const/4 v1, 0x0

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Lcom/htc/android/mail/MailShortcut;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
