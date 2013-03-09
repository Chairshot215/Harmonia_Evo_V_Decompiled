.class Lcom/htc/htccompressviewer/CompressViewer$5;
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
    .line 1026
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 1031
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "result"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1032
    .local v1, result:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "fileName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, fileName:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->removeDialog(I)V

    .line 1035
    packed-switch v1, :pswitch_data_0

    .line 1058
    :goto_0
    :pswitch_0
    return-void

    .line 1037
    :pswitch_1
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->scanFile(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$600(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    .line 1038
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/high16 v4, 0x7f07

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$800(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    goto :goto_0

    .line 1042
    :pswitch_2
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 1047
    :pswitch_3
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 1054
    :pswitch_4
    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$5;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 1035
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
