.class public Lcom/android/settings/framework/activity/storage/HtcMediaFormat;
.super Landroid/app/Fragment;
.source "HtcMediaFormat.java"


# static fields
.field private static final KEYGUARD_REQUEST:I = 0x37


# instance fields
.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field mStorageType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    .line 107
    new-instance v0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat$1;-><init>(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/framework/activity/storage/HtcMediaFormat;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->showFinalConfirmation()V

    return-void
.end method

.method private establishInitialState(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 7
    .parameter "inflater"

    .prologue
    .line 65
    const v5, 0x7f040050

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, initialView:Landroid/view/View;
    const v5, 0x7f0800e8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 68
    .local v2, initialText:Landroid/widget/TextView;
    const v5, 0x7f0800e9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, initialButton:Landroid/widget/Button;
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, argument:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 78
    const-string v5, "extra.storage.type"

    const/4 v6, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    .line 83
    :cond_0
    iget v5, p0, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->mStorageType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 84
    const v5, 0x7f0c00fe

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 86
    const v5, 0x7f0c00fc

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 91
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/HtcDeviceFlags$Info;->isTabletDevice()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 94
    .local v4, layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v5, 0x5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    const/16 v5, 0x8

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 98
    .end local v4           #layoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    return-object v3
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3
    .parameter "request"

    .prologue
    .line 121
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const v1, 0x7f0c0a70

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0c0a71

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private showFinalConfirmation()V
    .locals 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/framework/activity/storage/HtcMediaFormatConfirm;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 162
    .local v0, f:Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/htc/preference/HtcPreferenceActivity;->startPreferenceFragment(Landroid/app/Fragment;Z)V

    .line 164
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 129
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    const/16 v0, 0x37

    if-eq p1, v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->showFinalConfirmation()V

    goto :goto_0

    .line 139
    :cond_2
    if-nez p2, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/framework/activity/storage/HtcMediaFormat;->establishInitialState(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
