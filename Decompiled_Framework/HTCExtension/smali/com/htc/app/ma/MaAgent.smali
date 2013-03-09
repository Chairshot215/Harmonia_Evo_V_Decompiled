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

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    const-string v0, ""

    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    return-void
.end method

.method private getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    instance-of v1, v1, Landroid/app/ActivityGroup;

    if-nez v1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/ActivityGroup;

    invoke-virtual {v1}, Landroid/app/ActivityGroup;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/IMaActivity;

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/htc/app/ma/IMaActivity;

    goto :goto_0
.end method


# virtual methods
.method dimBackground(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->dimBackground(I)V

    goto :goto_0
.end method

.method finishActivityById(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0
.end method

.method finishActivityInNextFrame()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(I)V

    goto :goto_0
.end method

.method finishActivityInSiblingFrame(II)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->finishActivityInChildFrame(II)V

    goto :goto_0
.end method

.method finishSelf()V
    .locals 3

    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    instance-of v2, v1, Lcom/htc/app/ma/IMaActivity;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/htc/app/ma/IMaActivity;

    invoke-interface {v1}, Lcom/htc/app/ma/IMaActivity;->finishSelf()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/htc/app/ma/MaMainActivity;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/htc/app/ma/MaMainActivity;

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/app/ma/MaMainActivity;->finishChild(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    return-object v0
.end method

.method getMainActivity()Lcom/htc/app/ma/MaMainActivity;
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v0, Landroid/app/Activity;

    :goto_1
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/app/ma/MaMainActivity;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Lcom/htc/app/ma/MaAgent;->mMainActivity:Lcom/htc/app/ma/MaMainActivity;

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/htc/app/ma/MaMainActivity;

    goto :goto_2
.end method

.method getPosition()I
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    return v0
.end method

.method maStartActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityForResultFromMaChild(Lcom/htc/app/ma/IMaActivity;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method onBackPressed()V
    .locals 2

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method onMaCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method onMaPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-direct {p0}, Lcom/htc/app/ma/MaAgent;->getCurrentMaChild()Lcom/htc/app/ma/IMaActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/htc/app/ma/IMaActivity;->onMaPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto :goto_0
.end method

.method onPrepareDialog(Landroid/app/Dialog;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/app/ma/MaAgent;->mHost:Lcom/htc/app/ma/IMaActivity;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method removeDim()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/htc/app/ma/MaMainActivity;->removeDim()V

    goto :goto_0
.end method

.method sendIntentToMain(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/htc/app/ma/MaMainActivity;->onMaReceiveIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method sendIntentToSibling(IILandroid/content/Intent;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->sendIntentToChild(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/app/ma/MaAgent;->mId:Ljava/lang/String;

    return-void
.end method

.method setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;I)V

    return-void
.end method

.method startActivityInCurrentFrame(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/htc/app/ma/MaAgent;->startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V

    return-void
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInNextFrameAndShift(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/htc/app/ma/MaAgent;->mHostPosition:I

    invoke-virtual {v0, p1, v1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInNextChildFrameAndShift(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;II)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;IILjava/lang/String;)V

    goto :goto_0
.end method

.method startActivityInSiblingFrame(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/app/ma/MaAgent;->getMainActivity()Lcom/htc/app/ma/MaMainActivity;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/app/ma/MaMainActivity;->startActivityInChildFrame(Landroid/content/Intent;ILjava/lang/String;)V

    goto :goto_0
.end method
