.class Lcom/htc/android/epst/FileBrowserActivity$2;
.super Landroid/os/Handler;
.source "FileBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/FileBrowserActivity;->createmainHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/FileBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/FileBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 144
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$000(Lcom/htc/android/epst/FileBrowserActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainHandler get Message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 148
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/FileBrowserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/htc/android/epst/FileBrowserActivity;->showDialog(I)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #getter for: Lcom/htc/android/epst/FileBrowserActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$300(Lcom/htc/android/epst/FileBrowserActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 154
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    #calls: Lcom/htc/android/epst/FileBrowserActivity;->setupFileListView()V
    invoke-static {v0}, Lcom/htc/android/epst/FileBrowserActivity;->access$400(Lcom/htc/android/epst/FileBrowserActivity;)V

    .line 155
    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/android/epst/FileBrowserActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/epst/FileBrowserActivity$2;->this$0:Lcom/htc/android/epst/FileBrowserActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/FileBrowserActivity;->removeDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
