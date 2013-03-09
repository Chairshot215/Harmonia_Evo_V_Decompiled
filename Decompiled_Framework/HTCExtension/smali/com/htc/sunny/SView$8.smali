.class Lcom/htc/sunny/SView$8;
.super Ljava/lang/Object;
.source "SView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SView;->setBackgroundImageDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SView;

.field final synthetic val$drawablePress:Landroid/graphics/drawable/Drawable;

.field final synthetic val$drawableRest:Landroid/graphics/drawable/Drawable;

.field final synthetic val$nHeight:I

.field final synthetic val$nWidth:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iput-object p2, p0, Lcom/htc/sunny/SView$8;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/htc/sunny/SView$8;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iput p4, p0, Lcom/htc/sunny/SView$8;->val$nWidth:I

    iput p5, p0, Lcom/htc/sunny/SView$8;->val$nHeight:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    #calls: Lcom/htc/sunny/SView;->freeBackgroundDrawable()V
    invoke-static {v0}, Lcom/htc/sunny/SView;->access$000(Lcom/htc/sunny/SView;)V

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBackgroundRestBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBackgroundPressBitmap:Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$8;->val$drawableRest:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBKRestDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iget-object v1, p0, Lcom/htc/sunny/SView$8;->val$drawablePress:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/htc/sunny/SView;->mBKPressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    iget v1, p0, Lcom/htc/sunny/SView$8;->val$nWidth:I

    iget v2, p0, Lcom/htc/sunny/SView$8;->val$nHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny/SView;->setBackgroundDisplaySize(II)V

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->createResource()V

    iget-object v0, p0, Lcom/htc/sunny/SView$8;->this$0:Lcom/htc/sunny/SView;

    invoke-virtual {v0}, Lcom/htc/sunny/SView;->invalidate3DView()V

    return-void
.end method
