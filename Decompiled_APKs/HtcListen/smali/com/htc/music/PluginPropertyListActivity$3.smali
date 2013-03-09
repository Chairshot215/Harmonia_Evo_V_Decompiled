.class Lcom/htc/music/PluginPropertyListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/PluginPropertyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/PluginPropertyListActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity$3;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$3;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;
    invoke-static {v1}, Lcom/htc/music/PluginPropertyListActivity;->access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$3;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #calls: Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V
    invoke-static {v1}, Lcom/htc/music/PluginPropertyListActivity;->access$200(Lcom/htc/music/PluginPropertyListActivity;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.htc.music.newproperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$3;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #getter for: Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    invoke-static {v1}, Lcom/htc/music/PluginPropertyListActivity;->access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->setItems(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity$3;->this$0:Lcom/htc/music/PluginPropertyListActivity;

    #calls: Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V
    invoke-static {v1}, Lcom/htc/music/PluginPropertyListActivity;->access$200(Lcom/htc/music/PluginPropertyListActivity;)V

    goto :goto_0
.end method
