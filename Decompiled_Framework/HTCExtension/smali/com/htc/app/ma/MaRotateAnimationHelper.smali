.class public Lcom/htc/app/ma/MaRotateAnimationHelper;
.super Ljava/lang/Object;
.source "MaRotateAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/app/ma/MaRotateAnimationHelper$MaAnimationSet;
    }
.end annotation


# static fields
.field private static final DURATION_LANDSCAPE:J = 0x1f4L

.field private static final DURATION_PORTRAIT:J = 0x1f4L

.field private static final HEIGHT_LANDSCAPE:I = 0x238

.field private static final HEIGHT_PORTRAIT:I = 0x3e0

.field private static final HIDE_STATUSBAR_ENABLED:Z = true

.field private static final LANDSCAPE_LEFT:I = 0x1

.field private static final LANDSCAPE_RIGHT:I = 0x3

.field private static final PORTRAIT:I = 0x0

.field private static final PORTRAIT_UP_SIDE_DOWN:I = 0x2

.field private static final RAISED_PRIORITY:I = -0x8

.field private static final ROTATE_ANIM_LAND2PORT_LEFT:I = 0x20000003

.field private static final ROTATE_ANIM_LAND2PORT_RIGHT:I = 0x20000004

.field private static final ROTATE_ANIM_PORT2LAND_LEFT:I = 0x20000001

.field private static final ROTATE_ANIM_PORT2LAND_RIGHT:I = 0x20000002

.field private static final SCREEN_LONG:I = 0x400

.field private static final SCREEN_SHORT:I = 0x258

.field private static final START_OFFSET_LANDSCAPE:J = 0x32L

.field private static final START_OFFSET_PORTRAIT:J = 0x32L

.field private static final STATUS_BAR_HEIGHT:I = 0x20

.field private static final UNKNOWN:I = -0x1

.field private static final WIDTH_LANDSCAPE:I = 0x400

.field private static final WIDTH_PORTRAIT:I = 0x258

.field private static mOriginalPadding:I

.field private static mPriority:I


# instance fields
.field private mAngle:I

.field private mCurrOrientation:I

.field private mDecelate:Landroid/view/animation/DecelerateInterpolator;

.field private mMaMainActivity:Lcom/htc/app/ma/MaMainActivity;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/app/ma/MaMainActivity;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    iput v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mDecelate:Landroid/view/animation/DecelerateInterpolator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    iput-object p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mMaMainActivity:Lcom/htc/app/ma/MaMainActivity;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/app/ma/MaRotateAnimationHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    return v0
.end method

.method static synthetic access$002(Lcom/htc/app/ma/MaRotateAnimationHelper;I)I
    .locals 0

    iput p1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/app/ma/MaRotateAnimationHelper;)I
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/app/ma/MaRotateAnimationHelper;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/app/ma/MaRotateAnimationHelper;->judgeDirectionIsLeft(I)Z

    move-result v0

    return v0
.end method

.method private judgeDirectionIsLeft(I)Z
    .locals 6

    const/16 v5, 0xe1

    const/16 v4, 0x87

    const/4 v3, 0x3

    const/16 v2, 0x2d

    if-le p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-nez v2, :cond_3

    if-ne v1, v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput v1, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    return v0

    :cond_0
    if-le p1, v4, :cond_1

    if-gt p1, v5, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    if-le p1, v5, :cond_2

    const/16 v2, 0x13b

    if-gt p1, v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-ne v2, v3, :cond_4

    if-nez v1, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mCurrOrientation:I

    if-le v1, v2, :cond_5

    const/4 v0, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static raisePriority(Z)V
    .locals 3

    const/4 v2, -0x8

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    if-eqz p0, :cond_1

    if-eq v0, v2, :cond_0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPriority:I

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0
.end method

.method private static showStatusBar(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 4

    const/16 v2, 0x800

    const/16 v1, 0x400

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    sget v1, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    add-int/lit8 v1, v1, 0x20

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/app/ma/MaRotateAnimationHelper$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lcom/htc/app/ma/MaRotateAnimationHelper$1;-><init>(Lcom/htc/app/ma/MaRotateAnimationHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public performRotateAnimation(Landroid/app/Activity;Landroid/view/ViewGroup;Z)V
    .locals 4

    iget-boolean v3, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mPaused:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v3, p0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mAngle:I

    invoke-direct {p0, v3}, Lcom/htc/app/ma/MaRotateAnimationHelper;->judgeDirectionIsLeft(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz p3, :cond_3

    if-eqz v2, :cond_2

    const v0, 0x20000003

    goto :goto_0

    :cond_2
    const v0, 0x20000004

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_0

    const v0, 0x20000001

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setup(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sput v0, Lcom/htc/app/ma/MaRotateAnimationHelper;->mOriginalPadding:I

    return-void
.end method
