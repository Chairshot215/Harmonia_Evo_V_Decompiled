.class Lcom/muvee/video/trimer/ThumbInterface$3;
.super Ljava/lang/Object;
.source "ThumbInterface.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/ThumbInterface;->onProgressUpdate(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/muvee/video/trimer/ThumbInterface;

.field private final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/ThumbInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->this$0:Lcom/muvee/video/trimer/ThumbInterface;

    iput p2, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->val$progress:I

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "com.muvee.video.trimer.ThumbInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "::run:mOnProgressUpdateListener="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->this$0:Lcom/muvee/video/trimer/ThumbInterface;

    #getter for: Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    invoke-static {v2}, Lcom/muvee/video/trimer/ThumbInterface;->access$1(Lcom/muvee/video/trimer/ThumbInterface;)Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->this$0:Lcom/muvee/video/trimer/ThumbInterface;

    #getter for: Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    invoke-static {v0}, Lcom/muvee/video/trimer/ThumbInterface;->access$1(Lcom/muvee/video/trimer/ThumbInterface;)Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->this$0:Lcom/muvee/video/trimer/ThumbInterface;

    #getter for: Lcom/muvee/video/trimer/ThumbInterface;->mOnProgressUpdateListener:Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;
    invoke-static {v0}, Lcom/muvee/video/trimer/ThumbInterface;->access$1(Lcom/muvee/video/trimer/ThumbInterface;)Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;

    move-result-object v0

    iget v1, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->val$progress:I

    invoke-interface {v0, v1}, Lcom/muvee/video/trimer/ThumbInterface$OnProgressUpdateListener;->onProgressUpdate(I)V

    .line 273
    iget-object v0, p0, Lcom/muvee/video/trimer/ThumbInterface$3;->this$0:Lcom/muvee/video/trimer/ThumbInterface;

    const/4 v1, 0x0

    #setter for: Lcom/muvee/video/trimer/ThumbInterface;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/muvee/video/trimer/ThumbInterface;->access$2(Lcom/muvee/video/trimer/ThumbInterface;Ljava/lang/Runnable;)V

    .line 275
    :cond_0
    return-void
.end method
