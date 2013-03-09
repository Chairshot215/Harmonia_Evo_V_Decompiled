.class Lcom/htc/sunny/SGallery$3;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$drawablePress:Landroid/graphics/drawable/Drawable;

.field final synthetic val$drawableRest:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 392
    iput-object p1, p0, Lcom/htc/sunny/SGallery$3;->this$0:Lcom/htc/sunny/SGallery;

    iput-object p2, p0, Lcom/htc/sunny/SGallery$3;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/htc/sunny/SGallery$3;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/htc/sunny/SGallery$3;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, p0, Lcom/htc/sunny/SGallery$3;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/htc/sunny/SGallery;->mSelectorPressDrawable:Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v0, p0, Lcom/htc/sunny/SGallery$3;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, p0, Lcom/htc/sunny/SGallery$3;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/htc/sunny/SGallery;->mSelectorRestDrawable:Landroid/graphics/drawable/Drawable;

    .line 396
    return-void
.end method
