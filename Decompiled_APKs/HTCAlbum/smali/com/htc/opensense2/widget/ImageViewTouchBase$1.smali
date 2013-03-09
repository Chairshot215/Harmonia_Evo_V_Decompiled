.class Lcom/htc/opensense2/widget/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$isThumb:Z

.field final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/htc/opensense2/widget/ImageViewTouchBase;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iput-object p2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$resetSupp:Z

    iput-boolean p4, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$isThumb:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->this$0:Lcom/htc/opensense2/widget/ImageViewTouchBase;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-boolean v2, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$resetSupp:Z

    iget-boolean v3, p0, Lcom/htc/opensense2/widget/ImageViewTouchBase$1;->val$isThumb:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 381
    return-void
.end method
