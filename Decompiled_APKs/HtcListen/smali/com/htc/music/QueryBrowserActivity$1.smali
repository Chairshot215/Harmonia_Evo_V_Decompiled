.class Lcom/htc/music/QueryBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "QueryBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/QueryBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/QueryBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/QueryBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity$1;->this$0:Lcom/htc/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$1;->this$0:Lcom/htc/music/QueryBrowserActivity;

    invoke-static {v0}, Lcom/htc/music/util/MusicUtils;->setSpinnerState(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/htc/music/QueryBrowserActivity$1;->this$0:Lcom/htc/music/QueryBrowserActivity;

    #getter for: Lcom/htc/music/QueryBrowserActivity;->mReScanHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/music/QueryBrowserActivity;->access$000(Lcom/htc/music/QueryBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
