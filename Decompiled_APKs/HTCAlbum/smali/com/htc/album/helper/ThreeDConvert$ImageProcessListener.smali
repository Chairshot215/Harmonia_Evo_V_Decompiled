.class Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;
.super Ljava/lang/Object;
.source "ThreeDConvert.java"

# interfaces
.implements Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/helper/ThreeDConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/ThreeDConvert;


# direct methods
.method private constructor <init>(Lcom/htc/album/helper/ThreeDConvert;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/helper/ThreeDConvert;Lcom/htc/album/helper/ThreeDConvert$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;-><init>(Lcom/htc/album/helper/ThreeDConvert;)V

    return-void
.end method


# virtual methods
.method public OnCancelPirorProcess()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDConvert;->finish()V

    .line 163
    return-void
.end method

.method public OnCancelProcessing()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v0}, Lcom/htc/album/helper/ThreeDConvert;->finish()V

    .line 168
    return-void
.end method

.method public OnProcessBegin()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public OnProcessEnd(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 8
    .parameter "processorMgr"

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 158
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResult()Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, result:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/htc/album/processor/ImageProcessorManager;->getResultCode()I

    move-result v1

    .line 142
    .local v1, resultCode:I
    if-nez v1, :cond_2

    .line 144
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 145
    .local v3, resultUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, resultMimeType:Ljava/lang/String;
    const-string v4, "LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ImageProcessListener][OnProcessEnd] Result Uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v4, "LOG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ImageProcessListener][OnProcessEnd] Result MimeType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    #getter for: Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;
    invoke-static {v4}, Lcom/htc/album/helper/ThreeDConvert;->access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    #getter for: Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDConvert;->access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;

    move-result-object v5

    invoke-static {v4, v5, v3, v2}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 157
    .end local v2           #resultMimeType:Ljava/lang/String;
    .end local v3           #resultUri:Landroid/net/Uri;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v4}, Lcom/htc/album/helper/ThreeDConvert;->finish()V

    goto :goto_0

    .line 152
    :cond_2
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    iget-object v5, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    #getter for: Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;
    invoke-static {v5}, Lcom/htc/album/helper/ThreeDConvert;->access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    #getter for: Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/htc/album/helper/ThreeDConvert;->access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;->this$0:Lcom/htc/album/helper/ThreeDConvert;

    #getter for: Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;
    invoke-static {v7}, Lcom/htc/album/helper/ThreeDConvert;->access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/htc/album/helper/MenuManager;->doShareSingleMedia(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1
.end method
