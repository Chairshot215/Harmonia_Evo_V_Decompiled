.class public Lcom/htc/opensense/album/PresentationActivityBase;
.super Lcom/htc/opensense/album/TemplateActivityBase;
.source "PresentationActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AD:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Lcom/htc/opensense/album/TemplateActivityBase",
        "<TAD;>;"
    }
.end annotation


# static fields
.field public static KEY_IGNORE_START:Ljava/lang/String;


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mCurrentOrientation:I

.field protected mDoTransition:Z

.field private mPresentationListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

.field protected mStartBundle:Landroid/os/Bundle;

.field protected mSwitchBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ignore_start"

    sput-object v0, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;-><init>()V

    const-class v0, Lcom/htc/opensense/album/PresentationActivityBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    new-instance v0, Lcom/htc/opensense/album/PresentationActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/PresentationActivityBase$1;-><init>(Lcom/htc/opensense/album/PresentationActivityBase;)V

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mPresentationListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    return-void
.end method


# virtual methods
.method public enablePresentation(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/PresentationManager;->enablePresentation(II)V

    return-void
.end method

.method public getDisplayManager()Lcom/htc/opensense/album/PresentationManager;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v1, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/PresentationManager;->isPresentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->closeContextMenu()V

    invoke-virtual {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->closeOptionsMenu()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    :cond_0
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onConfigurationChanged] no change, skip now..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDisplayManager()V
    .locals 2

    new-instance v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/PresentationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mPresentationListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/PresentationManager;->setPresentationListener(Lcom/htc/opensense/album/PresentationManager$PresentationListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onResume()V

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/PresentationManager;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    return-void
.end method

.method protected onStart()V
    .locals 5

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStart()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v1, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/PresentationManager;->isPresentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDoTransition:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    :cond_0
    return-void

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStop()V

    return-void
.end method

.method public pausePresentation()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/TemplateActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/PresentationManager;->pausePresentation()V

    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0

    return-void
.end method

.method public shouldFilterOut(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
