.class public Lcom/google/android/finsky/fragments/SidecarFragment;
.super Landroid/support/v4/app/Fragment;
.source "SidecarFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/fragments/SidecarFragment$Listener;
    }
.end annotation


# instance fields
.field private mErrorInstance:I

.field private mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

.field private mState:I

.field private mSubstate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 146
    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    .line 149
    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    .line 154
    return-void
.end method

.method private notifyListener()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    invoke-interface {v0, p0}, Lcom/google/android/finsky/fragments/SidecarFragment$Listener;->onStateChange(Lcom/google/android/finsky/fragments/SidecarFragment;)V

    .line 322
    :cond_0
    return-void
.end method


# virtual methods
.method public getErrorInstance()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 279
    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    return v0
.end method

.method public getSubstate()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/fragments/SidecarFragment;->setRetainInstance(Z)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/SidecarFragment;->restoreFromSavedInstanceState(Landroid/os/Bundle;)V

    .line 182
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 186
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 187
    const-string v0, "SidecarFragment.state"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "SidecarFragment.substate"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v0, "SidecarFragment.errorInstance"

    iget v1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    return-void
.end method

.method protected restoreFromSavedInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 252
    const-string v0, "SidecarFragment.state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    .line 253
    const-string v0, "SidecarFragment.substate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    .line 254
    const-string v0, "SidecarFragment.errorInstance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    .line 255
    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 256
    const-string v0, "Restoring after serialization in RUNNING, resetting to INIT."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-virtual {p0, v2, v2}, Lcom/google/android/finsky/fragments/SidecarFragment;->setState(II)V

    .line 259
    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/finsky/fragments/SidecarFragment$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 269
    iput-object p1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mListener:Lcom/google/android/finsky/fragments/SidecarFragment$Listener;

    if-eqz v0, :cond_0

    .line 271
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->notifyListener()V

    .line 273
    :cond_0
    return-void
.end method

.method protected setState(II)V
    .locals 1
    .parameter "state"
    .parameter "substate"

    .prologue
    .line 309
    invoke-static {}, Lcom/google/android/finsky/utils/Utils;->ensureOnMainThread()V

    .line 310
    iput p1, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mState:I

    .line 311
    iput p2, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mSubstate:I

    .line 312
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 313
    iget v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/fragments/SidecarFragment;->mErrorInstance:I

    .line 315
    :cond_0
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/SidecarFragment;->notifyListener()V

    .line 316
    return-void
.end method
