.class public Lcom/htc/widget/RepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "RepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/RepeatingImageButton$RepeatListener;
    }
.end annotation


# instance fields
.field private mInterval:J

.field private mListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/RepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/htc/widget/RepeatingImageButton;->mInterval:J

    .line 102
    new-instance v0, Lcom/htc/widget/RepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/RepeatingImageButton$1;-><init>(Lcom/htc/widget/RepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 50
    invoke-virtual {p0, v2}, Lcom/htc/widget/RepeatingImageButton;->setFocusable(Z)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/htc/widget/RepeatingImageButton;->setLongClickable(Z)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/RepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/widget/RepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/widget/RepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/htc/widget/RepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 7
    .parameter "last"

    .prologue
    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    .local v0, now:J
    iget-object v2, p0, Lcom/htc/widget/RepeatingImageButton;->mListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    if-eqz v2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/htc/widget/RepeatingImageButton;->mListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    iget-wide v4, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    sub-long v4, v0, v4

    if-eqz p1, :cond_1

    const/4 v2, -0x1

    :goto_0
    invoke-interface {v3, p0, v4, v5, v2}, Lcom/htc/widget/RepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JI)V

    .line 116
    :cond_0
    return-void

    .line 114
    :cond_1
    iget v2, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v6, v2, 0x1

    iput v6, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeatCount:I

    goto :goto_0
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v2, 0x0

    .line 89
    sparse-switch p1, :sswitch_data_0

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 93
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 94
    iget-wide v0, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/widget/RepeatingImageButton;->doRepeat(Z)V

    .line 96
    iput-wide v2, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    goto :goto_0

    .line 89
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 76
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/RepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 79
    iget-wide v0, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, v2}, Lcom/htc/widget/RepeatingImageButton;->doRepeat(Z)V

    .line 81
    iput-wide v3, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    .line 84
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/widget/RepeatingImageButton;->mStartTime:J

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeatCount:I

    .line 70
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/RepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public setRepeatListener(Lcom/htc/widget/RepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/widget/RepeatingImageButton;->mListener:Lcom/htc/widget/RepeatingImageButton$RepeatListener;

    .line 63
    iput-wide p2, p0, Lcom/htc/widget/RepeatingImageButton;->mInterval:J

    .line 64
    return-void
.end method
