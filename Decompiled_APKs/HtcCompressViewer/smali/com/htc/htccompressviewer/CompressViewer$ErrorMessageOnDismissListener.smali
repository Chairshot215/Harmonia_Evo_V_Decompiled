.class Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;
.super Ljava/lang/Object;
.source "CompressViewer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccompressviewer/CompressViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorMessageOnDismissListener"
.end annotation


# instance fields
.field private final mID:I

.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;


# direct methods
.method public constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;I)V
    .locals 0
    .parameter
    .parameter "id"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput p2, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->mID:I

    .line 461
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 465
    iget v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->mID:I

    packed-switch v0, :pswitch_data_0

    .line 491
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 471
    :pswitch_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v0

    if-nez v0, :cond_1

    .line 473
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer;->finish()V

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v0}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/ZipListAdapter;->zipInZipLevelback()Z

    .line 477
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v1, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mPathCache:[Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$300(Lcom/htc/htccompressviewer/CompressViewer;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    #getter for: Lcom/htc/htccompressviewer/CompressViewer;->mZipListAdapter:Lcom/htc/htccompressviewer/ZipListAdapter;
    invoke-static {v2}, Lcom/htc/htccompressviewer/CompressViewer;->access$100(Lcom/htc/htccompressviewer/CompressViewer;)Lcom/htc/htccompressviewer/ZipListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/htccompressviewer/ZipListAdapter;->getZipInZipLevel()I

    move-result v2

    aget-object v1, v1, v2

    #setter for: Lcom/htc/htccompressviewer/CompressViewer;->mCurrentSrcPath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->access$202(Lcom/htc/htccompressviewer/CompressViewer;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/htc/htccompressviewer/CompressViewer;->showDialog(I)V

    goto :goto_0

    .line 488
    :pswitch_2
    iget-object v0, p0, Lcom/htc/htccompressviewer/CompressViewer$ErrorMessageOnDismissListener;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    invoke-virtual {v0}, Lcom/htc/htccompressviewer/CompressViewer;->finish()V

    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
