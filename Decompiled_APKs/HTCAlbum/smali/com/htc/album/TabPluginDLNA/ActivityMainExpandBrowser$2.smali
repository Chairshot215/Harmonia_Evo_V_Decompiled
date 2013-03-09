.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;
.super Ljava/lang/Object;
.source "ActivityMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;


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
    .line 320
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupExpand(I)V
    .locals 2
    .parameter "groupPosition"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    if-nez v1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 327
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->addCurrentPageInfo()V

    .line 328
    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$2;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->expandBrowse(Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V
    invoke-static {v1, v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$100(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;)V

    goto :goto_0
.end method
