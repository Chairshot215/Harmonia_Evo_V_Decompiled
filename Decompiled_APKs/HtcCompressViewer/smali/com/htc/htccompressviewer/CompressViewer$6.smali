.class Lcom/htc/htccompressviewer/CompressViewer$6;
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
    .line 1081
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1086
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "listRet"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1087
    .local v0, listRet:I
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/htc/htccompressviewer/CompressViewer;->removeDialog(I)V

    .line 1088
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/htc/htccompressviewer/CompressViewer;->removeDialog(I)V

    .line 1089
    packed-switch v0, :pswitch_data_0

    .line 1105
    :goto_0
    :pswitch_0
    return-void

    .line 1091
    :pswitch_1
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v1}, Lcom/htc/htccompressviewer/CompressViewer;->loadView()V

    goto :goto_0

    .line 1095
    :pswitch_2
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 1102
    :pswitch_3
    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$6;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 1089
    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
