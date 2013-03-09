.class Lcom/htc/htccompressviewer/CompressViewer$2;
.super Landroid/os/Handler;
.source "CompressViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;)V
    .locals 0
    .parameter

    .prologue
    .line 883
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 888
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "currentFileCount"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 889
    .local v2, total:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 891
    .local v1, result:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "fileName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    .local v0, fileName:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 930
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 895
    :pswitch_1
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 896
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 897
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->scanFile(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$600(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    goto :goto_0

    .line 903
    :pswitch_2
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 904
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->cancel()V

    goto :goto_0

    .line 909
    :pswitch_3
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 910
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->cancel()V

    .line 912
    :cond_1
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 917
    :pswitch_4
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 918
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$400(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->cancel()V

    .line 920
    :cond_2
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 924
    :pswitch_5
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$2;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 893
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
