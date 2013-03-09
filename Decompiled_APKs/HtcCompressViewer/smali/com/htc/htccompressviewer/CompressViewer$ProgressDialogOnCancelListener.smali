.class Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;
.super Ljava/lang/Object;
.source "CompressViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProgressDialogOnCancelListener"
.end annotation


# instance fields
.field private mID:I

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method public constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput p2, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->mID:I

    .line 500
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget v1, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->mID:I

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->removeDialog(I)V

    .line 504
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$402(Lcom/htc/htccompressviewer/CompressViewer;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 505
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->htcZip:Lcom/htc/htccompressviewer/zip/HtcZip;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$500(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/zip/HtcZip;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/zip/HtcZip;->setInterrupt(Z)V

    .line 507
    iget v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->mID:I

    packed-switch v0, :pswitch_data_0

    .line 525
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 514
    :pswitch_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v0

    if-lez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipInZipLevelback()Z

    .line 516
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$300(Lcom/htc/htccompressviewer/CompressViewer;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v2

    aget-object v1, v1, v2

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$202(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 522
    :pswitch_2
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ProgressDialogOnCancelListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer;->onBackPressed()V

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
