.class Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;
.super Landroid/os/Handler;
.source "ComposerBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/ComposerBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    invoke-static {v0}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    iget-object v1, p0, Lcom/htc/music/browserlayer/ComposerBrowserActivity$2;->this$0:Lcom/htc/music/browserlayer/ComposerBrowserActivity;

    #getter for: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->mAdapter:Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;
    invoke-static {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$200(Lcom/htc/music/browserlayer/ComposerBrowserActivity;)Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/music/browserlayer/ComposerBrowserActivity$ComposerListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v1

    const/4 v2, 0x0

    #calls: Lcom/htc/music/browserlayer/ComposerBrowserActivity;->getComposerCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v0, v1, v2}, Lcom/htc/music/browserlayer/ComposerBrowserActivity;->access$300(Lcom/htc/music/browserlayer/ComposerBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;

    :cond_0
    return-void
.end method
