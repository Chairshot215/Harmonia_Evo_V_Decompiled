.class public Lcom/android/htcdialer/widget/DialerKeypad;
.super Landroid/widget/LinearLayout;
.source "DialerKeypad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/widget/DialerKeypad$Type;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "DialerKeypad"


# instance fields
.field private mConfig:Landroid/content/res/Configuration;

.field private mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    sget-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->UNDEFINEDE:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    iput-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mConfig:Landroid/content/res/Configuration;

    .line 70
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->init()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    sget-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->UNDEFINEDE:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    iput-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 66
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mConfig:Landroid/content/res/Configuration;

    .line 75
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->init()V

    .line 76
    return-void
.end method

.method private getKeypad()Landroid/view/View;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    iget v0, v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->index:I

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/DialerKeypad;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 126
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 89
    sget-boolean v1, Lcom/android/htcdialer/util/BuildUtils;->SENSE_LANDSCAPE:Z

    if-eqz v1, :cond_0

    .line 90
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/widget/DialerKeypad;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f08

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 93
    .local v0, visible:I
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/DialerKeypad;->setVisibility(I)V

    goto :goto_0
.end method

.method private setType(Lcom/android/htcdialer/widget/DialerKeypad$Type;Z)V
    .locals 3
    .parameter "type"
    .parameter "force"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->getKeypad()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 114
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->getKeypad()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    :cond_1
    iget v1, p1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->index:I

    invoke-virtual {p0, v1}, Lcom/android/htcdialer/widget/DialerKeypad;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, keypad:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iput-object p1, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    goto :goto_0
.end method


# virtual methods
.method public getDialKeypad()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->DIAL_KEYPAD:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    iget v0, v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->index:I

    invoke-virtual {p0, v0}, Lcom/android/htcdialer/widget/DialerKeypad;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 148
    invoke-static {}, Lcom/android/htcdialer/HtcIpDialActivity;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const v2, 0x202001b

    invoke-virtual {p0, v2}, Lcom/android/htcdialer/widget/DialerKeypad;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 150
    .local v1, zero:Landroid/view/ViewGroup;
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, ip:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .end local v0           #ip:Landroid/view/View;
    .end local v1           #zero:Landroid/view/ViewGroup;
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 155
    return-void
.end method

.method public onRecieveFromIME()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/htcdialer/widget/DialerKeypad;->mType:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    sget-object v1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/android/htcdialer/widget/DialerKeypad;->getKeypad()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/htcdialer/util/ConfigUtils;->isDockMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    const/16 p1, 0x8

    .line 141
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 142
    return-void
.end method

.method public toggleHandwriting(Lcom/android/htcdialer/widget/DialerKeypad$Type;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/widget/DialerKeypad;->setType(Lcom/android/htcdialer/widget/DialerKeypad$Type;Z)V

    .line 104
    return-void
.end method

.method public toggleKeypad()V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->DIAL_KEYPAD:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/htcdialer/widget/DialerKeypad;->setType(Lcom/android/htcdialer/widget/DialerKeypad$Type;Z)V

    .line 100
    return-void
.end method
