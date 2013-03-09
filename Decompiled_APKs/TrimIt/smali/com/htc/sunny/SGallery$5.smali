.class Lcom/htc/sunny/SGallery$5;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setClipSize(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$nSize:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 629
    iput-object p1, p0, Lcom/htc/sunny/SGallery$5;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$5;->val$nSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 631
    iget-object v0, p0, Lcom/htc/sunny/SGallery$5;->this$0:Lcom/htc/sunny/SGallery;

    iget-boolean v0, v0, Lcom/htc/sunny/SGallery;->mEnabledClip:Z

    if-ne v1, v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/htc/sunny/SGallery$5;->this$0:Lcom/htc/sunny/SGallery;

    iput-boolean v1, v0, Lcom/htc/sunny/SGallery;->mForceLayout:Z

    .line 633
    iget-object v0, p0, Lcom/htc/sunny/SGallery$5;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$5;->val$nSize:I

    iput v1, v0, Lcom/htc/sunny/SGallery;->mClipSize:I

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SGallery$5;->this$0:Lcom/htc/sunny/SGallery;

    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/sunny/SGallery;->mClipSize:I

    goto :goto_0
.end method
