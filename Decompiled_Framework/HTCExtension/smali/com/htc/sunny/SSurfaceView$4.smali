.class Lcom/htc/sunny/SSurfaceView$4;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;

.field final synthetic val$height:I

.field final synthetic val$holder:Landroid/view/SurfaceHolder;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/SurfaceHolder;II)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$4;->this$0:Lcom/htc/sunny/SSurfaceView;

    iput-object p2, p0, Lcom/htc/sunny/SSurfaceView$4;->val$holder:Landroid/view/SurfaceHolder;

    iput p3, p0, Lcom/htc/sunny/SSurfaceView$4;->val$width:I

    iput p4, p0, Lcom/htc/sunny/SSurfaceView$4;->val$height:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$4;->this$0:Lcom/htc/sunny/SSurfaceView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$4;->val$holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny/SSurfaceView$4;->val$width:I

    iget v3, p0, Lcom/htc/sunny/SSurfaceView$4;->val$height:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny/SSurfaceView;->bindSurfaceR(Landroid/view/Surface;II)V

    return-void
.end method
