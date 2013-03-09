.class Lcom/htc/android/epst/FileBrowserActivity$1;
.super Landroid/os/Handler;
.source "FileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->createmHandler(Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$1;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$1;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$000(Lcom/htc/android/epst/FileBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler get Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 125
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$1;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #calls: Lcom/htc/android/epst/FileBrowserActivity;->getFileList()V
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$100(Lcom/htc/android/epst/FileBrowserActivity;)V

    .line 126
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$1;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$200(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$1;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->mainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$200(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
