.class Lcom/htc/launcher/DragLayer$1;
.super Ljava/lang/Object;
.source "DragLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/DragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/DragLayer;

.field final synthetic val$currentPage:Lcom/htc/launcher/CellLayout;


# direct methods
.method constructor <init>(Lcom/htc/launcher/DragLayer;Lcom/htc/launcher/CellLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/htc/launcher/DragLayer$1;->this$0:Lcom/htc/launcher/DragLayer;

    iput-object p2, p0, Lcom/htc/launcher/DragLayer$1;->val$currentPage:Lcom/htc/launcher/CellLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$1;->val$currentPage:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->isWidgetBeingResized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/htc/launcher/DragLayer$1;->val$currentPage:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->finishWidgetResize()Z

    .line 603
    :cond_0
    return-void
.end method
