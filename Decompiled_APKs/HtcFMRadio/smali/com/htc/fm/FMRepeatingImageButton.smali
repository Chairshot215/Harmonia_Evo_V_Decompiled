.class public Lcom/htc/fm/FMRepeatingImageButton;
.super Landroid/widget/ImageButton;
.source "FMRepeatingImageButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;
    }
.end annotation


# static fields
.field private static final mFastInterval1:J = 0x64L

.field private static final mFastInterval2:J = 0x64L

.field private static final mFastInterval3:J = 0x32L

.field private static final mFastInterval4:J = 0x14L

.field private static final mNormalInterval:J = 0x64L


# instance fields
.field private mFastEnabled:Z

.field private mInterval:J

.field private mListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

.field private mRepeatCount:I

.field private mRepeater:Ljava/lang/Runnable;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fm/FMRepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    const v0, 0x1010072

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fm/FMRepeatingImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 97
    new-instance v0, Lcom/htc/fm/FMRepeatingImageButton$1;

    invoke-direct {v0, p0}, Lcom/htc/fm/FMRepeatingImageButton$1;-><init>(Lcom/htc/fm/FMRepeatingImageButton;)V

    iput-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mFastEnabled:Z

    .line 34
    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/htc/fm/FMRepeatingImageButton;->setLongClickable(Z)V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/htc/fm/FMRepeatingImageButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/htc/fm/FMRepeatingImageButton;->doRepeat(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/fm/FMRepeatingImageButton;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    return-wide v0
.end method

.method private doRepeat(Z)V
    .locals 10
    .parameter "last"

    .prologue
    const-wide/16 v8, 0x64

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 108
    .local v6, now:J
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    if-eqz v0, :cond_0

    .line 109
    iget-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    sub-long v2, v6, v0

    .line 110
    .local v2, duration:J
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    if-eqz p1, :cond_1

    const/4 v4, -0x1

    :goto_0
    move-object v1, p0

    move v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;->onRepeat(Landroid/view/View;JIZ)V

    .line 112
    iget-boolean v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mFastEnabled:Z

    if-nez v0, :cond_2

    .line 127
    .end local v2           #duration:J
    :cond_0
    :goto_1
    return-void

    .line 110
    .restart local v2       #duration:J
    :cond_1
    iget v4, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeatCount:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeatCount:I

    goto :goto_0

    .line 115
    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-lez v0, :cond_3

    .line 116
    iput-wide v8, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 118
    :cond_3
    const-wide/16 v0, 0x7d0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 119
    iput-wide v8, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 121
    :cond_4
    const-wide/16 v0, 0xfa0

    cmp-long v0, v2, v0

    if-lez v0, :cond_5

    .line 122
    const-wide/16 v0, 0x32

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 124
    :cond_5
    const-wide/16 v0, 0x1770

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    .line 125
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    goto :goto_1
.end method


# virtual methods
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 82
    sparse-switch p1, :sswitch_data_0

    .line 94
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageButton;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 86
    :sswitch_0
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/fm/FMRepeatingImageButton;->doRepeat(Z)V

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    .line 91
    :cond_1
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    goto :goto_0

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x64

    const/4 v4, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeatCount:I

    .line 65
    iput-wide v5, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 66
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 70
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRepeatingImageButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 71
    iget-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 72
    invoke-direct {p0, v4}, Lcom/htc/fm/FMRepeatingImageButton;->doRepeat(Z)V

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    .line 75
    :cond_1
    iput-wide v5, p0, Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J

    .line 77
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 2

    .prologue
    .line 53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mStartTime:J

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeatCount:I

    .line 55
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton;->mRepeater:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fm/FMRepeatingImageButton;->post(Ljava/lang/Runnable;)Z

    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public setFastEnabled(Z)V
    .locals 0
    .parameter "fast"

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/htc/fm/FMRepeatingImageButton;->mFastEnabled:Z

    .line 132
    return-void
.end method

.method public setRepeatListener(Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;J)V
    .locals 0
    .parameter "l"
    .parameter "interval"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/fm/FMRepeatingImageButton;->mListener:Lcom/htc/fm/FMRepeatingImageButton$RepeatListener;

    .line 47
    return-void
.end method
