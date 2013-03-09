.class Lcom/htc/sunny/SView$9;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$drawablePress:Landroid/graphics/drawable/Drawable;

.field final synthetic val$drawableRest:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    iput-object p1, p0, Lcom/htc/sunny/SView$9;->this$0:Lcom/htc/sunny/SView;

    iput-object p2, p0, Lcom/htc/sunny/SView$9;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/htc/sunny/SView$9;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 346
    iget-object v0, p0, Lcom/htc/sunny/SView$9;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$9;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/htc/sunny/SView$9;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/htc/sunny/SView;->setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 347
    return-void
.end method
