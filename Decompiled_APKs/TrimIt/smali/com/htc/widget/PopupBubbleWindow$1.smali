.class Lcom/htc/widget/PopupBubbleWindow$1;
.super Ljava/lang/Object;
.source "PopupBubbleWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/PopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/PopupBubbleWindow;


# direct methods
.method constructor <init>(Lcom/htc/widget/PopupBubbleWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 147
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchor:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$000(Lcom/htc/widget/PopupBubbleWindow;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v6, v0

    .line 148
    .local v6, anchor:Landroid/view/View;
    :goto_0
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mPopupView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$100(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 152
    .local v7, p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v2}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v2

    iget-object v4, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v4}, Lcom/htc/widget/PopupBubbleWindow;->access$300(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v4

    #calls: Lcom/htc/widget/PopupBubbleWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v4}, Lcom/htc/widget/PopupBubbleWindow;->access$400(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Lcom/htc/widget/PopupBubbleWindow;->updateAboveAnchor(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->access$500(Lcom/htc/widget/PopupBubbleWindow;Z)V

    .line 153
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/PopupBubbleWindow;->update(IIIIZ)V

    .line 156
    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$600(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mTriangleView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/PopupBubbleWindow;->access$600(Lcom/htc/widget/PopupBubbleWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 160
    .restart local v7       #p:Landroid/view/WindowManager$LayoutParams;
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v1, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget-object v2, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorXoff:I
    invoke-static {v2}, Lcom/htc/widget/PopupBubbleWindow;->access$200(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    #getter for: Lcom/htc/widget/PopupBubbleWindow;->mAnchorYoff:I
    invoke-static {v3}, Lcom/htc/widget/PopupBubbleWindow;->access$300(Lcom/htc/widget/PopupBubbleWindow;)I

    move-result v3

    #calls: Lcom/htc/widget/PopupBubbleWindow;->findTrianglePosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z
    invoke-static {v1, v6, v7, v2, v3}, Lcom/htc/widget/PopupBubbleWindow;->access$700(Lcom/htc/widget/PopupBubbleWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;II)Z

    move-result v1

    #calls: Lcom/htc/widget/PopupBubbleWindow;->updateAboveTriangle(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/PopupBubbleWindow;->access$800(Lcom/htc/widget/PopupBubbleWindow;Z)V

    .line 161
    iget-object v0, p0, Lcom/htc/widget/PopupBubbleWindow$1;->this$0:Lcom/htc/widget/PopupBubbleWindow;

    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    #calls: Lcom/htc/widget/PopupBubbleWindow;->updateTriangle(IIZ)V
    invoke-static {v0, v1, v2, v5}, Lcom/htc/widget/PopupBubbleWindow;->access$900(Lcom/htc/widget/PopupBubbleWindow;IIZ)V

    .line 165
    .end local v7           #p:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return-void

    .line 147
    .end local v6           #anchor:Landroid/view/View;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method
