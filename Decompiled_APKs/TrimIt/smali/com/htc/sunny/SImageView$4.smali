.class Lcom/htc/sunny/SImageView$4;
.super Ljava/lang/Object;
.source "SImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SImageView;->setImage(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SImageView;

.field final synthetic val$nHeight:I

.field final synthetic val$nPressResId:I

.field final synthetic val$nRestResId:I

.field final synthetic val$nWidth:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SImageView;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    iput p2, p0, Lcom/htc/sunny/SImageView$4;->val$nRestResId:I

    iput p3, p0, Lcom/htc/sunny/SImageView$4;->val$nPressResId:I

    iput p4, p0, Lcom/htc/sunny/SImageView$4;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SImageView$4;->val$nHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 121
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    #calls: Lcom/htc/sunny/SImageView;->freeImageDrawable()V
    invoke-static {v1}, Lcom/htc/sunny/SImageView;->access$100(Lcom/htc/sunny/SImageView;)V

    .line 123
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    iget-object v1, v1, Lcom/htc/sunny/SImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 124
    .local v0, rc:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/sunny/SImageView$4;->val$nRestResId:I

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    iget v2, p0, Lcom/htc/sunny/SImageView$4;->val$nRestResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SImageView;->mImageRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 127
    :cond_0
    iget v1, p0, Lcom/htc/sunny/SImageView$4;->val$nPressResId:I

    if-eqz v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    iget v2, p0, Lcom/htc/sunny/SImageView$4;->val$nPressResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SImageView;->mImagePressDrawable:Landroid/graphics/drawable/Drawable;

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    iget v2, p0, Lcom/htc/sunny/SImageView$4;->val$nWidth:I

    iget v3, p0, Lcom/htc/sunny/SImageView$4;->val$nHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/htc/sunny/SImageView;->setIconDisplaySize(II)V

    .line 133
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    invoke-virtual {v1}, Lcom/htc/sunny/SImageView;->createResource()V

    .line 134
    iget-object v1, p0, Lcom/htc/sunny/SImageView$4;->this$0:Lcom/htc/sunny/SImageView;

    invoke-virtual {v1}, Lcom/htc/sunny/SImageView;->invalidate3DView()V

    .line 135
    return-void
.end method
