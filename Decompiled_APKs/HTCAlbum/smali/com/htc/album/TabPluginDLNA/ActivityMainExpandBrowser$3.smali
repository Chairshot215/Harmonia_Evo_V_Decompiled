.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;
.super Ljava/lang/Object;
.source "ActivityMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;


# direct methods
.method constructor <init>(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 332
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupCollapse(I)V
    .locals 4
    .parameter "groupPosition"

    .prologue
    .line 335
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    if-nez v1, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 339
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    if-eqz v0, :cond_0

    .line 342
    const-string v1, "ExpandListView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onGroupCollapseListener]:item containerName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetContainerID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->removeChildrenDirectoryInfo(Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 346
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$3;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getCurrentPageInfo()V

    goto :goto_0
.end method
