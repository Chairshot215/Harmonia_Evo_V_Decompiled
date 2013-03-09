.class Lcom/htc/sunny/SSurfaceView$5;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$5;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$5;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny/SSurfaceView;->unBindSurfaceR()V

    return-void
.end method
