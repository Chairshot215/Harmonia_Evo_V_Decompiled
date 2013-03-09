.class Lcom/htc/music/QueryBrowserActivity$2;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/htc/music/QueryBrowserActivity$2;->this$0:Lcom/htc/music/QueryBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/htc/music/QueryBrowserActivity$2;->this$0:Lcom/htc/music/QueryBrowserActivity;

    iget-object v2, p0, Lcom/htc/music/QueryBrowserActivity$2;->this$0:Lcom/htc/music/QueryBrowserActivity;

    #getter for: Lcom/htc/music/QueryBrowserActivity;->mAdapter:Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;
    invoke-static {v2}, Lcom/htc/music/QueryBrowserActivity;->access$100(Lcom/htc/music/QueryBrowserActivity;)Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/music/QueryBrowserActivity$QueryListAdapter;->getQueryHandler()Landroid/content/AsyncQueryHandler;

    move-result-object v2

    const/4 v3, 0x0

    #calls: Lcom/htc/music/QueryBrowserActivity;->getQueryCursor(Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v1, v2, v3}, Lcom/htc/music/QueryBrowserActivity;->access$200(Lcom/htc/music/QueryBrowserActivity;Landroid/content/AsyncQueryHandler;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "QueryBrowserActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
