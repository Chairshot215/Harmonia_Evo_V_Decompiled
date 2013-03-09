.class public Lcom/android/settings/MediaFormat;
.super Landroid/app/Activity;
.source "MediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mFinalButton:Landroid/widget/Button;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mFinalText:Landroid/widget/TextView;

.field private mFinalView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mInitiateText:Landroid/widget/TextView;

.field private mStorageType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    .line 64
    new-instance v0, Lcom/android/settings/MediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$1;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 123
    new-instance v0, Lcom/android/settings/MediaFormat$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MediaFormat$2;-><init>(Lcom/android/settings/MediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MediaFormat;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/MediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/MediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04004f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0800e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    const v1, 0x7f0800e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 147
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mFinalText:Landroid/widget/TextView;

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 152
    :cond_1
    return-void
.end method

.method private establishInitialState()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    const v1, 0x7f0800e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/MediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setContentView(Landroid/view/View;)V

    .line 179
    iget v0, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 181
    const v0, 0x7f0c0108

    invoke-virtual {p0, v0}, Lcom/android/settings/MediaFormat;->setTitle(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateText:Landroid/widget/TextView;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/MediaFormat;->mInitiateButton:Landroid/widget/Button;

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 188
    :cond_1
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 93
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0c0a70

    invoke-virtual {p0, v1}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0a71

    invoke-virtual {p0, v2}, Lcom/android/settings/MediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 101
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 103
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 109
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishFinalConfirmationState()V

    goto :goto_0

    .line 111
    :cond_1
    if-nez p2, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->finish()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 196
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 197
    const-string v1, "extra.storage.type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/MediaFormat;->mStorageType:I

    .line 203
    :cond_0
    iput-object v3, p0, Lcom/android/settings/MediaFormat;->mInitialView:Landroid/view/View;

    .line 204
    iput-object v3, p0, Lcom/android/settings/MediaFormat;->mFinalView:Landroid/view/View;

    .line 205
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MediaFormat;->mInflater:Landroid/view/LayoutInflater;

    .line 207
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 208
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/MediaFormat;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/settings/MediaFormat;->establishInitialState()V

    .line 221
    :cond_0
    return-void
.end method
