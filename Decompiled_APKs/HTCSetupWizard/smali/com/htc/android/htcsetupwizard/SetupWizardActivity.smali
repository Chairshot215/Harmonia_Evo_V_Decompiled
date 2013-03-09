.class public Lcom/htc/android/htcsetupwizard/SetupWizardActivity;
.super Lcom/htc/android/htcsetupwizard/MainActivity;
.source "SetupWizardActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OOBE_Relauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/android/htcsetupwizard/MainActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected broadcastHome()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method protected checkSetupWizardHasRun()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method protected disableSelf(Z)V
    .locals 0
    .parameter "bDisableSelf"

    .prologue
    .line 57
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcsetupwizard/MainActivity;->mLaunchByIcon:Z

    .line 40
    const v0, 0x1030006

    invoke-virtual {p0, v0}, Lcom/htc/android/htcsetupwizard/SetupWizardActivity;->setTheme(I)V

    .line 42
    invoke-super {p0, p1}, Lcom/htc/android/htcsetupwizard/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method
