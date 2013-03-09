.class public Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;
.super Lcom/htc/opensense2/album/TemplateActivityBase;
.source "ActivityBaseWithDLNAControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ADAPTER:",
        "Landroid/widget/BaseAdapter;",
        ">",
        "Lcom/htc/opensense2/album/TemplateActivityBase",
        "<TADAPTER;>;"
    }
.end annotation


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private mEnableDLNAControl:Z

.field private mParentActivity:Landroid/app/Activity;

.field private mPassLaunchCheckInResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;-><init>()V

    .line 16
    const-class v0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mEnableDLNAControl:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected checkAndLaunchDMC(Ljava/lang/String;)V
    .locals 11
    .parameter "action"

    .prologue
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    const/4 v5, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 70
    const/4 v6, 0x0

    .line 72
    .local v6, dmcfiltercap:I
    invoke-static {p0, v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMR(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, dmr:Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getDMS(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, dms:Ljava/lang/String;
    invoke-static {p0, v8}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->getFilterCap(Landroid/content/Context;Z)I

    move-result v6

    .line 75
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "browse_mode"

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 77
    .local v7, inBrowse:Z
    const-string v0, "com.htc.album.action.LAUNCH_DMC_PHOTO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v6, 0x2

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityBaseWithDLNAControl][checkAndLaunchDMC]:inBrowse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityBaseWithDLNAControl][checkAndLaunchDMC]:mPassLaunch:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivityBaseWithDLNAControl][checkAndLaunchDMC]:dmcfiltercap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    if-nez v0, :cond_2

    const-string v0, "com.htc.album.action.DLNA_BROWSE_LOCAL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez v7, :cond_2

    if-eq v6, v10, :cond_1

    const/4 v0, 0x4

    if-ne v6, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->isDMCLaunch(Landroid/content/Context;)Z

    move-result v0

    if-ne v8, v0, :cond_2

    .line 94
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filter cap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-ne v6, v10, :cond_4

    .line 96
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerPhotos(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 101
    :cond_2
    :goto_1
    iput-boolean v9, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 102
    return-void

    .line 79
    :cond_3
    const-string v0, "com.htc.album.action.LAUNCH_DMC_VIDEO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 98
    :cond_4
    const-string v3, ""

    const-string v4, "invalid"

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->launchDMCServerVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected enableDLNAControl(Z)V
    .locals 0
    .parameter "bEnable"

    .prologue
    .line 65
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    iput-boolean p1, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mEnableDLNAControl:Z

    .line 66
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 52
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/album/TemplateActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 54
    iget-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mEnableDLNAControl:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x1398

    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 56
    const-string v1, "DMR"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, dmr:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->setDMR(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mPassLaunchCheckInResume:Z

    .line 61
    .end local v0           #dmr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 26
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 29
    .local v0, actParent:Landroid/app/Activity;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 31
    .local v1, actParentParent:Landroid/app/Activity;
    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_0

    move-object v0, p0

    .end local v0           #actParent:Landroid/app/Activity;
    :cond_0
    :goto_1
    iput-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    .line 32
    return-void

    .line 29
    .end local v1           #actParentParent:Landroid/app/Activity;
    .restart local v0       #actParent:Landroid/app/Activity;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1       #actParentParent:Landroid/app/Activity;
    :cond_2
    move-object v0, v1

    .line 31
    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 39
    .local p0, this:Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;,"Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl<TADAPTER;>;"
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onResume()V

    .line 41
    iget-boolean v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mEnableDLNAControl:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/album/TabPluginDevice/ActivityBaseWithDLNAControl;->checkAndLaunchDMC(Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method
