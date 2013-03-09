.class public Lcom/google/android/gsf/update/SystemUpdateActivity;
.super Landroid/app/Activity;
.source "SystemUpdateActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field static volatile sIsActivityUp:Z


# instance fields
.field private mButtonQualifier:Landroid/widget/TextView;

.field private mCountdownEnd:J

.field private mCountdownStopTime:J

.field private mCountdownUrl:Ljava/lang/String;

.field private mDownloadProgressCursor:Landroid/database/Cursor;

.field private mDownloadProgressObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mInstallPending:Z

.field private mLastBatteryState:I

.field private mLastCheckinTime:J

.field private mLastMobile:Z

.field private mLastRoaming:Z

.field private mLastStatus:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mVerifyUpdate:Ljava/lang/Runnable;

.field private mWatcher:Lcom/google/android/gsf/update/StateWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    .line 63
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 66
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 81
    iput-boolean v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    .line 87
    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 93
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$1;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity$2;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    .line 212
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$4;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$4;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/update/SystemUpdateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/update/SystemUpdateActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gsf/update/SystemUpdateActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshDownloadProgress()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gsf/update/SystemUpdateActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gsf/update/SystemUpdateActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/gsf/update/SystemUpdateActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    return-void
.end method

.method private queryDownloadProgress(J)Landroid/database/Cursor;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 494
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/update/net/Downloads$ByUri;->getProgressCursor(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v0

    .line 495
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 498
    :cond_0
    return-object v0
.end method

.method private refreshDownloadProgress()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 465
    iget v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 491
    :goto_0
    return-void

    .line 469
    :cond_0
    const/4 v1, 0x0

    .local v1, total:I
    const/4 v0, 0x0

    .line 470
    .local v0, current:I
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 471
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    .line 472
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 473
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/google/android/gsf/update/net/Downloads$ByUri;->getProgressColumnTotalBytes()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 475
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/google/android/gsf/update/net/Downloads$ByUri;->getProgressColumnCurrentBytes()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 480
    :cond_1
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 481
    if-gtz v1, :cond_2

    .line 483
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 484
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 485
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 488
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 489
    iget-object v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private refreshStatus(Z)V
    .locals 19
    .parameter "forceRefresh"

    .prologue
    .line 238
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "status"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 240
    .local v11, status:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "download_mobile"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 241
    .local v8, mobile:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v14}, Lcom/google/android/gsf/update/StateWatcher;->getBatteryState()I

    move-result v2

    .line 242
    .local v2, batteryState:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v14}, Lcom/google/android/gsf/update/StateWatcher;->isNetworkRoaming()Z

    move-result v10

    .line 243
    .local v10, roaming:Z
    invoke-static/range {p0 .. p0}, Lcom/google/android/gsf/checkin/CheckinService;->getLastCheckinSuccessTime(Landroid/content/Context;)J

    move-result-wide v6

    .line 244
    .local v6, lastCheckinTime:J
    if-nez p1, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    if-ne v11, v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    if-ne v8, v14, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    if-ne v2, v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    if-ne v10, v14, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    cmp-long v14, v6, v14

    if-nez v14, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    move-object/from16 v0, p0

    iput v11, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    .line 251
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastMobile:Z

    .line 252
    move-object/from16 v0, p0

    iput v2, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastBatteryState:I

    .line 253
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastRoaming:Z

    .line 254
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastCheckinTime:J

    .line 261
    const/4 v14, 0x5

    if-ne v11, v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    if-eqz v14, :cond_2

    .line 262
    const-string v14, "SystemUpdateActivity"

    const-string v15, "skipping refresh; about to reboot"

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resetContent()V

    .line 269
    const/4 v9, 0x0

    .line 270
    .local v9, noUpdate:Z
    packed-switch v11, :pswitch_data_0

    .line 365
    :cond_3
    :goto_1
    if-nez v9, :cond_0

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "update_description"

    invoke-static {v14, v15}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, description:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 370
    const v14, 0x7f0d0010

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    goto :goto_0

    .line 273
    .end local v3           #description:Ljava/lang/String;
    :pswitch_0
    const v14, 0x7f0d000f

    const v15, 0x7f08001b

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 274
    const v14, 0x7f0d0010

    const v15, 0x7f08001c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v6, v7, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 279
    const v14, 0x7f0d0026

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 280
    const v14, 0x7f0d0025

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 281
    const v14, 0x7f0d0029

    const v15, 0x7f08001a

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 282
    const/4 v9, 0x1

    .line 283
    goto/16 :goto_1

    .line 286
    :pswitch_1
    const v14, 0x7f0d0026

    const v15, 0x7f080010

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 287
    if-eqz v10, :cond_4

    .line 288
    const v14, 0x7f0d0029

    const v15, 0x7f080018

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 290
    const v14, 0x7f0d0029

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v15, 0x7f08000f

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 294
    :cond_4
    const v14, 0x7f0d0029

    const v15, 0x7f080018

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 300
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/google/android/gsf/update/SystemUpdateService;->whenMobileAllowed(Landroid/content/SharedPreferences;Landroid/content/Context;)J

    move-result-wide v12

    .line 301
    .local v12, when:J
    const v14, 0x7f0d0026

    const v15, 0x7f080011

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v14, v12, v14

    if-lez v14, :cond_5

    .line 303
    const v14, 0x7f0d0027

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 304
    const v14, 0x7f0d0027

    const v15, 0x7f080012

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v12, v13, v1}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 311
    :cond_5
    const v14, 0x7f0d0024

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 312
    const v14, 0x7f0d0029

    const v15, 0x7f080018

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 314
    const v14, 0x7f0d0029

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 315
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "download_id"

    const-wide/16 v16, -0x1

    invoke-interface/range {v14 .. v17}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 316
    .local v4, id:J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-ltz v14, :cond_3

    .line 317
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setUpProgressBarForDownload(J)V

    goto/16 :goto_1

    .line 323
    .end local v4           #id:J
    .end local v12           #when:J
    :pswitch_3
    const v14, 0x7f0d0026

    const v15, 0x7f080016

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 324
    const v14, 0x7f0d0029

    const v15, 0x7f080017

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 329
    :pswitch_4
    const v14, 0x7f0d0024

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 330
    const v14, 0x7f0d0026

    const v15, 0x7f080013

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 331
    const v14, 0x7f0d0029

    const v15, 0x7f080018

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 333
    const v14, 0x7f0d0029

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    goto/16 :goto_1

    .line 337
    :pswitch_5
    const v14, 0x7f0d0024

    const/4 v15, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 338
    const v14, 0x7f0d0026

    const v15, 0x7f080014

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 339
    const v14, 0x7f0d0029

    const v15, 0x7f08001a

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    goto/16 :goto_1

    .line 343
    :pswitch_6
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    .line 344
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    goto/16 :goto_1

    .line 346
    :cond_6
    const v14, 0x7f0d0026

    const v15, 0x7f080015

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 347
    const v15, 0x7f0d0029

    const v16, 0x7f080019

    if-nez v2, :cond_8

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1, v14}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 349
    if-eqz v2, :cond_7

    .line 350
    const v14, 0x7f0d0029

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 352
    :cond_7
    const/4 v14, 0x2

    if-ne v2, v14, :cond_9

    .line 353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v15, 0x7f08000d

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 347
    :cond_8
    const/4 v14, 0x0

    goto :goto_2

    .line 356
    :cond_9
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 357
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const v15, 0x7f08000e

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method private resetContent()V
    .locals 7

    .prologue
    const v6, 0x7f0d0025

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 502
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 503
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 504
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 506
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    const v0, 0x7f0d000f

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_title"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "update_size"

    invoke-static {v1, v2}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v6, v0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 513
    const v0, 0x7f0d0026

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 514
    const v0, 0x7f0d0027

    invoke-direct {p0, v0, v5}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 515
    invoke-direct {p0, v6, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 516
    const v0, 0x7f0d0029

    invoke-direct {p0, v0, v3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setVisibility(II)V

    .line 517
    return-void
.end method

.method private resumeCountdown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 383
    const v0, 0x7f0d0029

    const v1, 0x7f080034

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 384
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->updateCountdownMessage(JZ)V

    .line 385
    return-void
.end method

.method private setText(IIZ)V
    .locals 1
    .parameter "resId"
    .parameter "textResId"
    .parameter "enabled"

    .prologue
    .line 520
    invoke-virtual {p0, p2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 521
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;Z)V
    .locals 2
    .parameter "resId"
    .parameter "text"
    .parameter "enabled"

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 525
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_0

    .line 530
    :goto_0
    return-void

    .line 526
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 527
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setUpProgressBarForDownload(J)V
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-static {}, Lcom/google/android/gsf/update/net/Downloads$ByUri;->getProgressColumnId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_3

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 451
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 452
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 455
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->queryDownloadProgress(J)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    .line 456
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 462
    :goto_0
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 461
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshDownloadProgress()V

    goto :goto_0
.end method

.method private setVisibility(II)V
    .locals 1
    .parameter "resId"
    .parameter "visibility"

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 534
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :cond_0
    return-void
.end method

.method private startCountdown()V
    .locals 4

    .prologue
    .line 376
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 378
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 380
    return-void
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 427
    const v0, 0x7f0d0026

    const v1, 0x7f080033

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(IIZ)V

    .line 428
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "install_approved"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 432
    iput-boolean v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mInstallPending:Z

    .line 439
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 440
    return-void
.end method

.method private stopCountdown()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 388
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 389
    const v0, 0x3112a

    const-string v1, "activity-countdown-cancel"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 390
    iput-wide v2, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 393
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 394
    return-void
.end method

.method private updateCountdownMessage(JZ)V
    .locals 12
    .parameter "endTime"
    .parameter "loop"

    .prologue
    const/4 v11, 0x1

    .line 397
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v5, p1, v5

    if-eqz v5, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "url"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 402
    .local v4, url:Ljava/lang/String;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 403
    :cond_2
    const-string v5, "SystemUpdateActivity"

    const-string v6, "URL changed during countdown; aborting"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 405
    invoke-direct {p0, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 409
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 410
    .local v1, now:J
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v5, v1, v5

    if-ltz v5, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startUpdate()V

    goto :goto_0

    .line 413
    :cond_4
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v5, v5

    add-int/lit8 v3, v5, 0x1

    .line 414
    .local v3, secs:I
    const v5, 0x7f0d0026

    invoke-virtual {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a

    new-array v8, v11, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v3, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v11}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setText(ILjava/lang/CharSequence;Z)V

    .line 418
    iget-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    add-int/lit8 v7, v3, -0x1

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    sub-long/2addr v5, v1

    long-to-int v0, v5

    .line 419
    .local v0, delay:I
    if-eqz p3, :cond_0

    .line 420
    iget-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/google/android/gsf/update/SystemUpdateActivity$6;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/google/android/gsf/update/SystemUpdateActivity$6;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;JZ)V

    int-to-long v7, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const v2, 0x3112a

    const/4 v4, 0x1

    .line 538
    iget v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mLastStatus:I

    packed-switch v0, :pswitch_data_0

    .line 574
    :goto_0
    :pswitch_0
    return-void

    .line 542
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.CHECKIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 547
    :pswitch_2
    const-string v0, "download"

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "download_approved"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejected_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 555
    const-string v1, "download_now"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 556
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 560
    :pswitch_3
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_0

    .line 561
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 566
    iput-wide v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 567
    invoke-direct {p0, v4}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    goto :goto_0

    .line 569
    :cond_0
    const-string v0, "install"

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 570
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startCountdown()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mHandler:Landroid/os/Handler;

    .line 124
    const-string v1, "update"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 127
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setTitle(I)V

    .line 129
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setContentView(I)V

    .line 130
    const v1, 0x7f0d0029

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v1, 0x7f0d002a

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mButtonQualifier:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f0d0024

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 135
    new-instance v1, Lcom/google/android/gsf/update/StateWatcher;

    new-instance v2, Lcom/google/android/gsf/update/SystemUpdateActivity$3;

    invoke-direct {v2, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$3;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/google/android/gsf/update/StateWatcher;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 142
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    const-string v1, "countdown_end"

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 146
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 147
    const-string v1, "countdown_url"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    .line 150
    iput-wide v3, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownStopTime:J

    .line 151
    iput-object v5, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/update/SystemUpdateActivity;->setIntent(Landroid/content/Intent;)V

    .line 165
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 207
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    const-string v0, "countdown_end"

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v0, "countdown_url"

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPrefs"
    .parameter "key"

    .prologue
    .line 224
    const-string v0, "status"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "download_mobile"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    :cond_0
    new-instance v0, Lcom/google/android/gsf/update/SystemUpdateActivity$5;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/update/SystemUpdateActivity$5;-><init>(Lcom/google/android/gsf/update/SystemUpdateActivity;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    const-string v0, "verify_progress"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mVerifyUpdate:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 171
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 176
    sput-boolean v2, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 177
    invoke-static {p0}, Lcom/google/android/gsf/update/SystemUpdateService;->cancelNotifications(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->start()V

    .line 179
    invoke-direct {p0, v2}, Lcom/google/android/gsf/update/SystemUpdateActivity;->refreshStatus(Z)V

    .line 181
    iget-wide v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mCountdownEnd:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    const v0, 0x3112a

    const-string v1, "activity-countdown-resume"

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 183
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->resumeCountdown()V

    .line 185
    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 191
    invoke-direct {p0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->stopCountdown()V

    .line 192
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mWatcher:Lcom/google/android/gsf/update/StateWatcher;

    invoke-virtual {v0}, Lcom/google/android/gsf/update/StateWatcher;->stop()V

    .line 194
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mDownloadProgressObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 198
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gsf/update/SystemUpdateActivity;->sIsActivityUp:Z

    .line 199
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateActivity;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 202
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gsf/update/SystemUpdateService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/update/SystemUpdateActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 203
    return-void
.end method
