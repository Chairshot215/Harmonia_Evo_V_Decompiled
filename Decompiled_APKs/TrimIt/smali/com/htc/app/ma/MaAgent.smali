.class public Lcom/htc/app/ma/MaAgent;
.super Ljava/lang/Object;
.source "MaAgent.java"


# instance fields
.field private mHost:Lcom/htc/app/ma/IMaActivity;

.field private mHostPosition:I

.field private mId:Ljava/lang/String;

.field private mMainActivity:Lcom/htc/app/ma/MaMainActivity;


# direct methods
.method constructor <init>(Lcom/htc/app/ma/IMaActivity;)V
    .locals 1
    .parameter "host"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    .line 21
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    .line 27
    return-void
.end method

.method private getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    instance-of v1, v1, Landroid/app/ActivityGroup;

    if-nez v1, :cond_0

    move-object v0, v2

    .line 313
    :goto_0
    return-object v0

    .line 309
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/ActivityGroup;

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 310
    .local v0, a:Landroid/app/Activity;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/IMaActivity;

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 311
    goto :goto_0

    .line 313
    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaActivity;

    goto :goto_0
.end method


# virtual methods
.method dimBackground(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 234
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->dimBackground(I)V

    goto :goto_0
.end method

.method finishActivityById(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 164
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0
.end method

.method finishActivityInNextFrame()V
    .locals 2

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 179
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 182
    :goto_0
    return-void

    .line 181
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    goto :goto_0
.end method

.method finishActivityInSiblingFrame(II)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 172
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(II)V

    goto :goto_0
.end method

.method finishSelf()V
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    .line 142
    .local v0, a:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 144
    .local v1, parent:Landroid/app/Activity;
    if-nez v1, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 160
    .end local v1           #parent:Landroid/app/Activity;
    :goto_0
    return-void

    .line 149
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_0
    instance-of v2, v1, Lcom/htc/app/ma/IMaActivity;

    if-eqz v2, :cond_1

    .line 150
    check-cast v1, Lcom/htc/app/ma/IMaActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-interface {v1}, Lcom/htc/app/ma/IMaActivity;->finishSelf()V

    goto :goto_0

    .line 154
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_1
    instance-of v2, v1, Lcom/htc/app/ma/MaMainActivity;

    if-eqz v2, :cond_2

    .line 155
    check-cast v1, Lcom/htc/app/ma/MaMainActivity;

    .end local v1           #parent:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0

    .line 159
    .restart local v1       #parent:Landroid/app/Activity;
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 2

    .prologue
    .line 50
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    .line 57
    :goto_0
    return-object v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    .line 55
    .local v0, a:Landroid/app/Activity;
    :goto_1
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/MaMainActivity;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    .line 57
    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    .end local v0           #a:Landroid/app/Activity;
    :goto_2
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    goto :goto_0

    .restart local v0       #a:Landroid/app/Activity;
    :cond_2
    check-cast v0, Lcom/htc/app/ma/MaMainActivity;

    goto :goto_2
.end method

.method getPosition()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    return v0
.end method

.method maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 129
    .local v0, a:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 130
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityForResultFromMaChild(Lcom/htc/app/ma/IMaActivity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 274
    .local v0, d:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method onBackPressed()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 253
    .local v0, parent:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 254
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 209
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x0

    .line 211
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 223
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .line 225
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    .line 216
    .local v0, child:Lcom/htc/app/ma/IMaActivity;
    if-nez v0, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 218
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onPrepareDialog(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 264
    .local v0, a:Lcom/htc/app/ma/MaMainActivity;
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method removeDim()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 241
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->removeDim()V

    goto :goto_0
.end method

.method sendIntentToMain(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 197
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "intent"

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 191
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->sendIntentToChild(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    .line 43
    return-void
.end method

.method setPosition(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 34
    iput p1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    .line 35
    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 65
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    .line 66
    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 69
    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 107
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2
    .parameter "intent"
    .parameter "id"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 116
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "position"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 74
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 90
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "landscapePosition"
    .parameter "portraitPosition"
    .parameter "id"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 99
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;IILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1
    .parameter "intent"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    .line 82
    .local v0, main:Lcom/htc/app/ma/MaMainActivity;
    if-nez v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method
