.class Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;
.super Landroid/os/Handler;
.source "ActivityMainExpandBrowser.java"


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
    .line 960
    iput-object p1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 963
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    iget-boolean v0, v0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mbDestroy:Z

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const-string v0, "ExpandListView"

    const-string v1, "searching timeout ..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showTitleProgression(Z)V

    .line 970
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$400(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    #getter for: Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->mItemList:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->access$400(Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    iget-object v1, p0, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser$9;->this$0:Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDLNA/ActivityMainExpandBrowser;->showEmptyView(Ljava/lang/String;)V

    goto :goto_0
.end method
