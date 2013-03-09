.class Lcom/htc/sunny/SSurfaceView$2;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
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
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$2;->this$0:Lcom/htc/sunny/SSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$2;->this$0:Lcom/htc/sunny/SSurfaceView;

    const/4 v1, 0x1

    #setter for: Lcom/htc/sunny/SSurfaceView;->mRecycleBK:Z
    invoke-static {v0, v1}, Lcom/htc/sunny/SSurfaceView;->access$002(Lcom/htc/sunny/SSurfaceView;Z)Z

    .line 202
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$2;->this$0:Lcom/htc/sunny/SSurfaceView;

    #calls: Lcom/htc/sunny/SSurfaceView;->recycleBackground()V
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$100(Lcom/htc/sunny/SSurfaceView;)V

    .line 203
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$2;->this$0:Lcom/htc/sunny/SSurfaceView;

    #calls: Lcom/htc/sunny/SSurfaceView;->generateBackground()V
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$200(Lcom/htc/sunny/SSurfaceView;)V

    .line 204
    return-void
.end method
