.class public Lcom/htc/widget/HtcBlinkingTextView;
.super Landroid/widget/TextView;
.source "HtcBlinkingTextView.java"


# static fields
.field private static final BLINKING_EVENT:I = 0x1

.field private static final LOG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HtcBlinkingTextView"


# instance fields
.field private mBlinkingControl:Landroid/os/Handler;

.field private mEnableBlinking:Z

.field private mIdBlinkingTimer:I

.field private mSleepBlinking:Z

.field private mTextBlinkingOffMsec:I

.field private mTextBlinkingOnMsec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcBlinkingTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcBlinkingTextView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->internalSetVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 3

    const/16 v2, 0x1f4

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    iput v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    iput v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    iput v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    return-void
.end method

.method private internalSetVisibility(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private triggerTimer(I)V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTextBlinkOnOffTime(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    iput p2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    return-void
.end method

.method public setTextBlinkable(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    goto :goto_0
.end method

.method public setTextBlinkingSleep(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    :cond_2
    iput-boolean v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->internalSetVisibility(I)V

    goto :goto_0
.end method
