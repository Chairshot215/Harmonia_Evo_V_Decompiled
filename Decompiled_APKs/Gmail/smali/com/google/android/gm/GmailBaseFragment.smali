.class public Lcom/google/android/gm/GmailBaseFragment;
.super Landroid/app/Fragment;
.source "GmailBaseFragment.java"


# instance fields
.field private final mUiHandler:Lcom/google/android/gm/UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 12
    new-instance v0, Lcom/google/android/gm/UiHandler;

    invoke-direct {v0}, Lcom/google/android/gm/UiHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-void
.end method


# virtual methods
.method protected getUiHandler()Lcom/google/android/gm/UiHandler;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 16
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 18
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 19
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 46
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 47
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 32
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 33
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 40
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 25
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseFragment;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 26
    return-void
.end method
