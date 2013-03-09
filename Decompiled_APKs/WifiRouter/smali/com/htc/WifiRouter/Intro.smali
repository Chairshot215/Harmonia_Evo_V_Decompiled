.class public Lcom/htc/WifiRouter/Intro;
.super Landroid/app/Activity;
.source "Intro.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Intro"


# instance fields
.field private mOkButton:Landroid/widget/Button;

.field private mOklistener:Landroid/view/View$OnClickListener;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/htc/WifiRouter/Intro$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/Intro$1;-><init>(Lcom/htc/WifiRouter/Intro;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/Intro;->mOklistener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initLayout()V
    .locals 6

    .prologue
    const v5, 0x7f090010

    const/4 v4, 0x0

    const v3, 0x7f0b0019

    .line 39
    const v1, 0x7f030007

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/Intro;->setContentView(I)V

    .line 40
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    iput-object v1, p0, Lcom/htc/WifiRouter/Intro;->mOkButton:Landroid/widget/Button;

    .line 41
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mOkButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/WifiRouter/Intro;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 43
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    .line 44
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    .line 45
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x94

    if-ne v1, v2, :cond_0

    .line 46
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 47
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f090012

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 48
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f090013

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 50
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 51
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f09006a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 53
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_2

    .line 54
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v1, v5}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 55
    invoke-virtual {p0, v5}, Lcom/htc/WifiRouter/Intro;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, dev:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f090014

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/htc/WifiRouter/Intro;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f090015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 58
    .end local v0           #dev:Ljava/lang/String;
    :cond_2
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x38

    if-ne v1, v2, :cond_3

    .line 59
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 60
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f090017

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 62
    :cond_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x51

    if-ne v1, v2, :cond_4

    .line 63
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f09000b

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 64
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 65
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 67
    :cond_4
    invoke-virtual {p0, v3}, Lcom/htc/WifiRouter/Intro;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    const v2, 0x7f090008

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 68
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView1:Landroid/widget/TextView;

    const v2, 0x7f090009

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 69
    iget-object v1, p0, Lcom/htc/WifiRouter/Intro;->mTextView2:Landroid/widget/TextView;

    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/htc/WifiRouter/Intro;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "callFromOther"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 28
    .local v0, callByOtherActivity:Z
    sget-object v2, Lcom/htc/WifiRouter/WifiRouter;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 29
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, intent:Landroid/content/Intent;
    const-class v2, Lcom/htc/WifiRouter/WifiRouter;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 31
    invoke-virtual {p0, v1}, Lcom/htc/WifiRouter/Intro;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {p0}, Lcom/htc/WifiRouter/Intro;->finish()V

    .line 34
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Intro;->requestWindowFeature(I)Z

    .line 35
    invoke-direct {p0}, Lcom/htc/WifiRouter/Intro;->initLayout()V

    .line 36
    return-void
.end method
