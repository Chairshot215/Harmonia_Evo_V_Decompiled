.class Lcom/htc/sunny/SView$10;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundRenderOrder(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$nOrder:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$10;->val$nOrder:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$10;->val$nOrder:I

    iput v1, v0, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    .line 362
    iget-object v0, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mBackgroundSpriteId:I

    iget-object v2, p0, Lcom/htc/sunny/SView$10;->this$0:Lcom/htc/sunny/SView;

    iget v2, v2, Lcom/htc/sunny/SView;->mBackgroundRenderOrder:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setNodeOrder(II)V

    goto :goto_0
.end method
