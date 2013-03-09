.class Lcom/htc/feedback/PreviewInfoActivity$3;
.super Ljava/lang/Object;
.source "PreviewInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/feedback/PreviewInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PreviewInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PreviewInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/feedback/PreviewInfoActivity$3;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 84
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/proc/last_kmsg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, last_kmsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/feedback/PreviewInfoActivity$3;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-boolean v2, v2, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z

    if-eqz v2, :cond_0

    .line 91
    .end local v1           #last_kmsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 87
    .restart local v1       #last_kmsg:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/htc/feedback/PreviewInfoActivity$3;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    #getter for: Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/feedback/PreviewInfoActivity;->access$000(Lcom/htc/feedback/PreviewInfoActivity;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/feedback/PreviewInfoActivity$3;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    #getter for: Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/feedback/PreviewInfoActivity;->access$000(Lcom/htc/feedback/PreviewInfoActivity;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 88
    .end local v1           #last_kmsg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PreviewInfoActivity"

    const-string v3, "error loading last_kmsg"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
