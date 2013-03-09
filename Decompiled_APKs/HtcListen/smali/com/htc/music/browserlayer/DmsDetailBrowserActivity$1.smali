.class Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "DmsDetailBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.htc.music.metachanged"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #calls: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->getDmpCurContent()Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$000(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #setter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$102(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;
    invoke-static {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$200(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$DlnaListAdapter;->notifyDataSetChanged()V

    const-string v2, "[DMS]"

    const-string v3, "broadcast receiver"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "[DMS]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current content = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity$1;->this$0:Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->mcurContent:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;->access$100(Lcom/htc/music/browserlayer/DmsDetailBrowserActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
