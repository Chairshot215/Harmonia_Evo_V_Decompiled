.class public Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;
.super Landroid/preference/PreferenceFragment;
.source "SetupFaceLock.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/facelock/Draw$DrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/SetupFaceLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupFaceLockFragment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static mRotation:I

.field private static volatile sCount:I

.field private static volatile sEnrollmentComplete:Z

.field private static volatile sFinalize:Z

.field private static sFoundId:Z

.field private static sFrontCameraId:I

.field private static volatile sInitialized:Z

.field private static volatile sPaused:Z

.field private static volatile sPreviewData:[B

.field private static volatile sThreadRunning:Z


# instance fields
.field private mAddToSetup:Z

.field private mCamera:Landroid/hardware/Camera;

.field private final mContinueRunnable:Ljava/lang/Runnable;

.field private final mEnrollRunnable:Ljava/lang/Runnable;

.field private mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

.field private final mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mLastFrameTime:J

.field private mLeftButton:Landroid/widget/Button;

.field private mOnResumePending:Z

.field private mOval:Lcom/android/facelock/Draw;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreview:Lcom/android/facelockutil/Preview;

.field private mRightButton:Landroid/widget/Button;

.field private mStartTime:J

.field private mStatusText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    const-class v0, Lcom/android/facelock/SetupFaceLock;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->$assertionsDisabled:Z

    .line 98
    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z

    .line 99
    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sEnrollmentComplete:Z

    .line 100
    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    .line 101
    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFinalize:Z

    .line 102
    sput-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPaused:Z

    .line 105
    const/4 v0, -0x1

    sput v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    .line 117
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 118
    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFoundId:Z

    .line 119
    :goto_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 120
    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 121
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v1, :cond_2

    .line 122
    sput v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFrontCameraId:I

    .line 123
    sput-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFoundId:Z

    .line 127
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 78
    goto :goto_0

    .line 119
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHandler:Landroid/os/Handler;

    .line 112
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLastFrameTime:J

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    .line 139
    new-instance v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$1;

    invoke-direct {v0, p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$1;-><init>(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V

    iput-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollRunnable:Ljava/lang/Runnable;

    .line 155
    new-instance v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$2;

    invoke-direct {v0, p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$2;-><init>(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V

    iput-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mContinueRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->displayResult()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->enableContinue()V

    return-void
.end method

.method static synthetic access$1000(ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->setFinalize(ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;Lcom/android/facelockutil/FaceLockUtil$EnrollState;)Lcom/android/facelockutil/FaceLockUtil$EnrollState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    return-object p1
.end method

.method static synthetic access$400()[B
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPreviewData:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelockutil/Preview;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLastFrameTime:J

    return-wide p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPaused:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private displayResult()V
    .locals 6

    .prologue
    const v5, 0x7f070006

    const/high16 v4, 0x7f06

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 415
    sget-object v0, Lcom/android/facelock/SetupFaceLock$1;->$SwitchMap$com$android$facelockutil$FaceLockUtil$EnrollState:[I

    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mEnrollState:Lcom/android/facelockutil/FaceLockUtil$EnrollState;

    invoke-virtual {v1}, Lcom/android/facelockutil/FaceLockUtil$EnrollState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 463
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iput-boolean v2, v0, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 464
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 417
    :pswitch_0
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->pokeWakeLock()V

    .line 418
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-virtual {v0}, Lcom/android/facelock/Draw;->newFace()V

    goto :goto_0

    .line 423
    :pswitch_1
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iput-boolean v2, v0, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 424
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 425
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 427
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 428
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 431
    :pswitch_2
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->pokeWakeLock()V

    .line 432
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iput-boolean v2, v0, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 433
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 434
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 436
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 440
    :pswitch_3
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->pokeWakeLock()V

    .line 441
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iput-boolean v2, v0, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 442
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 445
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f070009

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 446
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 449
    :pswitch_4
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->pokeWakeLock()V

    .line 454
    sget-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sEnrollmentComplete:Z

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sEnrollmentComplete:Z

    .line 456
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-virtual {v0}, Lcom/android/facelock/Draw;->finish()V

    .line 457
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 415
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private enableContinue()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f07000d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/facelockutil/Preview;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRightButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 152
    return-void
.end method

.method private getFilesPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SetupFaceLock"

    const-string v2, "IOException in getFilesPath()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 568
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private keepOrientation()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 199
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 202
    .local v0, display:Landroid/view/Display;
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    sput v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v2, v3, Landroid/content/res/Configuration;->orientation:I

    .line 205
    .local v2, orientation:I
    const/4 v1, 0x0

    .line 206
    .local v1, isLandscapeDevice:Z
    if-ne v2, v6, :cond_1

    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-eqz v3, :cond_2

    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-eq v3, v6, :cond_2

    :cond_1
    if-ne v2, v5, :cond_3

    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-eq v3, v5, :cond_2

    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v7, :cond_3

    .line 210
    :cond_2
    const/4 v1, 0x1

    .line 213
    :cond_3
    if-eqz v1, :cond_8

    .line 215
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-nez v3, :cond_5

    .line 216
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 240
    :cond_4
    :goto_0
    return-void

    .line 218
    :cond_5
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v6, :cond_6

    .line 219
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 221
    :cond_6
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v5, :cond_7

    .line 222
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 224
    :cond_7
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v7, :cond_4

    .line 225
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 230
    :cond_8
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-eqz v3, :cond_9

    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v6, :cond_a

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 232
    :cond_a
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v5, :cond_b

    .line 233
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 235
    :cond_b
    sget v3, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    if-ne v3, v7, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private pokeWakeLock()V
    .locals 4

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 411
    return-void
.end method

.method private static declared-synchronized setFinalize(ZZ)Z
    .locals 3
    .parameter "newValue"
    .parameter "threadExit"

    .prologue
    const/4 v0, 0x0

    .line 483
    const-class v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    monitor-enter v1

    if-nez p1, :cond_0

    if-eqz p0, :cond_5

    :try_start_0
    sget-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z

    if-nez v2, :cond_5

    .line 484
    :cond_0
    sget-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFinalize:Z

    if-nez v2, :cond_1

    if-eqz p0, :cond_3

    .line 485
    :cond_1
    sget-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    if-eqz v2, :cond_2

    .line 487
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setupFinalize()V

    .line 489
    :cond_2
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFinalize:Z

    .line 490
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    .line 492
    :cond_3
    if-eqz p1, :cond_4

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_4
    :goto_0
    monitor-exit v1

    return v0

    .line 495
    :cond_5
    :try_start_1
    sput-boolean p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFinalize:Z

    .line 496
    sget-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized setThreadRunning(Z)Z
    .locals 3
    .parameter "newValue"

    .prologue
    .line 470
    const-class v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sEnrollmentComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 473
    :goto_0
    monitor-exit v2

    return v0

    .line 471
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z

    .line 472
    .local v0, result:Z
    sput-boolean p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 470
    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public doOnResume()V
    .locals 4

    .prologue
    .line 379
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStartTime:J

    .line 380
    sget-boolean v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    if-nez v2, :cond_0

    .line 392
    :goto_0
    return-void

    .line 382
    :cond_0
    :try_start_0
    sget v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFrontCameraId:I

    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    .line 383
    iget-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    iget-object v3, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v3}, Lcom/android/facelockutil/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 384
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 385
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    sget v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFrontCameraId:I

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 386
    iget-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v2, v0}, Lcom/android/facelockutil/Preview;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 387
    iget-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v2}, Lcom/android/facelockutil/Preview;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    .end local v0           #cameraInfo:Landroid/hardware/Camera$CameraInfo;
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v2, "SetupFaceLock"

    const-string v3, "Runtime exception during camera.open"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0004

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 195
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0005

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 175
    :cond_1
    iget-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    if-eqz v0, :cond_2

    .line 176
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setupWriteGallery()Z

    .line 177
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setupWriteTempGallery()Z

    .line 183
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "PendingIntent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/app/PendingIntent;

    .line 187
    .local v7, pendingIntent:Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_1
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v6

    .line 190
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "SetupFaceLock"

    const-string v1, "Sending pendingIntent failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 245
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 247
    invoke-static {p0}, Lcom/android/facelock/SetupFaceLock;->access$202(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    .line 248
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 249
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->keepOrientation()V

    .line 250
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "addToSetup"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    .line 251
    iget-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 254
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v0, 0x0

    const v5, 0x7f070005

    const/4 v4, 0x0

    .line 261
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deleteTempGallery"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getFilesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/facelockutil/FaceLockUtil;->deleteTempGalleryFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 263
    const-string v1, "SetupFaceLock"

    const-string v2, "deleting temp gallery file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 332
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "deleteGallery"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 269
    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getFilesPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/facelockutil/FaceLockUtil;->deleteGalleryFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 270
    const-string v1, "SetupFaceLock"

    const-string v2, "deleting gallery file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 275
    :cond_3
    const v1, 0x7f040002

    invoke-virtual {p1, v1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 277
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a0006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/facelockutil/Preview;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    .line 278
    iget-object v2, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, "window"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {v2, v1}, Lcom/android/facelockutil/Preview;->setWindowManager(Landroid/view/WindowManager;)V

    .line 280
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v1, p0}, Lcom/android/facelockutil/Preview;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 282
    const v1, 0x7f0a000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/facelock/Draw;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    .line 283
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-virtual {v1, p0}, Lcom/android/facelock/Draw;->setListener(Lcom/android/facelock/Draw$DrawListener;)V

    .line 284
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    .line 285
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    .line 289
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStatusText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLeftButton:Landroid/widget/Button;

    .line 292
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRightButton:Landroid/widget/Button;

    .line 295
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 296
    iget-boolean v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    if-eqz v1, :cond_4

    .line 297
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRightButton:Landroid/widget/Button;

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 300
    :cond_4
    sget-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sFoundId:Z

    if-nez v1, :cond_5

    .line 301
    const-string v1, "SetupFaceLock"

    const-string v2, "Front camera not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 307
    :cond_5
    invoke-static {v4, v4}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->setFinalize(ZZ)Z

    move-result v1

    if-nez v1, :cond_6

    .line 308
    sput v4, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sCount:I

    .line 309
    sput-boolean v4, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sEnrollmentComplete:Z

    .line 311
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getFilesPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/facelockutil/FaceLockUtil;->initialize(ZLandroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    .line 315
    :cond_6
    sget-boolean v1, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    if-nez v1, :cond_7

    .line 316
    const-string v1, "SetupFaceLock"

    const-string v2, "initialization failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 322
    :cond_7
    iget-boolean v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mAddToSetup:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setupReadGallery()Z

    move-result v1

    if-nez v1, :cond_8

    .line 323
    const-string v1, "SetupFaceLock"

    const-string v2, "Read gallery failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sput-boolean v4, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sInitialized:Z

    .line 325
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 329
    :cond_8
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    sget v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sCount:I

    iput v2, v1, Lcom/android/facelock/Draw;->mCount:I

    .line 330
    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-static {}, Lcom/android/facelockutil/FaceLockUtil;->setupGetMaxEnrollImages()I

    move-result v2

    iput v2, v1, Lcom/android/facelock/Draw;->mMaxCount:I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 338
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 340
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sput v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mRotation:I

    .line 341
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->setFinalize(ZZ)Z

    .line 342
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/facelock/SetupFaceLock;->access$202(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;

    .line 343
    return-void
.end method

.method public onDrawComplete()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mContinueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 166
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 397
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOnResumePending:Z

    .line 400
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPaused:Z

    .line 401
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 403
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v0, v1}, Lcom/android/facelockutil/Preview;->setCamera(Landroid/hardware/Camera;)V

    .line 404
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 405
    iput-object v1, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    .line 407
    :cond_0
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 11
    .parameter "data"
    .parameter "camera"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 504
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-virtual {v5}, Lcom/android/facelock/Draw;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 505
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V

    .line 506
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v5}, Lcom/android/facelockutil/Preview;->fade()V

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 510
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 511
    .local v0, currentTime:J
    sget-boolean v5, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sThreadRunning:Z

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLastFrameTime:J

    const-wide/16 v7, 0x294

    add-long/2addr v5, v7

    cmp-long v5, v0, v5

    if-ltz v5, :cond_0

    .line 513
    :cond_2
    invoke-static {v10}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->setThreadRunning(Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 514
    iput-wide v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mLastFrameTime:J

    .line 517
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iget-boolean v5, v5, Lcom/android/facelock/Draw;->mEnrolling:Z

    if-nez v5, :cond_3

    .line 518
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/facelock/Draw;->mStartTime:J

    .line 519
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOval:Lcom/android/facelock/Draw;

    iput-boolean v10, v5, Lcom/android/facelock/Draw;->mEnrolling:Z

    .line 523
    :cond_3
    iget-wide v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_4

    .line 524
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 525
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mStartTime:J

    .line 527
    sput-boolean v9, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPaused:Z

    .line 530
    :cond_4
    iget-object v5, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mPreview:Lcom/android/facelockutil/Preview;

    invoke-virtual {v5}, Lcom/android/facelockutil/Preview;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 531
    .local v3, size:Landroid/hardware/Camera$Size;
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    new-array v2, v5, [B

    .line 532
    .local v2, image:[B
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v6, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    invoke-static {p1, v9, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    sput-object v2, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->sPreviewData:[B

    .line 536
    new-instance v4, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;

    invoke-direct {v4, p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment$3;-><init>(Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;)V

    .line 553
    .local v4, t:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ThreadGroup;->getMaxPriority()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 554
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 367
    iget-object v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOnResumePending:Z

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOnResumePending:Z

    .line 373
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->doOnResume()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 348
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOnResumePending:Z

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->mOnResumePending:Z

    .line 350
    invoke-virtual {p0}, Lcom/android/facelock/SetupFaceLock$SetupFaceLockFragment;->doOnResume()V

    .line 352
    :cond_0
    return-void
.end method
