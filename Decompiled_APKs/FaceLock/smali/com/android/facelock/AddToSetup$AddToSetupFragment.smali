.class public Lcom/android/facelock/AddToSetup$AddToSetupFragment;
.super Landroid/preference/PreferenceFragment;
.source "AddToSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/AddToSetup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddToSetupFragment"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInfoText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/facelock/AddToSetup;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 55
    const-string v0, "AddToSetup"

    iput-object v0, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0004

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 77
    :goto_0
    return-void

    .line 68
    :cond_0
    sget-boolean v0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0005

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/facelock/SetupFaceLock;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    const-string v1, "addToSetup"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 89
    const/high16 v1, 0x7f04

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070019

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(I)V

    .line 93
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mHeaderText:Landroid/widget/TextView;

    .line 94
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f07001a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 95
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mInfoText:Landroid/widget/TextView;

    .line 96
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mCancelButton:Landroid/widget/Button;

    .line 99
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f070028

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 100
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mContinueButton:Landroid/widget/Button;

    .line 103
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mContinueButton:Landroid/widget/Button;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 104
    iget-object v1, p0, Lcom/android/facelock/AddToSetup$AddToSetupFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 112
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 113
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 125
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 119
    return-void
.end method
