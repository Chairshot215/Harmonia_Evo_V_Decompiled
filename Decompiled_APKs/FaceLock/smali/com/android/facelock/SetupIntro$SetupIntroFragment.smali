.class public Lcom/android/facelock/SetupIntro$SetupIntroFragment;
.super Landroid/preference/PreferenceFragment;
.source "SetupIntro.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/SetupIntro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupIntroFragment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInfoText:Landroid/widget/TextView;

.field private mShowTutorial:Z

.field private mTutorialShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/facelock/SetupIntro;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 56
    const-string v0, "SetupIntro"

    iput-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method private displayIntro()V
    .locals 2

    .prologue
    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mTutorialShowing:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070001

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 139
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 141
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 142
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f070014

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 143
    return-void
.end method

.method private displayTutorial()V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mTutorialShowing:Z

    .line 129
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 130
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 131
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mInfoText:Landroid/widget/TextView;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mCancelButton:Landroid/widget/Button;

    const v1, 0x7f070028

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 133
    iget-object v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mContinueButton:Landroid/widget/Button;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 134
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0004

    if-ne v0, v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 91
    :goto_0
    return-void

    .line 72
    :cond_0
    sget-boolean v0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0005

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 76
    :cond_1
    iget-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mTutorialShowing:Z

    if-eqz v0, :cond_2

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mShowTutorial:Z

    .line 80
    invoke-direct {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->displayIntro()V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/facelock/SetupFaceLock;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    const/high16 v0, 0x200

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "PendingIntent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 86
    const-string v2, "PendingIntent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v1}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    if-nez p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "showTutorial"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mShowTutorial:Z

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v0, "showTutorial"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mShowTutorial:Z

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 108
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mHeaderText:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mInfoText:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mCancelButton:Landroid/widget/Button;

    .line 113
    iget-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mContinueButton:Landroid/widget/Button;

    .line 116
    iget-object v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-boolean v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mShowTutorial:Z

    if-eqz v1, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->displayTutorial()V

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    invoke-direct {p0}, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->displayIntro()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 155
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 167
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 161
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 147
    const-string v0, "showTutorial"

    iget-boolean v1, p0, Lcom/android/facelock/SetupIntro$SetupIntroFragment;->mShowTutorial:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 149
    return-void
.end method
