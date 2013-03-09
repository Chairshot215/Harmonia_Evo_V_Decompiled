.class Lcom/htc/launcher/DragLayer$ScrollRunnable;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# instance fields
.field private mDirection:I

.field final synthetic this$0:Lcom/htc/launcher/DragLayer;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/htc/launcher/DragLayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;
    invoke-static {v0}, Lcom/htc/launcher/DragLayer;->access$000(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/DragScroller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1431
    iget v0, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->mDirection:I

    if-nez v0, :cond_1

    .line 1432
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;
    invoke-static {v0}, Lcom/htc/launcher/DragLayer;->access$000(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/DragScroller;->scrollLeft()V

    .line 1436
    :goto_0
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/htc/launcher/DragLayer;

    const/4 v1, 0x0

    #setter for: Lcom/htc/launcher/DragLayer;->mScrollState:I
    invoke-static {v0, v1}, Lcom/htc/launcher/DragLayer;->access$102(Lcom/htc/launcher/DragLayer;I)I

    .line 1438
    :cond_0
    return-void

    .line 1434
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->this$0:Lcom/htc/launcher/DragLayer;

    #getter for: Lcom/htc/launcher/DragLayer;->mDragScroller:Lcom/htc/launcher/DragScroller;
    invoke-static {v0}, Lcom/htc/launcher/DragLayer;->access$000(Lcom/htc/launcher/DragLayer;)Lcom/htc/launcher/DragScroller;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/launcher/DragScroller;->scrollRight()V

    goto :goto_0
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 1441
    iput p1, p0, Lcom/htc/launcher/DragLayer$ScrollRunnable;->mDirection:I

    .line 1442
    return-void
.end method
