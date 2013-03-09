.class public Lcom/htc/app/ma/MaHtcListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "MaHtcListActivity.java"

# interfaces
.implements Lcom/htc/app/ma/IMaActivity;


# instance fields
.field private final mAgent:Lcom/htc/app/ma/MaAgent;

.field private final mStateAgent:Lcom/htc/app/ma/MaStateAgent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 18
    new-instance v0, Lcom/htc/app/ma/MaAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaAgent;-><init>(Lcom/htc/app/ma/IMaActivity;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    .line 19
    new-instance v0, Lcom/htc/app/ma/MaStateAgent;

    invoke-direct {v0, p0}, Lcom/htc/app/ma/MaStateAgent;-><init>(Lcom/htc/app/ma/IMaStateOwner;)V

    iput-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    return-void
.end method


# virtual methods
.method public dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->dimBackground(I)V

    .line 159
    return-void
.end method

.method public finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->finishActivityById(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public finishActivityInNextFrame()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishActivityInNextFrame()V

    .line 111
    return-void
.end method

.method public finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->finishActivityInSiblingFrame(II)V

    .line 108
    return-void
.end method

.method public finishSelf()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->finishSelf()V

    .line 101
    return-void
.end method

.method public getCustomizedPadding(Z)[I
    .locals 1
    .parameter "isPortrait"

    .prologue
    .line 151
    const/4 v0, 0x0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOwnerId()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, -0x1

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->getPosition()I

    move-result v0

    return v0
.end method

.method public getState(I)I
    .locals 1
    .parameter "key"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaStateAgent;->getState(I)I

    move-result v0

    return v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/htc/app/ma/MaHtcListActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 200
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->invalidateOptionsMenu()V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->maStartActivityForResult(Landroid/content/Intent;I)V

    .line 91
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 183
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onAttachedToWindow()V

    .line 184
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onAttachedToWindow()V

    .line 185
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->onBackPressed()V

    .line 172
    return-void
.end method

.method public onMaActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/app/ma/MaHtcListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 94
    return-void
.end method

.method public onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onMaReceiveIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 124
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p2}, Lcom/htc/app/ma/MaAgent;->onPrepareDialog(Landroid/app/Dialog;)V

    .line 179
    return-void
.end method

.method public onStateChanged(III)V
    .locals 1
    .parameter "key"
    .parameter "newValue"
    .parameter "oldValue"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaStateAgent;->onStateChanged(III)V

    .line 45
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 2
    .parameter "cb"

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/htc/app/ma/MaHtcListActivity;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 190
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    goto :goto_0
.end method

.method public removeDim()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0}, Lcom/htc/app/ma/MaAgent;->removeDim()V

    .line 162
    return-void
.end method

.method public sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->sendIntentToMain(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method public sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->sendIntentToSibling(IILandroid/content/Intent;)V

    .line 119
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setId(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->setPosition(I)V

    .line 26
    return-void
.end method

.method public setState(II)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mStateAgent:Lcom/htc/app/ma/MaStateAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaStateAgent;->setState(II)V

    .line 48
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 64
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;II)V

    .line 73
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V

    .line 78
    return-void
.end method

.method public startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/app/ma/MaHtcListActivity;->mAgent:Lcom/htc/app/ma/MaAgent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 68
    return-void
.end method
