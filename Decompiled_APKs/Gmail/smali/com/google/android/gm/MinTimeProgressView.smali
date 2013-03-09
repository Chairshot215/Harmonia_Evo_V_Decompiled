.class public Lcom/google/android/gm/MinTimeProgressView;
.super Landroid/widget/ProgressBar;
.source "MinTimeProgressView.java"


# static fields
.field private static sMinDelay:I

.field private static sMinShowTime:I


# instance fields
.field private final mDelayedHide:Ljava/lang/Runnable;

.field private final mDelayedShow:Ljava/lang/Runnable;

.field private mDismissed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mStartTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/MinTimeProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const v0, 0x7f11000b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mDismissed:Z

    .line 42
    new-instance v0, Lcom/google/android/gm/MinTimeProgressView$1;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MinTimeProgressView$1;-><init>(Lcom/google/android/gm/MinTimeProgressView;)V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Lcom/google/android/gm/MinTimeProgressView$2;

    invoke-direct {v0, p0}, Lcom/google/android/gm/MinTimeProgressView$2;-><init>(Lcom/google/android/gm/MinTimeProgressView;)V

    iput-object v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/MinTimeProgressView;->sMinShowTime:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/MinTimeProgressView;->sMinDelay:I

    .line 40
    return-void
.end method

.method static synthetic access$001(Lcom/google/android/gm/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/MinTimeProgressView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mDismissed:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/android/gm/MinTimeProgressView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-wide p1, p0, Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J

    return-wide p1
.end method

.method static synthetic access$301(Lcom/google/android/gm/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$401(Lcom/google/android/gm/MinTimeProgressView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private hide()V
    .locals 6

    .prologue
    .line 58
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gm/MinTimeProgressView;->mDismissed:Z

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J

    sub-long v0, v2, v4

    .line 60
    .local v0, diff:J
    sget v2, Lcom/google/android/gm/MinTimeProgressView;->sMinShowTime:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 64
    :cond_0
    const/16 v2, 0x8

    #calls: Landroid/widget/ProgressBar;->setVisibility(I)V
    invoke-static {p0, v2}, Lcom/google/android/gm/MinTimeProgressView;->access$401(Lcom/google/android/gm/MinTimeProgressView;I)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/gm/MinTimeProgressView;->mDelayedHide:Ljava/lang/Runnable;

    sget v4, Lcom/google/android/gm/MinTimeProgressView;->sMinShowTime:I

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private show()V
    .locals 4

    .prologue
    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mStartTime:J

    .line 76
    iget-object v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gm/MinTimeProgressView;->mDelayedShow:Ljava/lang/Runnable;

    sget v2, Lcom/google/android/gm/MinTimeProgressView;->sMinDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 77
    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/MinTimeProgressView;->mDismissed:Z

    .line 84
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 94
    :goto_0
    return-void

    .line 86
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/MinTimeProgressView;->show()V

    goto :goto_0

    .line 89
    :sswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/MinTimeProgressView;->hide()V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
