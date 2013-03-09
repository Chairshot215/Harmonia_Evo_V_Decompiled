.class Lcom/htc/sunny/SGallery$1;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setSelector(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$nPressResId:I

.field final synthetic val$nRestResId:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/htc/sunny/SGallery$1;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$1;->val$nRestResId:I

    iput p3, p0, Lcom/htc/sunny/SGallery$1;->val$nPressResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 361
    iget-object v1, p0, Lcom/htc/sunny/SGallery$1;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, v1, Lcom/htc/sunny/SGallery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 362
    .local v0, rc:Landroid/content/res/Resources;
    iget v1, p0, Lcom/htc/sunny/SGallery$1;->val$nRestResId:I

    if-eqz v1, :cond_0

    .line 363
    iget-object v1, p0, Lcom/htc/sunny/SGallery$1;->this$0:Lcom/htc/sunny/SGallery;

    iget v2, p0, Lcom/htc/sunny/SGallery$1;->val$nRestResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 365
    :cond_0
    iget v1, p0, Lcom/htc/sunny/SGallery$1;->val$nPressResId:I

    if-eqz v1, :cond_1

    .line 366
    iget-object v1, p0, Lcom/htc/sunny/SGallery$1;->this$0:Lcom/htc/sunny/SGallery;

    iget v2, p0, Lcom/htc/sunny/SGallery$1;->val$nPressResId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 368
    :cond_1
    return-void
.end method
