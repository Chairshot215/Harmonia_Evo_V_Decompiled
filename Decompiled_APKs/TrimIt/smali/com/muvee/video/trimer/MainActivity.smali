.class public Lcom/muvee/video/trimer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"

# interfaces
.implements Lcom/muvee/video/trimer/MmvtConstant;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
.implements Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;
.implements Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/muvee/video/trimer/MainActivity$SaveAsync;,
        Lcom/muvee/video/trimer/MainActivity$VTState;
    }
.end annotation


# static fields
.field private static final ACTION_ALERT_DIALOG:I = 0x2

.field private static final ACTION_CONTINUE_LAST_TASK:I = 0x1

.field private static final ACTION_PRE_LOADING:I = 0x0

.field private static final ACTION_PROGRESS_DIALOG:I = 0x3

.field private static final ACTION_TRIMMING_DIALOG:I = 0x4

.field private static final NOTIFICATION_ID:I = 0x3039

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.muvee.video.trimer.preference"

.field private static final PRE_LOADING_TIME:I = 0x7d0

.field private static final RESULT_CANCEL:I = 0x1

.field private static final RESULT_ERROR:I = 0x2

.field private static final RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.muvee.video.trimer.MainActivity"

.field public static height:I


# instance fields
.field private mAction:Ljava/lang/String;

.field private mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

.field private mBroadcastReceiver:Lcom/muvee/video/trimer/MBroadcastReceiver;

.field private mButtonCancel:Landroid/widget/Button;

.field private mButtonDone:Landroid/widget/Button;

.field private mCancelCounter:I

.field private mCheckBoxPlay:Landroid/widget/CheckBox;

.field private mCurrentPlayLocation:I

.field private mFrameHeight:I

.field private mFrameWidth:I

.field private mHandler:Landroid/os/Handler;

.field private mHandler2:Landroid/os/Handler;

.field private mHandler3:Landroid/os/Handler;

.field private mImageReflectionView:Landroid/widget/ImageView;

.field private mImageView:Landroid/widget/ImageView;

.field private mMuteFlag:Ljava/lang/Boolean;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOutFileSize:J

.field private mOutPath:Ljava/lang/String;

.field private mProgress:I

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

.field private mRefelectionThumb:Landroid/graphics/Bitmap;

.field private mResult:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mRunnablePreLoading:Ljava/lang/Runnable;

.field private mSData:Ljava/lang/String;

.field private mSaveRunnable:Ljava/lang/Runnable;

.field private mSpaceCheckFlag:Ljava/lang/Boolean;

.field private mSpaceExceeded:Ljava/lang/Boolean;

.field private mState:Lcom/muvee/video/trimer/MainActivity$VTState;

.field private mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

.field private mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

.field private mTrimDuration:I

.field private mVideoFile:Ljava/lang/String;

.field private mVideoView:Landroid/widget/VideoView;

.field private mVideoViewRunnable:Ljava/lang/Runnable;

.field private mVolume:I

.field private m_contentView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J

    .line 138
    iput v2, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    .line 139
    iput v2, p0, Lcom/muvee/video/trimer/MainActivity;->mCurrentPlayLocation:I

    .line 140
    iput v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgress:I

    .line 141
    iput v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    .line 144
    new-instance v0, Lcom/muvee/video/trimer/MBroadcastReceiver;

    invoke-direct {v0}, Lcom/muvee/video/trimer/MBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mBroadcastReceiver:Lcom/muvee/video/trimer/MBroadcastReceiver;

    .line 808
    new-instance v0, Lcom/muvee/video/trimer/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/muvee/video/trimer/MainActivity$1;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;

    .line 1358
    new-instance v0, Lcom/muvee/video/trimer/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/muvee/video/trimer/MainActivity$2;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    .line 1890
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    .line 77
    return-void
.end method

.method static synthetic access$0(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 808
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$10(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mSpaceCheckFlag:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$12(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mSpaceExceeded:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$13(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/muvee/video/trimer/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput p1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I

    return-void
.end method

.method static synthetic access$16(Lcom/muvee/video/trimer/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I

    return v0
.end method

.method static synthetic access$17(Lcom/muvee/video/trimer/MainActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-wide p1, p0, Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J

    return-void
.end method

.method static synthetic access$18(Lcom/muvee/video/trimer/MainActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J

    return-wide v0
.end method

.method static synthetic access$19(Lcom/muvee/video/trimer/MainActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$20(Lcom/muvee/video/trimer/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    return v0
.end method

.method static synthetic access$21(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/Notification;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$22(Lcom/muvee/video/trimer/MainActivity;)Landroid/app/NotificationManager;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$23(Lcom/muvee/video/trimer/MainActivity;Landroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    return-void
.end method

.method static synthetic access$24(Lcom/muvee/video/trimer/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1667
    invoke-direct {p0, p1}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    return-void
.end method

.method static synthetic access$25(Lcom/muvee/video/trimer/MainActivity;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1608
    invoke-direct {p0, p1, p2}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    return-void
.end method

.method static synthetic access$26(Lcom/muvee/video/trimer/MainActivity;Lcom/htc/app/HtcProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    return-void
.end method

.method static synthetic access$27(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->parseFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$28(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$29(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V

    return-void
.end method

.method static synthetic access$3(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->doSave()V

    return-void
.end method

.method static synthetic access$30(Lcom/muvee/video/trimer/MainActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 925
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$31(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1599
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->resetTrim()V

    return-void
.end method

.method static synthetic access$33(Lcom/muvee/video/trimer/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1510
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->preLoadBitmap()V

    return-void
.end method

.method static synthetic access$34(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$35(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$36(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$37(Lcom/muvee/video/trimer/MainActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1327
    invoke-direct {p0, p1}, Lcom/muvee/video/trimer/MainActivity;->pause(Z)V

    return-void
.end method

.method static synthetic access$38(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$39(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/ThumbView;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/muvee/video/trimer/MainActivity;)Lcom/muvee/video/trimer/view/TrimBar;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    return-object v0
.end method

.method static synthetic access$40(Lcom/muvee/video/trimer/MainActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I

    move-result v0

    return v0
.end method

.method static synthetic access$41(Lcom/muvee/video/trimer/MainActivity;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$42(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/muvee/video/trimer/MainActivity;)Landroid/widget/VideoView;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/muvee/video/trimer/MainActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/muvee/video/trimer/MainActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$8(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$9(Lcom/muvee/video/trimer/MainActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput p1, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    return-void
.end method

.method private chooseFile(Landroid/content/SharedPreferences;)V
    .locals 7
    .parameter "mSharedPreferences"

    .prologue
    const/4 v6, 0x0

    .line 489
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::chooseFile:getIntent()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.muvee.video.trimer.VIDEO_TRIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 493
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "data"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, string:Ljava/lang/String;
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::onResume:string="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    if-nez v2, :cond_1

    .line 497
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V

    .line 549
    .end local v2           #string:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 500
    .restart local v2       #string:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 501
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->parseFile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    .line 502
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::onResume:mVideoFile="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 504
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V

    goto :goto_0

    .line 508
    :cond_2
    const-string v3, "com.muvee.video.trimer.TRIMING"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 510
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->doSave()V

    .line 511
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z

    goto :goto_0

    .line 513
    :cond_3
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->preLoadBitmap()V

    goto :goto_0

    .line 518
    :cond_4
    const-string v3, "com.muvee.video.trimer.TRIMING"

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 519
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 520
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "new.file"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x3039

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 522
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 524
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_5
    iput-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    .line 525
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->resetTrim()V

    .line 526
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->parseFile()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    .line 527
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 528
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileNotFound()V

    goto :goto_0

    .line 532
    :cond_6
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 533
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.muvee.video.trimer.TRIM_FILE_PATH"

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 534
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 536
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onFileChosen()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->preLoadBitmap()V

    goto/16 :goto_0

    .line 542
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #string:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.muvee.video.trimer.VIDEO_TRIM_CLOSED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 543
    const/16 v3, 0xa

    const-string v4, "com.muvee.video.trimer.TRIMING"

    invoke-interface {p1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto/16 :goto_0

    .line 547
    :cond_8
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    goto/16 :goto_0
.end method

.method private createStateListDrawable()Landroid/graphics/drawable/StateListDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 475
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 476
    .local v1, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    const v0, 0x10100a0

    .line 477
    .local v0, stateChecked:I
    const v2, 0x10100a7

    .line 478
    .local v2, statePressed:I
    new-array v3, v8, [I

    aput v2, v3, v6

    neg-int v4, v0

    aput v4, v3, v7

    const v4, 0x7f020029

    const-string v5, "trimlt_btn_play_pressed"

    invoke-direct {p0, v4, v5}, Lcom/muvee/video/trimer/MainActivity;->getDrwable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 479
    new-array v3, v8, [I

    aput v2, v3, v6

    aput v0, v3, v7

    const v4, 0x7f020027

    const-string v5, "trimlt_btn_pause_pressed"

    invoke-direct {p0, v4, v5}, Lcom/muvee/video/trimer/MainActivity;->getDrwable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 480
    new-array v3, v7, [I

    aput v0, v3, v6

    const v4, 0x7f020028

    const-string v5, "trimlt_btn_pause_rest"

    invoke-direct {p0, v4, v5}, Lcom/muvee/video/trimer/MainActivity;->getDrwable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 481
    new-array v3, v7, [I

    neg-int v4, v0

    aput v4, v3, v6

    const v4, 0x7f02002a

    const-string v5, "trimlt_btn_play_rest"

    invoke-direct {p0, v4, v5}, Lcom/muvee/video/trimer/MainActivity;->getDrwable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 482
    return-object v1
.end method

.method private doSave()V
    .locals 9

    .prologue
    const/16 v4, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 823
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v3, :cond_0

    .line 903
    :goto_0
    return-void

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 830
    invoke-direct {p0, v7}, Lcom/muvee/video/trimer/MainActivity;->pause(Z)V

    .line 832
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    if-eqz v3, :cond_3

    .line 833
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mAsyncTask status: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    invoke-virtual {v5}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    invoke-virtual {v3}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v3

    sget-object v4, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v3, v4, :cond_3

    .line 835
    iget v3, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 836
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 837
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 838
    iput-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    .line 840
    :cond_1
    iput v8, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    goto :goto_0

    .line 844
    :cond_2
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    .line 845
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 846
    iget v3, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    goto :goto_0

    .line 851
    :cond_3
    iput v8, p0, Lcom/muvee/video/trimer/MainActivity;->mCancelCounter:I

    .line 852
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    if-eqz v3, :cond_4

    .line 853
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mSaveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 854
    iput-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler2:Landroid/os/Handler;

    .line 857
    :cond_4
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v6}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 859
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v3, :cond_5

    .line 860
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 861
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v3, v8}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 864
    :cond_5
    iput-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    .line 865
    iput-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    .line 867
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/muvee/video/trimer/MVideoTrimer;

    .line 868
    new-array v4, v7, [Lcom/muvee/video/trimer/Seqment;

    new-instance v5, Lcom/muvee/video/trimer/Seqment;

    .line 869
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/muvee/video/trimer/Seqment;-><init>(FF)V

    aput-object v5, v4, v8

    .line 868
    invoke-virtual {v3, v4}, Lcom/muvee/video/trimer/MVideoTrimer;->setSeqments([Lcom/muvee/video/trimer/Seqment;)V

    .line 871
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::doSave:mSData="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 875
    :cond_6
    const-string v3, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "::doSave: Error mSData="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    :cond_7
    new-instance v3, Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    iput-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    .line 880
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mAsync:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    new-array v4, v8, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/muvee/video/trimer/MainActivity$SaveAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 882
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020022

    const-string v5, ""

    .line 883
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 882
    iput-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    .line 885
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget v4, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 887
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 888
    const v4, 0x7f030001

    .line 887
    invoke-direct {v1, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 890
    .local v1, contentView:Landroid/widget/RemoteViews;
    const v3, 0x7f09000d

    .line 891
    const v4, 0x7f040002

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 890
    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 893
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iput-object v1, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 895
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 897
    .local v2, notificationIntent:Landroid/content/Intent;
    const/high16 v3, 0x800

    .line 896
    invoke-static {p0, v8, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 898
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iput-object v0, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 899
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f09000e

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/muvee/video/trimer/MainActivity;->mProgress:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 900
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x7f09000f

    const/16 v5, 0x64

    iget v6, p0, Lcom/muvee/video/trimer/MainActivity;->mProgress:I

    invoke-virtual {v3, v4, v5, v6, v8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 901
    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x3039

    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private getDrwable(ILjava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "id"
    .parameter "name"

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p0, p2, p1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getNearestPositionIndex(I[IZ)I
    .locals 4
    .parameter "currentPosition"
    .parameter "mSyncArrays"
    .parameter "left"

    .prologue
    .line 1040
    const/4 v3, 0x0

    aget v1, p2, v3

    .line 1041
    .local v1, nNearestLeft:I
    const/4 v2, 0x0

    .line 1042
    .local v2, nNearestRight:I
    const/4 v0, 0x1

    .line 1043
    .local v0, i:I
    :goto_0
    array-length v3, p2

    if-lt v0, v3, :cond_1

    .line 1053
    :cond_0
    add-int/lit8 v3, v0, -0x1

    return v3

    .line 1045
    :cond_1
    aget v2, p2, v0

    .line 1047
    if-lt p1, v1, :cond_2

    if-le p1, v2, :cond_0

    .line 1050
    :cond_2
    move v1, v2

    .line 1043
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private nullViewDrawable(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1872
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :goto_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v1, v0

    .line 1881
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1882
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1887
    .end local v1           #imageView:Landroid/widget/ImageView;
    :goto_1
    return-void

    .line 1874
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1884
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private nullViewDrawablesRecursive(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 1847
    if-eqz p1, :cond_0

    .line 1851
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v4, v0

    .line 1853
    .local v4, viewGroup:Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1854
    .local v2, childCount:I
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-lt v3, v2, :cond_1

    .line 1864
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :goto_1
    invoke-direct {p0, p1}, Lcom/muvee/video/trimer/MainActivity;->nullViewDrawable(Landroid/view/View;)V

    .line 1866
    :cond_0
    return-void

    .line 1856
    .restart local v2       #childCount:I
    .restart local v3       #index:I
    .restart local v4       #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    :try_start_1
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1857
    .local v1, child:Landroid/view/View;
    invoke-direct {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1854
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1860
    .end local v1           #child:Landroid/view/View;
    .end local v2           #childCount:I
    .end local v3           #index:I
    .end local v4           #viewGroup:Landroid/view/ViewGroup;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private onFileChosen()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/4 v14, 0x2

    const/4 v8, 0x0

    .line 927
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/muvee/video/trimer/ThumbInterface;->getStreamInfo(Ljava/lang/String;)Lcom/muvee/video/trimer/StreamInfo;

    move-result-object v5

    .line 929
    .local v5, streamInfo:Lcom/muvee/video/trimer/StreamInfo;
    if-eqz v5, :cond_0

    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nResult:I

    if-eqz v7, :cond_2

    .line 930
    :cond_0
    if-nez v5, :cond_1

    .line 931
    const/4 v7, 0x7

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 935
    :goto_0
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getStreamInfo error = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-direct {p0, v14}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 937
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v7, v8}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    move v7, v8

    .line 1035
    :goto_1
    return v7

    .line 933
    :cond_1
    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nResult:I

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    goto :goto_0

    .line 941
    :cond_2
    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nVideoDuration:I

    const/16 v10, 0x7d0

    if-ge v7, v10, :cond_3

    .line 942
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 943
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "message"

    const v9, 0x7f04000b

    invoke-virtual {p0, v9}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v7, "title"

    const v9, 0x7f040014

    invoke-virtual {p0, v9}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v7, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-direct {p0, v14}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 946
    invoke-virtual {p0, v14, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    move v7, v8

    .line 947
    goto :goto_1

    .line 950
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nFrameWidth:I

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mFrameWidth:I

    .line 951
    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nFrameHeight:I

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mFrameHeight:I

    .line 953
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    if-nez v7, :cond_4

    move v7, v8

    .line 954
    goto :goto_1

    .line 958
    :cond_4
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 960
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, Lcom/muvee/video/trimer/MVideoTrimer;

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    invoke-virtual {v7, v10}, Lcom/muvee/video/trimer/MVideoTrimer;->setVideoFileName(Ljava/lang/String;)V

    .line 962
    iget v7, v5, Lcom/muvee/video/trimer/StreamInfo;->nFrameHeight:I

    mul-int/lit16 v7, v7, 0xf0

    iget v10, v5, Lcom/muvee/video/trimer/StreamInfo;->nFrameWidth:I

    div-int/2addr v7, v10

    sput v7, Lcom/muvee/video/trimer/MainActivity;->height:I

    .line 963
    sget v7, Lcom/muvee/video/trimer/MainActivity;->height:I

    rem-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_5

    .line 964
    sget v7, Lcom/muvee/video/trimer/MainActivity;->height:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/muvee/video/trimer/MainActivity;->height:I

    .line 966
    :cond_5
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    const/16 v11, 0xf0

    sget v12, Lcom/muvee/video/trimer/MainActivity;->height:I

    const/16 v13, 0x10

    invoke-virtual {v7, v10, v11, v12, v13}, Lcom/muvee/video/trimer/ThumbInterface;->invokeInit(Ljava/lang/String;III)I

    move-result v7

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 967
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    if-eqz v7, :cond_6

    .line 968
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->getErrorCode()I

    move-result v7

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 969
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "THUMB_INTERFACE.init mResult = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-direct {p0, v14}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 971
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v7, v8}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    move v7, v8

    .line 972
    goto/16 :goto_1

    .line 976
    :cond_6
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->getSyncArray()[I

    move-result-object v4

    .line 977
    .local v4, mSyncArrays:[I
    if-nez v4, :cond_7

    .line 978
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->getErrorCode()I

    move-result v7

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 979
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getSyncArray mResult = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-direct {p0, v14}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 981
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v7, v8}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    move v7, v8

    .line 982
    goto/16 :goto_1

    .line 986
    :cond_7
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    iget v10, v5, Lcom/muvee/video/trimer/StreamInfo;->nVideoDuration:I

    invoke-virtual {v7, v10}, Lcom/muvee/video/trimer/view/TrimBar;->setVideoDuration(I)V

    .line 987
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "::onFileChosen:mTrimBar.getTrimRight()="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v11}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v7

    if-gez v7, :cond_8

    .line 989
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    iget v10, v5, Lcom/muvee/video/trimer/StreamInfo;->nVideoDuration:I

    invoke-virtual {v7, v10}, Lcom/muvee/video/trimer/view/TrimBar;->setTrimRight(I)V

    .line 991
    :cond_8
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->invalidate()V

    .line 993
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "::onFileChosen:one="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "::onFileChosen:two="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->getVideoDurarionOverBarLength()F

    move-result v7

    float-to-int v6, v7

    .line 998
    .local v6, touchSlop:I
    array-length v7, v4

    if-lt v7, v14, :cond_9

    aget v7, v4, v9

    aget v10, v4, v8

    sub-int/2addr v7, v10

    if-le v6, v7, :cond_9

    .line 999
    const-string v7, "com.muvee.video.trimer.MainActivity"

    const-string v10, "::onFileChosen:"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1001
    .local v2, integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->getVideoDuration()I

    move-result v7

    if-lt v1, v7, :cond_a

    .line 1006
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    new-array v4, v7, [I

    .line 1007
    const/4 v1, 0x0

    :goto_3
    array-length v7, v4

    if-lt v1, v7, :cond_b

    .line 1013
    .end local v1           #i:I
    .end local v2           #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_9
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "::onFileChosen:mSyncArrays.length"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    array-length v7, v4

    new-array v3, v7, [Lcom/muvee/video/trimer/MediaDetail;

    .line 1017
    .local v3, mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    array-length v7, v4

    if-lt v1, v7, :cond_c

    .line 1021
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7, v3}, Lcom/muvee/video/trimer/view/ThumbView;->setMediaDetails([Lcom/muvee/video/trimer/MediaDetail;)V

    .line 1023
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mCurrentPlayLocation:I

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v10}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v10

    if-le v7, v10, :cond_d

    .line 1024
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    iget v10, p0, Lcom/muvee/video/trimer/MainActivity;->mCurrentPlayLocation:I

    iget-object v11, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    .line 1028
    :goto_5
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I

    move-result v7

    iput v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 1029
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    if-eqz v7, :cond_e

    .line 1030
    invoke-direct {p0, v14}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 1031
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v7, v8}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    move v7, v8

    .line 1032
    goto/16 :goto_1

    .line 1002
    .end local v3           #mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    .restart local v2       #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_a
    invoke-direct {p0, v1, v4, v9}, Lcom/muvee/video/trimer/MainActivity;->getNearestPositionIndex(I[IZ)I

    move-result v7

    aget v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    add-int/2addr v1, v6

    goto :goto_2

    .line 1008
    :cond_b
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v1

    .line 1007
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1018
    .end local v2           #integers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v3       #mMediaDetails:[Lcom/muvee/video/trimer/MediaDetail;
    :cond_c
    new-instance v7, Lcom/muvee/video/trimer/MediaDetail;

    aget v10, v4, v1

    invoke-direct {v7, v10}, Lcom/muvee/video/trimer/MediaDetail;-><init>(I)V

    aput-object v7, v3, v1

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1026
    :cond_d
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v10}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v10

    iget-object v11, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7, v10, v11, v8, v9}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    goto :goto_5

    :cond_e
    move v7, v9

    .line 1035
    goto/16 :goto_1
.end method

.method private onFileNotFound()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 552
    const-string v1, "com.muvee.video.trimer.MainActivity"

    const-string v2, "::onFileNotFound:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 555
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 556
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 557
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    :cond_0
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    if-eqz v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/ThumbView;->removeRunnable()V

    .line 564
    :cond_1
    const/16 v1, 0xa

    iput v1, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 565
    invoke-direct {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 567
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 568
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "title"

    const v2, 0x7f040010

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v1, "message"

    const v2, 0x7f040006

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, v3, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 571
    return-void
.end method

.method private onResumeOneTime()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 402
    const-string v4, "com.muvee.video.trimer.preference"

    invoke-virtual {p0, v4, v7}, Lcom/muvee/video/trimer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 403
    .local v1, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 404
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.muvee.video.trimer.TRIMER_CLOSED"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 407
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mAction:Ljava/lang/String;

    .line 408
    const/high16 v4, 0x7f03

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->setContentView(I)V

    .line 410
    const v4, 0x7f090001

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/VideoView;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    .line 411
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 412
    const v4, 0x7f090009

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    .line 419
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->createStateListDrawable()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    .line 420
    .local v2, stateListDrawable:Landroid/graphics/drawable/StateListDrawable;
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v4, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 424
    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/muvee/video/trimer/view/TrimBar;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    .line 425
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v4, p0}, Lcom/muvee/video/trimer/view/TrimBar;->setOnTrimBarChangeListener(Lcom/muvee/video/trimer/view/TrimBar$OnTrimBarChangeListener;)V

    .line 426
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f07

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/TrimBar;->setMargine(I)V

    .line 427
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/TrimBar;->setMargineGap(I)V

    .line 430
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/muvee/video/trimer/view/ThumbView;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    .line 431
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 433
    .local v3, values:[I
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    aget v5, v3, v7

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/ThumbView;->setMiddleThumbHeight(F)V

    .line 434
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    new-array v5, v9, [F

    aget v6, v3, v8

    int-to-float v6, v6

    aput v6, v5, v7

    aget v6, v3, v9

    int-to-float v6, v6

    aput v6, v5, v8

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/ThumbView;->setThumbHeights([F)V

    .line 435
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v4, p0}, Lcom/muvee/video/trimer/view/ThumbView;->setOnOutOfMemoryErrorListener(Lcom/muvee/video/trimer/view/ThumbView$OnOutOfMemoryErrorListener;)V

    .line 436
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v4, p0}, Lcom/muvee/video/trimer/view/ThumbView;->setOnErrorListener(Lcom/muvee/video/trimer/view/ThumbView$OnErrorListener;)V

    .line 438
    const v4, 0x7f090008

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    .line 439
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->requestFocus()Z

    .line 442
    const v4, 0x7f090007

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    .line 443
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    .line 447
    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    .line 448
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    .line 450
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v4}, Lcom/muvee/video/trimer/view/TrimBar;->getOutOfMemoryError()Ljava/lang/OutOfMemoryError;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 451
    const-string v4, "com.muvee.video.trimer.MainActivity"

    const-string v5, "::onCreate:mTrimBar.getOutOfMemoryError()!=null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/4 v4, 0x7

    invoke-direct {p0, v4, v7}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    .line 455
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    .line 457
    const-string v4, "com.muvee.video.trimer.TRIM_DATA"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    .line 458
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    const-string v5, "com.muvee.video.trimer.TRIM_LEFT"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/TrimBar;->setTrimLeft(I)V

    .line 459
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    const-string v5, "com.muvee.video.trimer.TRIM_RIGHT"

    const/4 v6, -0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/TrimBar;->setTrimRight(I)V

    .line 460
    const-string v4, "com.muvee.video.trimer.PLAY_CURRENT"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCurrentPlayLocation:I

    .line 461
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    const-string v5, "com.muvee.video.trimer.PLAY_CURRENT"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 463
    const-string v4, "com.muvee.video.trimer.MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "::onResume:mSData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v4, "com.muvee.video.trimer.MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "::onResume:mTrimBar.getTrimLeft()="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string v4, "com.muvee.video.trimer.MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "::onResume:mTrimBar.getTrimRight()="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 468
    sget-object v4, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v4, p0}, Lcom/muvee/video/trimer/ThumbInterface;->setOnProgressUpdateListener(Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;)V

    .line 470
    const-string v4, "com.muvee.video.trimer.MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "::onResume:mSData="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->chooseFile(Landroid/content/SharedPreferences;)V

    .line 473
    return-void
.end method

.method private onSendResult(I)V
    .locals 23
    .parameter "resultCode"

    .prologue
    .line 1669
    const-string v2, "com.muvee.video.trimer.MainActivity"

    const-string v4, "::onSendResult:"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 1673
    .local v14, i:Landroid/content/Intent;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 1675
    .local v13, extras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1677
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    .line 1680
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 1681
    .local v19, sData:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1683
    .local v18, returnCode:I
    if-nez p1, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1684
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 1685
    .local v15, mContentResolver:Landroid/content/ContentResolver;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1686
    .local v12, cv:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 1687
    .local v20, title:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1689
    .local v9, currentTimeMillis:J
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    const-string v2, "date_added"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1691
    const-string v2, "date_modified"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1692
    const-string v2, "_display_name"

    move-object/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1693
    const-string v2, "_size"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/muvee/video/trimer/MainActivity;->mOutFileSize:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1694
    const-string v2, "title"

    move-object/from16 v0, v20

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    const-string v2, "album"

    const-string v4, "Muvee"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    const-string v2, "category"

    const-string v4, "Muvee"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    const-string v2, "datetaken"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1699
    const-string v2, "description"

    const-string v4, "Edited by Muvee"

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    const-string v2, "duration"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/muvee/video/trimer/MainActivity;->mTrimDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1701
    const-string v2, "resolution"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/muvee/video/trimer/MainActivity;->mFrameWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/muvee/video/trimer/MainActivity;->mFrameHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1704
    .local v3, data:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 1705
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    .line 1706
    .local v21, uritype:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1707
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/muvee/video/trimer/MainActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1708
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    .line 1709
    const-string v2, "artist"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1710
    .local v8, columnIndex:I
    const-string v2, "artist"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    const-string v2, "bookmark"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1712
    const-string v2, "bookmark"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    const-string v2, "bucket_display_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1714
    const-string v2, "bucket_display_name"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    const-string v2, "bucket_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1716
    const-string v2, "bucket_id"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1717
    const-string v2, "isprivate"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1718
    const-string v2, "isprivate"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1719
    const-string v2, "language"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1720
    const-string v2, "language"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    const-string v2, "latitude"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1722
    const-string v2, "latitude"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1723
    const-string v2, "longitude"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1724
    const-string v2, "longitude"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1725
    const-string v2, "mini_thumb_magic"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1726
    const-string v2, "mini_thumb_magic"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1727
    const-string v2, "tags"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1728
    const-string v2, "tags"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-string v2, "mime_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 1731
    const-string v2, "mime_type"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    .end local v8           #columnIndex:I
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v21           #uritype:Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video/media"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    .line 1738
    .local v22, videoTable:Landroid/net/Uri;
    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 1739
    .local v16, mNewUri:Landroid/net/Uri;
    if-eqz v16, :cond_5

    .line 1740
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1741
    const/16 v18, -0x1

    .line 1742
    const-string v2, "data2"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    .end local v3           #data:Landroid/net/Uri;
    .end local v9           #currentTimeMillis:J
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v15           #mContentResolver:Landroid/content/ContentResolver;
    .end local v16           #mNewUri:Landroid/net/Uri;
    .end local v20           #title:Ljava/lang/String;
    .end local v22           #videoTable:Landroid/net/Uri;
    :cond_2
    :goto_1
    const-string v2, "data"

    move-object/from16 v0, v19

    invoke-virtual {v13, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v14, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1753
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Lcom/muvee/video/trimer/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 1755
    invoke-direct/range {p0 .. p0}, Lcom/muvee/video/trimer/MainActivity;->resetTrim()V

    .line 1756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    .line 1757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    .line 1758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    if-eqz v2, :cond_3

    .line 1759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v4, 0x3039

    invoke-virtual {v2, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1760
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    .line 1763
    :cond_3
    const-string v2, "com.muvee.video.trimer.preference"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/muvee/video/trimer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1764
    .local v17, mSharedPreferences:Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 1783
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    .line 1784
    return-void

    .line 1708
    .end local v17           #mSharedPreferences:Landroid/content/SharedPreferences;
    .restart local v3       #data:Landroid/net/Uri;
    .restart local v9       #currentTimeMillis:J
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #cv:Landroid/content/ContentValues;
    .restart local v15       #mContentResolver:Landroid/content/ContentResolver;
    .restart local v20       #title:Ljava/lang/String;
    .restart local v21       #uritype:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1745
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v21           #uritype:Ljava/lang/String;
    .restart local v16       #mNewUri:Landroid/net/Uri;
    .restart local v22       #videoTable:Landroid/net/Uri;
    :cond_5
    const-string v2, "com.muvee.video.trimer.MainActivity"

    const-string v4, "Exception mContentResolver.insert failed"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const/16 p1, 0x2

    .line 1747
    const/4 v2, 0x7

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto :goto_1

    .line 1766
    .end local v3           #data:Landroid/net/Uri;
    .end local v9           #currentTimeMillis:J
    .end local v12           #cv:Landroid/content/ContentValues;
    .end local v15           #mContentResolver:Landroid/content/ContentResolver;
    .end local v16           #mNewUri:Landroid/net/Uri;
    .end local v20           #title:Ljava/lang/String;
    .end local v22           #videoTable:Landroid/net/Uri;
    .restart local v17       #mSharedPreferences:Landroid/content/SharedPreferences;
    :pswitch_0
    const v2, 0x7f040019

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1767
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSendResult success  URI = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSendResult success  mOutPath = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/muvee/video/trimer/MainActivity;->mOutPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    .line 1770
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->savePreferences(Landroid/content/SharedPreferences;)V

    goto :goto_2

    .line 1773
    :pswitch_1
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSendResult Cancel i = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSendResult Cancel URI = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual/range {p0 .. p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    .line 1776
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/muvee/video/trimer/MainActivity;->savePreferences(Landroid/content/SharedPreferences;)V

    goto/16 :goto_2

    .line 1780
    :pswitch_2
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onSendResult Error URI = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseFile()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 575
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 576
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v3, "mounted"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 577
    .local v9, isMounted:Ljava/lang/Boolean;
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "external memory mount state: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 579
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 580
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 583
    :try_start_0
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    .line 584
    .local v11, uritype:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 585
    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    .line 606
    .end local v1           #data:Landroid/net/Uri;
    .end local v9           #isMounted:Ljava/lang/Boolean;
    .end local v11           #uritype:Ljava/lang/String;
    :goto_0
    return-object v10

    .line 588
    .restart local v1       #data:Landroid/net/Uri;
    .restart local v9       #isMounted:Ljava/lang/Boolean;
    .restart local v11       #uritype:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "_data"

    aput-object v3, v2, v0

    .line 589
    .local v2, projection:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/muvee/video/trimer/MainActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 590
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 591
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 592
    .local v6, columnIndex:I
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 593
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 596
    .local v10, str:Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v2           #projection:[Ljava/lang/String;
    .end local v6           #columnIndex:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v10           #str:Ljava/lang/String;
    .end local v11           #uritype:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 600
    .local v8, illegalStateException:Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 605
    .end local v1           #data:Landroid/net/Uri;
    .end local v8           #illegalStateException:Ljava/lang/IllegalStateException;
    .end local v9           #isMounted:Ljava/lang/Boolean;
    :cond_1
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseFile: error msData: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private pause(Z)V
    .locals 4
    .parameter "showImageView"

    .prologue
    const/4 v1, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1328
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_0

    .line 1356
    :goto_0
    return-void

    .line 1332
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1333
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1334
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 1336
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1337
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1338
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    .line 1341
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    .line 1342
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1344
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0, v3}, Lcom/muvee/video/trimer/view/ThumbView;->setVisibility(I)V

    .line 1345
    if-eqz p1, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1347
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1348
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1355
    :goto_1
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1352
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private preLoadBitmap()V
    .locals 4

    .prologue
    .line 1512
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(I)V

    .line 1514
    new-instance v0, Lcom/muvee/video/trimer/MainActivity$15;

    invoke-direct {v0, p0}, Lcom/muvee/video/trimer/MainActivity$15;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    .line 1566
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1567
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1577
    :cond_0
    return-void
.end method

.method private resetTrim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1600
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1602
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setTrimLeft(I)V

    .line 1603
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setTrimRight(I)V

    .line 1605
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoFile:Ljava/lang/String;

    .line 1606
    return-void
.end method

.method private savePreferences(Landroid/content/SharedPreferences;)V
    .locals 5
    .parameter "preferences"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1787
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1788
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.muvee.video.trimer.TRIM_DATA"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1789
    const-string v1, "com.muvee.video.trimer.TRIM_LEFT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1790
    const-string v1, "com.muvee.video.trimer.TRIM_RIGHT"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1791
    const-string v1, "com.muvee.video.trimer.PLAY_CURRENT"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1792
    const-string v1, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1793
    const-string v1, "com.muvee.video.trimer.TRIM_FILE_PATH"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1794
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1795
    return-void
.end method

.method private setThumbForImageView()I
    .locals 12

    .prologue
    const/16 v11, 0x3f

    const/4 v5, 0x0

    .line 1458
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v6, :cond_0

    move v3, v5

    .line 1507
    :goto_0
    return v3

    .line 1461
    :cond_0
    const/4 v3, 0x0

    .line 1463
    .local v3, result:I
    :try_start_0
    sget-object v6, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    .line 1464
    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/ThumbView;->getCurrentMediaDetail()Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v7

    iget v7, v7, Lcom/muvee/video/trimer/MediaDetail;->mTime:I

    const/4 v8, 0x0

    const/16 v9, 0x1e0

    .line 1465
    sget v10, Lcom/muvee/video/trimer/MainActivity;->height:I

    mul-int/lit8 v10, v10, 0x2

    add-int/lit8 v10, v10, 0x1

    .line 1463
    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/muvee/video/trimer/ThumbInterface;->getThumbnailEx(IIII)[B

    move-result-object v4

    .line 1467
    .local v4, thumbnail:[B
    const/4 v0, 0x0

    .line 1468
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_3

    .line 1469
    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1470
    const/4 v3, 0x0

    .line 1475
    :goto_1
    if-eqz v0, :cond_4

    .line 1476
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_1

    .line 1477
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 1480
    :cond_1
    const/16 v6, 0x3f

    invoke-static {v0, v6}, Lcom/muvee/video/trimer/util/TrimmerUtil;->getRefelectionThumbDownOnly(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    .line 1481
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1482
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1489
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #thumbnail:[B
    :catch_0
    move-exception v1

    .line 1490
    .local v1, error:Ljava/lang/OutOfMemoryError;
    const-string v6, "com.muvee.video.trimer.MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "::setVideoView:error.getMessage()="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1490
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->getCurrentBitmapDrawable()[B

    move-result-object v6

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/ThumbView;->getCurrentBitmapDrawable()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v5, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1493
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 1494
    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_2

    .line 1495
    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 1497
    :cond_2
    invoke-static {v0, v11}, Lcom/muvee/video/trimer/util/TrimmerUtil;->getRefelectionThumb(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1498
    .local v2, mRefelectionThumb:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1499
    iget-object v5, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1472
    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    .end local v2           #mRefelectionThumb:Landroid/graphics/Bitmap;
    .restart local v4       #thumbnail:[B
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/view/ThumbView;->getCurrentBitmapDrawable()[B

    goto :goto_1

    .line 1486
    :cond_4
    sget-object v6, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v6}, Lcom/muvee/video/trimer/ThumbInterface;->getErrorCode()I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_0

    .line 1503
    .end local v4           #thumbnail:[B
    .restart local v1       #error:Ljava/lang/OutOfMemoryError;
    :cond_5
    sget-object v5, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v5}, Lcom/muvee/video/trimer/ThumbInterface;->getErrorCode()I

    move-result v3

    goto/16 :goto_0
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;
    .locals 5
    .parameter "message"
    .parameter "title"

    .prologue
    .line 350
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 352
    const v3, 0x7f040018

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/video/trimer/MainActivity$12;

    invoke-direct {v4, p0}, Lcom/muvee/video/trimer/MainActivity$12;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 356
    new-instance v3, Lcom/muvee/video/trimer/MainActivity$13;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$13;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 364
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 366
    .local v0, alert:Lcom/htc/widget/HtcAlertDialog;
    return-object v0
.end method

.method private showError(IZ)V
    .locals 6
    .parameter "result"
    .parameter "mode"

    .prologue
    const/4 v5, 0x2

    .line 1610
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1611
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1612
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 1613
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 1614
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1616
    :cond_0
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    if-eqz v2, :cond_1

    .line 1617
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v2}, Lcom/muvee/video/trimer/view/ThumbView;->removeRunnable()V

    .line 1620
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1621
    .local v0, bundle:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 1660
    :pswitch_0
    const-string v2, "title"

    const v3, 0x7f04000f

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1661
    const-string v2, "message"

    const v3, 0x7f040005

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    invoke-virtual {p0, v5, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 1665
    :goto_0
    return-void

    .line 1623
    :pswitch_1
    const-string v2, "title"

    const v3, 0x7f040011

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    const-string v2, "message"

    const v3, 0x7f040007

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0, v5, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1629
    :pswitch_2
    const-string v2, "title"

    const v3, 0x7f040013

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v2, "message"

    const v3, 0x7f04000a

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    invoke-virtual {p0, v5, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1635
    :pswitch_3
    if-eqz p2, :cond_4

    .line 1636
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1637
    .local v1, isMounted:Ljava/lang/Boolean;
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sdcard mounted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1639
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mSpaceExceeded:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1640
    const-string v2, "title"

    const v3, 0x7f04000e

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v2, "message"

    const v3, 0x7f040004

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p0, v5, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto/16 :goto_0

    .line 1645
    :cond_2
    const v2, 0x7f040006

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1646
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    goto/16 :goto_0

    .line 1650
    :cond_3
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    goto/16 :goto_0

    .line 1654
    .end local v1           #isMounted:Ljava/lang/Boolean;
    :cond_4
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->finish()V

    goto/16 :goto_0

    .line 1621
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_0

    .line 1597
    :goto_0
    return-void

    .line 1592
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1594
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks()V

    .line 1595
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1581
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saving cancelled YES/NO "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->showDialog(I)V

    .line 1584
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 765
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    if-nez v1, :cond_0

    .line 806
    :goto_0
    return-void

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 770
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 771
    .local v0, mAudioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    iget v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 772
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    .line 775
    .end local v0           #mAudioManager:Landroid/media/AudioManager;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 802
    :pswitch_0
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks()V

    .line 803
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    goto :goto_0

    .line 777
    :pswitch_1
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->start()V

    goto :goto_0

    .line 780
    :cond_2
    invoke-direct {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->pause(Z)V

    goto :goto_0

    .line 784
    :pswitch_2
    const-string v1, "com.muvee.video.trimer.MainActivity"

    const-string v2, "onClick:: DONE button pressed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/ThumbView;->removeCallbacks()V

    .line 787
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 789
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 790
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    .line 795
    :cond_3
    sget-object v1, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/ThumbInterface;->TrimClose()I

    .line 797
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->doSave()V

    goto :goto_0

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5
    .parameter "mp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 907
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "::onCompletion:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    invoke-direct {p0, v4}, Lcom/muvee/video/trimer/MainActivity;->pause(Z)V

    .line 913
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0, v3}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 914
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->setPositionChanged()V

    .line 916
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v1

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    .line 918
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I

    move-result v0

    iput v0, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 919
    iget v0, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    if-eqz v0, :cond_0

    .line 920
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 921
    iget v0, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v0, v3}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 172
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 174
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 178
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 180
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 183
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 153
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const-string v1, "com.muvee.video.trimer.MainActivity"

    const-string v2, "::onCreate:"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->requestWindowFeature(I)Z

    .line 158
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->setRequestedOrientation(I)V

    .line 161
    sget-object v1, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    iput-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;
    :try_end_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, inflateException:Landroid/view/InflateException;
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "id"
    .parameter "args"

    .prologue
    const v6, 0x7f040018

    const v5, 0x7f040017

    const/4 v4, 0x1

    .line 187
    const-string v2, "com.muvee.video.trimer.MainActivity"

    const-string v3, "::onCreateDialog:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    packed-switch p1, :pswitch_data_0

    .line 345
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    const-string v2, ""

    const v3, 0x7f040001

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3, v4, v4}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    .line 191
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 192
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/muvee/video/trimer/MainActivity$3;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$3;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 199
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    goto :goto_0

    .line 201
    :pswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 202
    const v3, 0x7f040012

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 203
    const v3, 0x7f040009

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 204
    invoke-virtual {p0, v6}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/video/trimer/MainActivity$4;

    invoke-direct {v4, p0}, Lcom/muvee/video/trimer/MainActivity$4;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {p0, v5}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/video/trimer/MainActivity$5;

    invoke-direct {v4, p0, p2}, Lcom/muvee/video/trimer/MainActivity$5;-><init>(Lcom/muvee/video/trimer/MainActivity;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 244
    .local v0, create:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 247
    .end local v0           #create:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_2
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 249
    const v3, 0x7f04000c

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {p0, v6}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/video/trimer/MainActivity$6;

    invoke-direct {v4, p0}, Lcom/muvee/video/trimer/MainActivity$6;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {p0, v5}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/muvee/video/trimer/MainActivity$7;

    invoke-direct {v4, p0}, Lcom/muvee/video/trimer/MainActivity$7;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 274
    new-instance v3, Lcom/muvee/video/trimer/MainActivity$8;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$8;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 285
    new-instance v3, Lcom/muvee/video/trimer/MainActivity$9;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$9;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .local v1, create2:Lcom/htc/widget/HtcAlertDialog;
    move-object v0, v1

    .line 304
    goto/16 :goto_0

    .line 307
    .end local v1           #create2:Lcom/htc/widget/HtcAlertDialog;
    :pswitch_3
    const-string v2, "message"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/muvee/video/trimer/MainActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 309
    :pswitch_4
    new-instance v2, Lcom/muvee/video/trimer/MainActivity$10;

    invoke-direct {v2, p0, p0}, Lcom/muvee/video/trimer/MainActivity$10;-><init>(Lcom/muvee/video/trimer/MainActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 328
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    new-instance v3, Lcom/muvee/video/trimer/MainActivity$11;

    invoke-direct {v3, p0}, Lcom/muvee/video/trimer/MainActivity$11;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 336
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 338
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f040002

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const v3, 0x7f04000d

    invoke-virtual {p0, v3}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 340
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v4}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 341
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, p0}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 343
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 1825
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    .line 1826
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1805
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onKeyDown:keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/16 v0, 0x54

    if-ne v0, p1, :cond_0

    .line 1808
    const/4 v0, 0x1

    .line 1811
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1816
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onKeyLongPress:keyCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    const/16 v0, 0x54

    if-ne v0, p1, :cond_0

    .line 1818
    const/4 v0, 0x1

    .line 1820
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOutOfMemoryError()V
    .locals 2

    .prologue
    .line 1799
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "::onOutOfMemoryError:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    .line 1801
    return-void
.end method

.method protected onPause()V
    .locals 15

    .prologue
    const v14, 0x7f020024

    const/4 v13, 0x3

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 612
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-eqz v7, :cond_0

    .line 613
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->recycleBitmap()V

    .line 616
    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 618
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onPause:mState="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;

    sget-object v9, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    if-ne v7, v9, :cond_1

    .line 622
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v7}, Lcom/muvee/video/trimer/MainActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 624
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    .line 626
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    .line 627
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    .line 628
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    .line 629
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    .line 630
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    .line 631
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    .line 632
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    .line 633
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 634
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    .line 636
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 760
    :goto_0
    return-void

    .line 640
    :cond_1
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onPause: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",this="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    invoke-direct {p0, v11}, Lcom/muvee/video/trimer/MainActivity;->pause(Z)V

    .line 643
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v7, :cond_3

    .line 644
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    if-eqz v7, :cond_2

    .line 645
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 646
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    .line 648
    :cond_2
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    .line 651
    :cond_3
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    if-eqz v7, :cond_4

    .line 652
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    iget-object v9, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 653
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    .line 656
    :cond_4
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->InvokeTrimPause()I

    .line 657
    const-string v7, "com.muvee.video.trimer.MainActivity"

    const-string v9, "::onPause:"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->waitFor()I

    .line 659
    const-string v7, "com.muvee.video.trimer.MainActivity"

    const-string v9, "::onPause:"

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v7, "com.muvee.video.trimer.preference"

    invoke-virtual {p0, v7, v8}, Lcom/muvee/video/trimer/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 662
    .local v3, mSharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 663
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v7, "com.muvee.video.trimer.TRIM_DATA"

    iget-object v9, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 664
    const-string v7, "com.muvee.video.trimer.TRIM_LEFT"

    iget-object v9, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v9}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v9

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 665
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimRight()I

    move-result v6

    .line 666
    .local v6, trimRight:I
    const-string v7, "com.muvee.video.trimer.TRIM_RIGHT"

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 667
    const-string v7, "com.muvee.video.trimer.PLAY_CURRENT"

    iget-object v9, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v9}, Lcom/muvee/video/trimer/view/TrimBar;->getCurrentPlayPosition()I

    move-result v9

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 668
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onPause:trimRight="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    if-eqz v7, :cond_a

    .line 671
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 672
    const v9, 0x7f09000d

    .line 673
    const v10, 0x7f040003

    invoke-virtual {p0, v10}, Lcom/muvee/video/trimer/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 671
    invoke-virtual {v7, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 674
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v9, 0x7f09000b

    invoke-virtual {v7, v9, v14}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 675
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iput v14, v7, Landroid/app/Notification;->icon:I

    .line 677
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v7}, Landroid/app/PendingIntent;->cancel()V

    .line 679
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 681
    .local v5, notificationIntent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-string v9, "com.htc.album"

    const-string v10, "com.htc.album.AlbumMain.ActivityMainDropList"

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 683
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 685
    const/high16 v7, 0x1020

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 687
    const-string v7, "android.intent.action.MAIN"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const/high16 v7, 0x800

    .line 689
    invoke-static {p0, v8, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 692
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iput-object v0, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 694
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v9, 0x3039

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v7, v9, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 695
    const-string v7, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v1, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 699
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :goto_1
    const-string v7, "com.muvee.video.trimer.TRIMER_CLOSED"

    invoke-interface {v1, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 700
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 702
    const-string v7, "com.muvee.video.trimer.TRIM_DATA"

    invoke-interface {v3, v7, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    .line 703
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onPause:mSharedPreferences.getInt(KEY_TRIM_RIGHT, -1);"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "com.muvee.video.trimer.TRIM_RIGHT"

    const/4 v11, -0x1

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const-string v7, "com.muvee.video.trimer.MainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "::onPause:mSData="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/muvee/video/trimer/MainActivity;->mSData:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget-object v7, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/ThumbInterface;->invokeExit()I

    .line 708
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 709
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 711
    :cond_5
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 712
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v7}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 715
    :cond_6
    invoke-virtual {p0, v8}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 716
    invoke-virtual {p0, v13}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 718
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 719
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7}, Lcom/muvee/video/trimer/view/ThumbView;->getMediaDetails()[Lcom/muvee/video/trimer/MediaDetail;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_2
    if-lt v7, v10, :cond_b

    .line 724
    :cond_7
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v7, v12}, Lcom/muvee/video/trimer/view/ThumbView;->setMediaDetails([Lcom/muvee/video/trimer/MediaDetail;)V

    .line 726
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_8

    .line 727
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 728
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 729
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 730
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mRefelectionThumb:Landroid/graphics/Bitmap;

    .line 733
    :cond_8
    sget-object v7, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    iput-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;

    .line 735
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 736
    const-string v7, "audio"

    invoke-virtual {p0, v7}, Lcom/muvee/video/trimer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 737
    .local v2, mAudioManager:Landroid/media/AudioManager;
    iget v7, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    const/16 v9, 0x8

    invoke-virtual {v2, v13, v7, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 738
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    .line 741
    .end local v2           #mAudioManager:Landroid/media/AudioManager;
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 745
    iget-object v7, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    invoke-direct {p0, v7}, Lcom/muvee/video/trimer/MainActivity;->nullViewDrawablesRecursive(Landroid/view/View;)V

    .line 747
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    .line 749
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    .line 750
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    .line 751
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    .line 752
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    .line 753
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    .line 754
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    .line 755
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 756
    iput-object v12, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialogPreLoading:Lcom/htc/app/HtcProgressDialog;

    .line 758
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 759
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    goto/16 :goto_0

    .line 697
    :cond_a
    const-string v7, "com.muvee.video.trimer.TRIMING"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 719
    :cond_b
    aget-object v4, v9, v7

    .line 720
    .local v4, mediaDetail:Lcom/muvee/video/trimer/MediaDetail;
    invoke-virtual {v4, v12}, Lcom/muvee/video/trimer/MediaDetail;->setBitmap([B)V

    .line 719
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public onProgressUpdate(I)V
    .locals 7
    .parameter "progress"

    .prologue
    .line 1198
    iput p1, p0, Lcom/muvee/video/trimer/MainActivity;->mProgress:I

    .line 1200
    const-string v2, "com.muvee.video.trimer.MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "::onProgressUpdate:progress="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1203
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, p1}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 1206
    :cond_0
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mSpaceCheckFlag:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1207
    invoke-static {}, Lcom/muvee/video/trimer/util/TrimmerUtil;->getAvailableSize()J

    move-result-wide v0

    .line 1208
    .local v0, remain:J
    const-wide/32 v2, 0x1400000

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1209
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mSpaceExceeded:Ljava/lang/Boolean;

    .line 1213
    .end local v0           #remain:J
    :cond_1
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/muvee/video/trimer/MainActivity;->THUMB_INTERFACE:Lcom/muvee/video/trimer/ThumbInterface;

    invoke-virtual {v2}, Lcom/muvee/video/trimer/ThumbInterface;->isCancled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1214
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1215
    const v3, 0x7f09000e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1214
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1216
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1217
    const v3, 0x7f09000f

    const/16 v4, 0x64

    iget v5, p0, Lcom/muvee/video/trimer/MainActivity;->mProgress:I

    const/4 v6, 0x0

    .line 1216
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1219
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v3, 0x3039

    iget-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1221
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 371
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onResume: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 373
    const-string v0, "com.muvee.video.trimer.MainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::onResume:intent.getData()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/muvee/video/trimer/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;

    sget-object v1, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    if-ne v0, v1, :cond_0

    .line 376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 377
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 378
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->removeDialog(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public onTrimBarCurrentPositionChanged(IZ)V
    .locals 3
    .parameter "currentPosition"
    .parameter "left"

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_0

    .line 1325
    :goto_0
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    goto :goto_0
.end method

.method public onTrimBarPressed(I)V
    .locals 6
    .parameter "currentPosition"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 1268
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v2, :cond_1

    .line 1289
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/muvee/video/trimer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1273
    .local v0, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 1274
    .local v1, mLocal:I
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    if-eq v2, v1, :cond_2

    .line 1275
    iput v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    .line 1278
    :cond_2
    iget v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    if-lez v2, :cond_3

    .line 1279
    invoke-virtual {v0, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1280
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    .line 1284
    :cond_3
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1285
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 1286
    iget-object v2, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    iget-object v3, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v2, p1, v3, v4, v4}, Lcom/muvee/video/trimer/view/ThumbView;->setCurrentPosition(ILandroid/view/View;ZZ)I

    .line 1287
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I

    goto :goto_0
.end method

.method public onTrimBarReleased(Lcom/muvee/video/trimer/view/TrimBar$State;)V
    .locals 6
    .parameter "state"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1293
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v1, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return-void

    .line 1296
    :cond_1
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onTrimBarReleased: state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    if-ne p1, v1, :cond_2

    .line 1298
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v1, v5}, Lcom/muvee/video/trimer/view/ThumbView;->setVisibility(I)V

    .line 1299
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v5}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1300
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1301
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1302
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v2, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-virtual {v1, v2}, Lcom/muvee/video/trimer/view/TrimBar;->setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 1303
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1304
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->setThumbForImageView()I

    move-result v1

    iput v1, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    .line 1305
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    if-eqz v1, :cond_0

    .line 1306
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->onSendResult(I)V

    .line 1307
    iget v1, p0, Lcom/muvee/video/trimer/MainActivity;->mResult:I

    invoke-direct {p0, v1, v4}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto :goto_0

    .line 1311
    :cond_2
    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1312
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/muvee/video/trimer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1313
    .local v0, mAudioManager:Landroid/media/AudioManager;
    const/4 v1, 0x3

    iget v2, p0, Lcom/muvee/video/trimer/MainActivity;->mVolume:I

    invoke-virtual {v0, v1, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1314
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mMuteFlag:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public onTrimLeftPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1225
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "::onTrimLeftPressed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0, v2}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1231
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1232
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1233
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1234
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0, v2}, Lcom/muvee/video/trimer/view/ThumbView;->setVisibility(I)V

    .line 1238
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 1239
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1240
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onTrimRightPressed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1247
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_1

    .line 1264
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    const-string v0, "com.muvee.video.trimer.MainActivity"

    const-string v1, "::onTrimRightPressed:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0, v2}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1252
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 1253
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1254
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1255
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1257
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0, v2}, Lcom/muvee/video/trimer/view/ThumbView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PAUSE:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 1260
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1261
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 384
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 385
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::onWindowFocusChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;

    sget-object v2, Lcom/muvee/video/trimer/MainActivity$VTState;->NEW:Lcom/muvee/video/trimer/MainActivity$VTState;

    if-ne v1, v2, :cond_0

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/muvee/video/trimer/MainActivity;->onResumeOneTime()V

    .line 389
    sget-object v1, Lcom/muvee/video/trimer/MainActivity$VTState;->INITILIED:Lcom/muvee/video/trimer/MainActivity$VTState;

    iput-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mState:Lcom/muvee/video/trimer/MainActivity$VTState;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, runtimeException:Ljava/lang/RuntimeException;
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::onWindowFocusChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v1, "com.muvee.video.trimer.MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "::onWindowFocusChanged:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 394
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/muvee/video/trimer/MainActivity;->showError(IZ)V

    goto :goto_0
.end method

.method public setContentView(I)V
    .locals 3
    .parameter "layoutResID"

    .prologue
    .line 1832
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1831
    check-cast v0, Landroid/view/ViewGroup;

    .line 1834
    .local v0, mainView:Landroid/view/ViewGroup;
    invoke-virtual {p0, v0}, Lcom/muvee/video/trimer/MainActivity;->setContentView(Landroid/view/View;)V

    .line 1835
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1840
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 1842
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity;->m_contentView:Landroid/view/ViewGroup;

    .line 1843
    return-void
.end method

.method public start()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1379
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    if-nez v0, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1383
    :cond_0
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1384
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1386
    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnablePreLoading:Ljava/lang/Runnable;

    .line 1391
    :cond_1
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->getCurrentPlayPosition()I

    move-result v0

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1392
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getTrimLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setCurrentPlayPosition(I)V

    .line 1394
    :cond_2
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v0}, Lcom/muvee/video/trimer/view/TrimBar;->IsPositionChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1395
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    invoke-virtual {v1}, Lcom/muvee/video/trimer/view/TrimBar;->getCurrentPlayPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 1398
    :cond_3
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    sget-object v1, Lcom/muvee/video/trimer/view/TrimBar$State;->PLAY:Lcom/muvee/video/trimer/view/TrimBar$State;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->setState(Lcom/muvee/video/trimer/view/TrimBar$State;)V

    .line 1400
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    if-eqz v0, :cond_4

    .line 1401
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1402
    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    .line 1405
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    .line 1406
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mHandler3:Landroid/os/Handler;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1408
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1409
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mImageReflectionView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1410
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mThumbView:Lcom/muvee/video/trimer/view/ThumbView;

    invoke-virtual {v0, v3}, Lcom/muvee/video/trimer/view/ThumbView;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 1413
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1414
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mButtonDone:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1416
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mCheckBoxPlay:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1417
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 1418
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1419
    iput-object v4, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    .line 1422
    :cond_5
    new-instance v0, Lcom/muvee/video/trimer/MainActivity$14;

    invoke-direct {v0, p0}, Lcom/muvee/video/trimer/MainActivity$14;-><init>(Lcom/muvee/video/trimer/MainActivity;)V

    iput-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    .line 1453
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity;->mTrimBar:Lcom/muvee/video/trimer/view/TrimBar;

    iget-object v1, p0, Lcom/muvee/video/trimer/MainActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/muvee/video/trimer/view/TrimBar;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
