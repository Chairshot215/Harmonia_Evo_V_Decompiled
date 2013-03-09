.class public Lcom/htc/Weather/widget/CenterButton;
.super Landroid/widget/LinearLayout;
.source "CenterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/Weather/widget/CenterButton$1;,
        Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;
    }
.end annotation


# instance fields
.field private mBoolSwitch:Z

.field private mContext:Landroid/content/Context;

.field private mDownString1:Ljava/lang/String;

.field private mDownString2:Ljava/lang/String;

.field private mDownText:Landroid/widget/TextView;

.field private mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private mMoreDetail:Ljava/lang/String;

.field private mUpText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mMoreDetail:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString1:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString2:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    .line 50
    iput-object p1, p0, Lcom/htc/Weather/widget/CenterButton;->mContext:Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Lcom/htc/Weather/widget/CenterButton;->initView()V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/htc/Weather/widget/CenterButton;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/Weather/widget/CenterButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    return v0
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 57
    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/CenterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    .line 58
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    const v0, 0x7f0c000c

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/CenterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mUpText:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f0c000e

    invoke-virtual {p0, v0}, Lcom/htc/Weather/widget/CenterButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mUpText:Landroid/widget/TextView;

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mContext:Landroid/content/Context;

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mMoreDetail:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public setDownText(Ljava/lang/String;Z)V
    .locals 4
    .parameter "text"
    .parameter "needSwitch"

    .prologue
    const/16 v1, 0x8

    const v2, -0xffffff

    .line 67
    iput-object p1, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString1:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-boolean p2, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    .line 76
    if-eqz p2, :cond_3

    .line 77
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    iput-boolean p2, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    .line 80
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    if-nez v0, :cond_2

    .line 81
    new-instance v0, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;-><init>(Lcom/htc/Weather/widget/CenterButton;Lcom/htc/Weather/widget/CenterButton$1;)V

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    iget-object v1, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    invoke-virtual {v1, v2}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 86
    :cond_3
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    invoke-virtual {v0, v2}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setDownText2(J)V
    .locals 1
    .parameter "time"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mMoreDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString2:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public showText(Z)V
    .locals 4
    .parameter "showtext"

    .prologue
    .line 108
    if-eqz p1, :cond_1

    .line 109
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    iget-object v1, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    const v2, -0xffffff

    invoke-virtual {v1, v2}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :cond_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mDownText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/Weather/widget/CenterButton;->mDownString1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    goto :goto_0
.end method

.method public stopTextSwitch()V
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/Weather/widget/CenterButton;->mBoolSwitch:Z

    .line 125
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    const v1, -0xffffff

    invoke-virtual {v0, v1}, Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;->removeMessages(I)V

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/Weather/widget/CenterButton;->mHandler:Lcom/htc/Weather/widget/CenterButton$TextSwitchHandler;

    .line 128
    return-void
.end method
