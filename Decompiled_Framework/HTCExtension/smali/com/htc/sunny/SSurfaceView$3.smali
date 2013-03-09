.class Lcom/htc/sunny/SSurfaceView$3;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->setBackground(Lcom/htc/sunny/SBitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;

.field final synthetic val$bitmap:Lcom/htc/sunny/SBitmap;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$3;->this$0:Lcom/htc/sunny/SSurfaceView;

    iput-object p2, p0, Lcom/htc/sunny/SSurfaceView$3;->val$bitmap:Lcom/htc/sunny/SBitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$3;->this$0:Lcom/htc/sunny/SSurfaceView;

    #calls: Lcom/htc/sunny/SSurfaceView;->recycleBackground()V
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$100(Lcom/htc/sunny/SSurfaceView;)V

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$3;->this$0:Lcom/htc/sunny/SSurfaceView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/SSurfaceView;->access$002(Lcom/htc/sunny/SSurfaceView;Z)Z

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$3;->this$0:Lcom/htc/sunny/SSurfaceView;

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$3;->val$bitmap:Lcom/htc/sunny/SBitmap;

    #setter for: Lcom/htc/sunny/SSurfaceView;->mBackgroundBmp:Lcom/htc/sunny/SBitmap;
    invoke-static {v0, v1}, Lcom/htc/sunny/SSurfaceView;->access$302(Lcom/htc/sunny/SSurfaceView;Lcom/htc/sunny/SBitmap;)Lcom/htc/sunny/SBitmap;

    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$3;->this$0:Lcom/htc/sunny/SSurfaceView;

    #calls: Lcom/htc/sunny/SSurfaceView;->generateBackground()V
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$200(Lcom/htc/sunny/SSurfaceView;)V

    return-void
.end method
