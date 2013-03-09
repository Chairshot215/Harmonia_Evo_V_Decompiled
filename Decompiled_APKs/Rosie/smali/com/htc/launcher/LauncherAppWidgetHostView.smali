.class public Lcom/htc/launcher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionDownX:F

.field private mLastMotionDownY:F

.field private mLastMotionMoveX:F

.field private mLastMotionMoveY:F

.field private mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

.field private m_nSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 39
    sget v0, Lcom/htc/launcher/settings/SettingUtil;->sTouchSlop:I

    iput v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->m_nSlop:I

    .line 45
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/LauncherAppWidgetHostView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/launcher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/launcher/LauncherAppWidgetHostView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/htc/launcher/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/launcher/LauncherAppWidgetHostView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownX:F

    return v0
.end method

.method static synthetic access$400(Lcom/htc/launcher/LauncherAppWidgetHostView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveX:F

    return v0
.end method

.method static synthetic access$500(Lcom/htc/launcher/LauncherAppWidgetHostView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownY:F

    return v0
.end method

.method static synthetic access$600(Lcom/htc/launcher/LauncherAppWidgetHostView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveY:F

    return v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->m_nSlop:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/launcher/LauncherAppWidgetHostView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 113
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/htc/launcher/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 117
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/launcher/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 125
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/htc/launcher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 128
    :cond_0
    return-void
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-boolean v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v1, :cond_1

    .line 57
    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 58
    const/4 v0, 0x1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownX:F

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveX:F

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionDownY:F

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveY:F

    .line 67
    invoke-direct {p0}, Lcom/htc/launcher/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_0

    .line 71
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveX:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mLastMotionMoveY:F

    goto :goto_0

    .line 76
    :pswitch_2
    iput-boolean v0, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 77
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/htc/launcher/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/htc/launcher/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v1}, Lcom/htc/launcher/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 1
    .parameter "remoteViews"

    .prologue
    .line 132
    sget-object v0, Lcom/htc/launcher/Launcher;->sDefaultAppWidgetHost:Lcom/htc/launcher/LauncherAppWidgetHost;

    iget-boolean v0, v0, Lcom/htc/launcher/LauncherAppWidgetHost;->mListening:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 135
    :cond_0
    return-void
.end method
