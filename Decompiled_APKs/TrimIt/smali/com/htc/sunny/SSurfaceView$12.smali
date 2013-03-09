.class Lcom/htc/sunny/SSurfaceView$12;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SSurfaceView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SSurfaceView;

.field final synthetic val$event:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SSurfaceView;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/htc/sunny/SSurfaceView$12;->this$0:Lcom/htc/sunny/SSurfaceView;

    iput-object p2, p0, Lcom/htc/sunny/SSurfaceView$12;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/sunny/SSurfaceView$12;->this$0:Lcom/htc/sunny/SSurfaceView;

    #getter for: Lcom/htc/sunny/SSurfaceView;->mRootView:Lcom/htc/sunny/SView;
    invoke-static {v0}, Lcom/htc/sunny/SSurfaceView;->access$400(Lcom/htc/sunny/SSurfaceView;)Lcom/htc/sunny/SView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny/SSurfaceView$12;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SView;->dispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 518
    return-void
.end method
