.class Lcom/htc/musicenhancer/util/LogWriter$1;
.super Landroid/os/Handler;
.source "LogWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/musicenhancer/util/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/musicenhancer/util/LogWriter;


# direct methods
.method constructor <init>(Lcom/htc/musicenhancer/util/LogWriter;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 93
    :pswitch_0
    iget-object v1, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    #getter for: Lcom/htc/musicenhancer/util/LogWriter;->mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
    invoke-static {v0}, Lcom/htc/musicenhancer/util/LogWriter;->access$000(Lcom/htc/musicenhancer/util/LogWriter;)Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    const/4 v2, 0x0

    #setter for: Lcom/htc/musicenhancer/util/LogWriter;->mNonUiHandler:Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;
    invoke-static {v0, v2}, Lcom/htc/musicenhancer/util/LogWriter;->access$002(Lcom/htc/musicenhancer/util/LogWriter;Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;)Lcom/htc/musicenhancer/util/LogWriter$NonUiHandler;

    .line 96
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    #getter for: Lcom/htc/musicenhancer/util/LogWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/musicenhancer/util/LogWriter;->access$100(Lcom/htc/musicenhancer/util/LogWriter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/htc/musicenhancer/util/LogWriter$1;->this$0:Lcom/htc/musicenhancer/util/LogWriter;

    const/4 v2, 0x0

    #setter for: Lcom/htc/musicenhancer/util/LogWriter;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v2}, Lcom/htc/musicenhancer/util/LogWriter;->access$102(Lcom/htc/musicenhancer/util/LogWriter;Landroid/os/Handler;)Landroid/os/Handler;

    .line 98
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
