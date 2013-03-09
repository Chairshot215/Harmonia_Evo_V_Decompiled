.class Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;
.super Landroid/view/View;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSSurfaceViewOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/view/SView;->createContextMenu(Landroid/view/ContextMenu;)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/view/SView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    :cond_0
    return-void
.end method
