.class Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;
.super Ljava/lang/Object;
.source "PhotoEnhancer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->initialButton(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const v4, 0x7f0b00f2

    const/4 v6, 0x0

    .line 421
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 422
    invoke-static {}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mSaveBtn_onClick: filePath is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 425
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$700(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 426
    .local v0, fileSize:J
    invoke-static {v0, v1}, Lcom/htc/opensense2/album/AlbumCommon/Constants;->checkStorageFullWithSize(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_1

    .line 430
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$902(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 437
    :goto_1
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 435
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->cropToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$900(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1

    .line 442
    :cond_2
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #calls: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->getDstFilePath()Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1100(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1002(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;Ljava/lang/String;)Ljava/lang/String;

    .line 443
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->photoEffects:Lcom/htc/album/addons/photoenhancer/PhotoEffects;
    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1400(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Lcom/htc/album/addons/photoenhancer/PhotoEffects;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->dstFilePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1000(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->presetId:I
    invoke-static {v4}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1200(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v4

    iget-object v5, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    #getter for: Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->mFrameId:I
    invoke-static {v5}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1300(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/htc/album/addons/photoenhancer/PhotoEffects;->Save(Ljava/lang/String;II)V

    .line 444
    iget-object v2, p0, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer$2;->this$0:Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;

    invoke-static {v2}, Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;->access$1508(Lcom/htc/album/addons/photoenhancer/PhotoEnhancer;)I

    .line 445
    invoke-virtual {p1, v6}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method
