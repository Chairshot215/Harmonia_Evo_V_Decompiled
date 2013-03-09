.class Lcom/htc/htccompressviewer/CompressViewer$4;
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
    .line 968
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/16 v5, 0x9

    const/4 v6, 0x7

    .line 973
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "result"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 974
    .local v1, result:I
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->removeDialog(I)V

    .line 975
    packed-switch v1, :pswitch_data_0

    .line 1023
    :goto_0
    :pswitch_0
    return-void

    .line 977
    :pswitch_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$200(Lcom/htc/htccompressviewer/CompressViewer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 978
    .local v2, srcZipFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 979
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v3, v5}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 983
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$200(Lcom/htc/htccompressviewer/CompressViewer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->isZipFile(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 984
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 985
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1001
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v3, v6}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 986
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$200(Lcom/htc/htccompressviewer/CompressViewer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/zip/HtcZip;->isEncrypt(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 987
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v3

    if-lez v3, :cond_2

    .line 989
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v3}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipInZipLevelback()Z

    .line 990
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$300(Lcom/htc/htccompressviewer/CompressViewer;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v5}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v5

    aget-object v4, v4, v5

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$202(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 995
    :cond_2
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const v5, 0x7f070008

    invoke-virtual {v4, v5}, Lcom/htc/htccompressviewer/CompressViewer;->getString(I)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/htccompressviewer/CompressViewer;->showToast(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->access$800(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 997
    :cond_3
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1008
    .end local v2           #srcZipFile:Ljava/io/File;
    :pswitch_2
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto/16 :goto_0

    .line 1013
    :pswitch_3
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto/16 :goto_0

    .line 1020
    :pswitch_4
    iget-object v3, p0, Lcom/htc/htccompressviewer/CompressViewer$4;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v3, v5}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto/16 :goto_0

    .line 975
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
