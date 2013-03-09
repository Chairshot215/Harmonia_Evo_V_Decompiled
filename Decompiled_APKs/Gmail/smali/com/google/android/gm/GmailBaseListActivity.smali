.class public abstract Lcom/google/android/gm/GmailBaseListActivity;
.super Landroid/app/ListActivity;
.source "GmailBaseListActivity.java"

# interfaces
.implements Lcom/google/android/gm/RestrictedActivity;


# instance fields
.field private final mUiHandler:Lcom/google/android/gm/UiHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 10
    new-instance v0, Lcom/google/android/gm/UiHandler;

    invoke-direct {v0}, Lcom/google/android/gm/UiHandler;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public getUiHandler()Lcom/google/android/gm/UiHandler;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 14
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 17
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 30
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 31
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 37
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 38
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 23
    iget-object v0, p0, Lcom/google/android/gm/GmailBaseListActivity;->mUiHandler:Lcom/google/android/gm/UiHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/UiHandler;->setEnabled(Z)V

    .line 24
    return-void
.end method
