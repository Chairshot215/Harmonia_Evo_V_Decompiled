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

    .prologue
    .line 13
    const-string v0, "ignore_start"

    sput-object v0, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-direct {p0}, Lcom/htc/opensense/album/TemplateActivityBase;-><init>()V

    .line 11
    const-class v0, Lcom/htc/opensense/album/PresentationActivityBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->LOG_TAG:Ljava/lang/String;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    .line 15
    new-instance v0, Lcom/htc/opensense/album/PresentationActivityBase$1;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/PresentationActivityBase$1;-><init>(Lcom/htc/opensense/album/PresentationActivityBase;)V

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mPresentationListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    return-void
.end method


# virtual methods
.method public enablePresentation(II)V
    .locals 1
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    .line 133
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/PresentationManager;->enablePresentation(II)V

    .line 134
    return-void
.end method

.method public getDisplayManager()Lcom/htc/opensense/album/PresentationManager;
    .locals 1

    .prologue
    .line 128
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    const/4 v3, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    iget v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    .line 98
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v1, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/PresentationManager;->isPresentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->closeContextMenu()V

    .line 101
    invoke-virtual {p0}, Lcom/htc/opensense/album/PresentationActivityBase;->closeOptionsMenu()V

    .line 103
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 104
    .local v0, bundle:Landroid/os/Bundle;
    sget-object v1, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 105
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0, v3}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 113
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    .line 114
    return-void

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onConfigurationChanged] no change, skip now..."

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 40
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-super {p0, p1}, Lcom/htc/opensense/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method

.method public onCreateDisplayManager()V
    .locals 2

    .prologue
    .line 122
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    new-instance v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-direct {v0, p0}, Lcom/htc/opensense/album/PresentationManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    .line 123
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mPresentationListener:Lcom/htc/opensense/album/PresentationManager$PresentationListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/PresentationManager;->setPresentationListener(Lcom/htc/opensense/album/PresentationManager$PresentationListener;)V

    .line 124
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 88
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 75
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onPause()V

    .line 76
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 81
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onResume()V

    .line 82
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/PresentationManager;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mCurrentOrientation:I

    .line 83
    return-void
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    const/4 v3, 0x0

    .line 46
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStart()V

    .line 47
    const/4 v0, 0x0

    .line 49
    .local v0, skip:Z
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationActivityBase;->KEY_IGNORE_START:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v1, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v1}, Lcom/htc/opensense/album/PresentationManager;->isPresentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    sget-object v2, Lcom/htc/opensense/album/PresentationManager;->KEY_CHECK_FILTEROUT:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    iget-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    iget-boolean v4, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDoTransition:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 64
    :cond_0
    return-void

    .line 56
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mStartBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 69
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    invoke-super {p0}, Lcom/htc/opensense/album/TemplateActivityBase;->onStop()V

    .line 70
    return-void
.end method

.method public pausePresentation()V
    .locals 1

    .prologue
    .line 138
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/PresentationActivityBase;->mDispMgr:Lcom/htc/opensense/album/DisplayManager;

    check-cast v0, Lcom/htc/opensense/album/PresentationManager;

    invoke-virtual {v0}, Lcom/htc/opensense/album/PresentationManager;->pausePresentation()V

    .line 139
    return-void
.end method

.method public setFullscreen(Z)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 30
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    return-void
.end method

.method public shouldFilterOut(I)Z
    .locals 1
    .parameter "nFocusId"

    .prologue
    .line 34
    .local p0, this:Lcom/htc/opensense/album/PresentationActivityBase;,"Lcom/htc/opensense/album/PresentationActivityBase<TAD;>;"
    const/4 v0, 0x0

    return v0
.end method
