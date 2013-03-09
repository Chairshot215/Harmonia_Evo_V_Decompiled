.class Lcom/htc/sunny/SPresentation$5;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->setGradualVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$bVisible:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iput-boolean p2, p0, Lcom/htc/sunny/SPresentation$5;->val$bVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 724
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iget-boolean v1, p0, Lcom/htc/sunny/SPresentation$5;->val$bVisible:Z

    iput-boolean v1, v0, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    .line 725
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iget v0, v0, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, v1, Lcom/htc/sunny/SPresentation;->mGradualNode:I

    iget-object v2, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    iget-boolean v2, v2, Lcom/htc/sunny/SPresentation;->mGradualVisible:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeVisible(IZ)V

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$5;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 729
    return-void
.end method
