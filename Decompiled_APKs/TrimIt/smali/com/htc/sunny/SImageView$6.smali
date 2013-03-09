.class Lcom/htc/sunny/SImageView$6;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setTouchable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$bTouchable:Z


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iput-boolean p2, p0, Lcom/htc/sunny/SImageView$6;->val$bTouchable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v0, v0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iget-boolean v1, p0, Lcom/htc/sunny/SImageView$6;->val$bTouchable:Z

    iput-boolean v1, v0, Lcom/htc/sunny/SImageView;->mTouchable:Z

    .line 292
    iget-object v0, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    #getter for: Lcom/htc/sunny/SImageView;->mIconSpriteId:I
    invoke-static {v0}, Lcom/htc/sunny/SImageView;->access$000(Lcom/htc/sunny/SImageView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iget v0, v0, Lcom/htc/sunny/SImageView;->mBackgroundPressTextureId:I

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v0, v0, Lcom/htc/sunny/SImageView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    #getter for: Lcom/htc/sunny/SImageView;->mIconSpriteId:I
    invoke-static {v1}, Lcom/htc/sunny/SImageView;->access$000(Lcom/htc/sunny/SImageView;)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny/SImageView$6;->this$0:Lcom/htc/sunny/SImageView;

    iget-boolean v2, v2, Lcom/htc/sunny/SImageView;->mTouchable:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SunnyEngine;->setSpriteTouchable(IZ)V

    goto :goto_0
.end method
