.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;
.super Ljava/lang/Object;
.source "ActivityMainExpandBrowser.java"

# interfaces
.implements Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;


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
    .line 350
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z
    .locals 5
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 354
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    if-nez v2, :cond_1

    .line 368
    :cond_0
    :goto_0
    return v4

    .line 357
    :cond_1
    invoke-static {p3, p4}, Lcom/htc/widget/MoreExpandableItemInfo;->getPosition(II)I

    move-result v1

    .line 358
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mAdapter:Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$000(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/htc/album/TabPluginDLNA/ListViewAdapterExpandBrowser;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;

    .line 360
    .local v0, item:Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;
    const-string v2, "2"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDLNA/DLNAExpandableItemInfo;->GetFileType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    :cond_2
    const-string v2, "ExpandListView"

    const-string v3, "onChildClick: virtual Gallery folder"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$4;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #calls: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->onLaunchMediaListPage()V
    invoke-static {v2}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$200(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)V

    goto :goto_0
.end method
