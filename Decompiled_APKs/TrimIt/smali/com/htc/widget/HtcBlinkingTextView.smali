.class public Lcom/htc/widget/HtcBlinkingTextView;
.super Landroid/widget/TextView;
.source "HtcBlinkingTextView.java"


# static fields
.field private static final BLINKING_EVENT:I = 0x1

.field private static final LOG:Z = true

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
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    .line 44
    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    new-instance v0, Lcom/htc/widget/HtcBlinkingTextView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcBlinkingTextView$1;-><init>(Lcom/htc/widget/HtcBlinkingTextView;)V

    iput-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    .line 57
    invoke-direct {p0}, Lcom/htc/widget/HtcBlinkingTextView;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/HtcBlinkingTextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/HtcBlinkingTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/HtcBlinkingTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->internalSetVisibility(I)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0x1f4

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    .line 63
    iput v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    .line 64
    iput v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    .line 65
    iput v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    .line 66
    return-void
.end method

.method private internalSetVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 142
    const-string v0, "HtcBlinkingTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalSetVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableBlinking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method private triggerTimer(I)V
    .locals 5
    .parameter "timeout"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mBlinkingControl:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 153
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 3
    .parameter "text"
    .parameter "type"

    .prologue
    .line 70
    const-string v0, "HtcBlinkingTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setText="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableBlinking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 76
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    return-void
.end method

.method public setTextBlinkOnOffTime(II)V
    .locals 0
    .parameter "periodOnMsec"
    .parameter "periodOffMsec"

    .prologue
    .line 112
    iput p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    .line 113
    iput p2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOffMsec:I

    .line 114
    return-void
.end method

.method public setTextBlinkable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 80
    const-string v0, "HtcBlinkingTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextBlinkable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableBlinking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    if-ne v0, p1, :cond_0

    .line 93
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    .line 88
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_1

    .line 89
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    goto :goto_0
.end method

.method public setTextBlinkingSleep(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 96
    const-string v0, "HtcBlinkingTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTextBlinkingSleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableBlinking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-ne v0, p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    .line 104
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    goto :goto_0

    .line 107
    :cond_1
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4
    .parameter "visibility"

    .prologue
    const/4 v3, 0x1

    .line 118
    const-string v0, "HtcBlinkingTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mEnableBlinking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sleep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p1, :cond_1

    .line 123
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-ne v0, v3, :cond_0

    .line 124
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    .line 125
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mEnableBlinking:Z

    if-ne v0, v3, :cond_0

    .line 126
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mTextBlinkingOnMsec:I

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcBlinkingTextView;->triggerTimer(I)V

    .line 129
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    .line 139
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    if-nez v0, :cond_2

    .line 134
    iget v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/HtcBlinkingTextView;->mIdBlinkingTimer:I

    .line 136
    :cond_2
    iput-boolean v3, p0, Lcom/htc/widget/HtcBlinkingTextView;->mSleepBlinking:Z

    .line 138
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcBlinkingTextView;->internalSetVisibility(I)V

    goto :goto_0
.end method
