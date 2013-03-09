.class Lcom/htc/sunny/SView$6;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImage(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$nHeight:I

.field final synthetic val$nPressResId:I

.field final synthetic val$nRestResId:I

.field final synthetic val$nWidth:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iput p2, p0, Lcom/htc/sunny/SView$6;->val$nRestResId:I

    iput p3, p0, Lcom/htc/sunny/SView$6;->val$nPressResId:I

    iput p4, p0, Lcom/htc/sunny/SView$6;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SView$6;->val$nHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 272
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    #calls: Lcom/htc/sunny/SView;->freeBackgroundDrawable()V
    invoke-static {v1}, Lcom/htc/sunny/SView;->access$000(Lcom/htc/sunny/SView;)V

    .line 273
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iput-object v2, v1, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    .line 274
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iput-object v2, v1, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    .line 276
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, v1, Lcom/htc/sunny/SView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 277
    .local v0, rc:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/sunny/SView$6;->val$nRestResId:I

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iget v2, p0, Lcom/htc/sunny/SView$6;->val$nRestResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 280
    :cond_0
    iget v1, p0, Lcom/htc/sunny/SView$6;->val$nPressResId:I

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iget v2, p0, Lcom/htc/sunny/SView$6;->val$nPressResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    iget v2, p0, Lcom/htc/sunny/SView$6;->val$nWidth:I

    iget v3, p0, Lcom/htc/sunny/SView$6;->val$nHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    .line 286
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v1}, Lcom/htc/sunny/SView;->createResource()V

    .line 287
    iget-object v1, p0, Lcom/htc/sunny/SView$6;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v1}, Lcom/htc/sunny/SView;->invalidate3DView()V

    .line 288
    return-void
.end method
