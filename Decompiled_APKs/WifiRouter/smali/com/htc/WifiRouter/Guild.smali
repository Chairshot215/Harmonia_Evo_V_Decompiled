.class public Lcom/htc/WifiRouter/Guild;
.super Landroid/app/Activity;
.source "Guild.java"


# instance fields
.field private cancelableByBroadcast:Z

.field private key:Ljava/lang/String;

.field private mHotspotStateFilter:Landroid/content/IntentFilter;

.field private mOkButton:Landroid/widget/Button;

.field private mOklistener:Landroid/view/View$OnClickListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTextView1:Landroid/widget/TextView;

.field private mTextView2:Landroid/widget/TextView;

.field private mTextView3:Landroid/widget/TextView;

.field private mTextView4:Landroid/widget/TextView;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/htc/WifiRouter/Guild$1;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/Guild$1;-><init>(Lcom/htc/WifiRouter/Guild;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Lcom/htc/WifiRouter/Guild$2;

    invoke-direct {v0, p0}, Lcom/htc/WifiRouter/Guild$2;-><init>(Lcom/htc/WifiRouter/Guild;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mOklistener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initLayout()V
    .locals 7

    .prologue
    const v6, 0x7f09001c

    const/4 v3, 0x2

    const v2, 0x7f0b000e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    const v0, 0x7f030005

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->setContentView(I)V

    .line 68
    const v0, 0x7f0b0010

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mOkButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/htc/WifiRouter/Guild;->mOklistener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    invoke-virtual {p0}, Lcom/htc/WifiRouter/Guild;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ssid"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Lcom/htc/WifiRouter/Guild;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    .line 72
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 73
    const v0, 0x7f0b0011

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    .line 74
    const v0, 0x7f0b0012

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b0013

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    .line 78
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x94

    if-ne v0, v1, :cond_1

    .line 79
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 80
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f09001b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001d

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 88
    :cond_1
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_3

    .line 89
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f09000e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 90
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001d

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 98
    :cond_3
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_5

    .line 99
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 100
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 101
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f090021

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f090020

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :cond_5
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x38

    if-ne v0, v1, :cond_7

    .line 109
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 110
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 116
    :cond_6
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001d

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 118
    :cond_7
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x51

    if-ne v0, v1, :cond_9

    .line 119
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 120
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 122
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    .line 124
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 126
    :cond_8
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001d

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 129
    :cond_9
    invoke-virtual {p0, v2}, Lcom/htc/WifiRouter/Guild;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 130
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView1:Landroid/widget/TextView;

    const v1, 0x7f090019

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView4:Landroid/widget/TextView;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView2:Landroid/widget/TextView;

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-virtual {p0, v6, v1}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    .line 134
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001e

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 136
    :cond_a
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mTextView3:Landroid/widget/TextView;

    const v1, 0x7f09001d

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->ssid:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/htc/WifiRouter/Guild;->key:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/htc/WifiRouter/Guild;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->requestWindowFeature(I)Z

    .line 45
    invoke-direct {p0}, Lcom/htc/WifiRouter/Guild;->initLayout()V

    .line 46
    invoke-virtual {p0}, Lcom/htc/WifiRouter/Guild;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cancelable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/WifiRouter/Guild;->cancelableByBroadcast:Z

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 61
    iget-boolean v0, p0, Lcom/htc/WifiRouter/Guild;->cancelableByBroadcast:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/WifiRouter/Guild;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 52
    iget-boolean v0, p0, Lcom/htc/WifiRouter/Guild;->cancelableByBroadcast:Z

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/WifiRouter/Guild;->mHotspotStateFilter:Landroid/content/IntentFilter;

    .line 54
    iget-object v0, p0, Lcom/htc/WifiRouter/Guild;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/htc/WifiRouter/Guild;->mHotspotStateFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/htc/WifiRouter/Guild;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    :cond_0
    return-void
.end method
