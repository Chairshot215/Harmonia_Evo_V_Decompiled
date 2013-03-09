.class Lcom/htc/sunny/SView$11;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setEnlargeSensorArea(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$b:I

.field final synthetic val$l:I

.field final synthetic val$r:I

.field final synthetic val$t:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    iput-object p1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$11;->val$l:I

    iput p3, p0, Lcom/htc/sunny/SView$11;->val$t:I

    iput p4, p0, Lcom/htc/sunny/SView$11;->val$r:I

    iput p5, p0, Lcom/htc/sunny/SView$11;->val$b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 387
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$11;->val$l:I

    iput v1, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    .line 390
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$11;->val$t:I

    iput v1, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    .line 391
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$11;->val$r:I

    iput v1, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    .line 392
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$11;->val$b:I

    iput v1, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    .line 393
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mBackgroundWidth:I
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$100(Lcom/htc/sunny/SView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    add-int v3, v0, v1

    .line 395
    .local v3, w:I
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    #getter for: Lcom/htc/sunny/SView;->mBackgroundHeight:I
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$200(Lcom/htc/sunny/SView;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    add-int v4, v0, v1

    .line 396
    .local v4, h:I
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaL:I

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaR:I

    sub-int/2addr v0, v1

    div-int/lit8 v5, v0, 0x2

    .line 397
    .local v5, nCenterX:I
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v0, v0, Lcom/htc/sunny/SView;->mEnlargeSensorAreaT:I

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mEnlargeSensorAreaB:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v6, v0, 0x2

    .line 398
    .local v6, nCenterY:I
    iget-object v0, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget-object v0, v0, Lcom/htc/sunny/SView;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v1, p0, Lcom/htc/sunny/SView$11;->this$0:Lcom/htc/sunny/SView;

    iget v1, v1, Lcom/htc/sunny/SView;->mTouchSensorSpriteId:I

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/sunny/SunnyEngine;->setupSpriteGeometry(IIIIII)V

    goto :goto_0
.end method
