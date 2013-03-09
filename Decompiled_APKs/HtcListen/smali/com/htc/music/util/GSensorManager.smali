.class public Lcom/htc/music/util/GSensorManager;
.super Ljava/lang/Object;
.source "GSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;,
        Lcom/htc/music/util/GSensorManager$OrientationListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_TIMEOUT:I = 0x2710

.field private static final MSG_WHAT_CHECKTIMEOUT:I = 0x0

.field public static final ORIENTATION_MODE_DONTCARE:I = 0x4

.field public static final ORIENTATION_MODE_ILANDSCAPE:I = 0x3

.field public static final ORIENTATION_MODE_IPORTRAIT:I = 0x2

.field public static final ORIENTATION_MODE_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_MODE_PORTRAIT:I = 0x0

.field public static final ORIENTATION_MODE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "[GSensorManager]"


# instance fields
.field private final SURFACE_ROTATIONS:[I

.field private mContext:Landroid/content/Context;

.field private mIsEnabled:Z

.field private mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

.field private mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

.field private mOrientationMode:I

.field private mTempOrientation:I

.field private mUiHandler:Landroid/os/Handler;

.field private mWaitAnimationEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I

    iput-object p1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/htc/music/util/GSensorManager$OrientationListener;

    iget-object v1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/htc/music/util/GSensorManager$OrientationListener;-><init>(Lcom/htc/music/util/GSensorManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-direct {p0}, Lcom/htc/music/util/GSensorManager;->init()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/music/util/GSensorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/music/util/GSensorManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/music/util/GSensorManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/music/util/GSensorManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->SURFACE_ROTATIONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/util/GSensorManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/util/GSensorManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/music/util/GSensorManager;I)I
    .locals 0

    iput p1, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/music/util/GSensorManager;)I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/music/util/GSensorManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/htc/music/util/GSensorManager$1;

    invoke-direct {v0, p0}, Lcom/htc/music/util/GSensorManager$1;-><init>(Lcom/htc/music/util/GSensorManager;)V

    iput-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    iput-boolean v2, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    return-void
.end method

.method public enable()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->enable()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z

    return-void
.end method

.method public finalize()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->disable()V

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/htc/music/util/GSensorManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public getOrientationMode()I
    .locals 1

    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    return v0
.end method

.method public onAnimationEnd()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->enable()V

    iput-boolean v1, p0, Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z

    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-nez v0, :cond_1

    iput v1, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onPortrait()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-ne v0, v2, :cond_2

    iput v2, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onLandscape()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/music/util/GSensorManager;->mTempOrientation:I

    if-ne v0, v3, :cond_0

    iput v3, p0, Lcom/htc/music/util/GSensorManager;->mOrientationMode:I

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    invoke-interface {v0}, Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;->onILandscape()V

    goto :goto_0
.end method

.method public setOrientationChangedListener(Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/GSensorManager;->mListener:Lcom/htc/music/util/GSensorManager$OnOrientationChangedListener;

    return-void
.end method
