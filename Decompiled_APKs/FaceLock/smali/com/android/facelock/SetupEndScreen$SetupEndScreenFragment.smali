.class public Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;
.super Landroid/preference/PreferenceFragment;
.source "SetupEndScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/facelock/SetupEndScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupEndScreenFragment"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBottomInfoText:Landroid/widget/TextView;

.field private mCancelButton:Landroid/widget/Button;

.field private mContinueButton:Landroid/widget/Button;

.field private mHeaderText:Landroid/widget/TextView;

.field private mInfoText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 55
    const-string v0, "SetupEndScreen"

    iput-object v0, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0005

    if-ne v0, v1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-string v0, "SetupEndScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid button, id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/facelockutil/FaceLockUtil;->moveGalleryFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    const-string v1, "SetupEndScreen"

    const-string v2, "moving temp gallery file failed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/io/IOException;
    const-string v1, "SetupEndScreen"

    const-string v2, "IOException in moving temp gallery file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 90
    const/high16 v1, 0x7f04

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mHeaderText:Landroid/widget/TextView;

    .line 93
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mInfoText:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 96
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mBottomInfoText:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mBottomInfoText:Landroid/widget/TextView;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mBottomInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mCancelButton:Landroid/widget/Button;

    .line 101
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mCancelButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 103
    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mContinueButton:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mContinueButton:Landroid/widget/Button;

    const v2, 0x7f070018

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 105
    iget-object v1, p0, Lcom/android/facelock/SetupEndScreen$SetupEndScreenFragment;->mContinueButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 114
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 120
    return-void
.end method
