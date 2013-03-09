.class Lcom/htc/textselection/HtcTextSelectionManager$1;
.super Ljava/lang/Object;
.source "HtcTextSelectionManager.java"

# interfaces
.implements Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/textselection/HtcTextSelectionManager;->getOutsideTouchListener()Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/textselection/HtcTextSelectionManager;


# direct methods
.method constructor <init>(Lcom/htc/textselection/HtcTextSelectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOutsideTouched(Landroid/view/MotionEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    #setter for: Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v0, v1}, Lcom/htc/textselection/HtcTextSelectionManager;->access$102(Lcom/htc/textselection/HtcTextSelectionManager;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/htc/textselection/HtcTextSelectionManager;->access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mVisibleRect:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->access$100(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_1
    iget-object v0, p0, Lcom/htc/textselection/HtcTextSelectionManager$1;->this$0:Lcom/htc/textselection/HtcTextSelectionManager;

    #getter for: Lcom/htc/textselection/HtcTextSelectionManager;->mCurrentView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/textselection/HtcTextSelectionManager;->access$000(Lcom/htc/textselection/HtcTextSelectionManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->stopSelectionActionMode()V

    :cond_2
    return-void
.end method
