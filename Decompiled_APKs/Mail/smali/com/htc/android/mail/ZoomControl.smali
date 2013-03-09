.class public Lcom/htc/android/mail/ZoomControl;
.super Landroid/widget/ZoomControls;
.source "ZoomControl.java"


# static fields
.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field mPrivateHandler:Landroid/os/Handler;

.field mZoomControlRunnable:Ljava/lang/Runnable;

.field mZoomControls:Landroid/widget/ZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Lcom/htc/android/mail/ZoomControl;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/ZoomControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/htc/android/mail/ZoomControl$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/ZoomControl$1;-><init>(Lcom/htc/android/mail/ZoomControl;)V

    iput-object v0, p0, Lcom/htc/android/mail/ZoomControl;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ZoomControl;->mPrivateHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 13
    sget-wide v0, Lcom/htc/android/mail/ZoomControl;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method private fade(IFF)V
    .locals 3
    .parameter "visibility"
    .parameter "startAlpha"
    .parameter "endAlpha"

    .prologue
    .line 31
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 32
    .local v0, anim:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 33
    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ZoomControl;->startAnimation(Landroid/view/animation/Animation;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/ZoomControl;->setVisibility(I)V

    .line 35
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .prologue
    .line 27
    const/16 v0, 0x8

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/mail/ZoomControl;->fade(IFF)V

    .line 28
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/mail/ZoomControl;->fade(IFF)V

    .line 24
    return-void
.end method

.method public showControlsFromMove()V
    .locals 4

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/htc/android/mail/ZoomControl;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/ZoomControl;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ZoomControl;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/android/mail/ZoomControl;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Lcom/htc/android/mail/ZoomControl;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/ZoomControl;->show()V

    goto :goto_0
.end method
