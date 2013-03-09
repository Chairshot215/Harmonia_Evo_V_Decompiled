.class Lcom/android/camera/widget/Panel$1;
.super Ljava/lang/Object;
.source "Panel.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/Panel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field initX:I

.field initY:I

.field setInitialPosition:Z

.field final synthetic this$0:Lcom/android/camera/widget/Panel;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/Panel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mState:Lcom/android/camera/widget/Panel$State;
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$000(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$State;

    move-result-object v3

    sget-object v4, Lcom/android/camera/widget/Panel$State;->ANIMATING:Lcom/android/camera/widget/Panel$State;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mBringToFront:Z
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$100(Lcom/android/camera/widget/Panel;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    invoke-virtual {v3}, Lcom/android/camera/widget/Panel;->bringToFront()V

    :cond_2
    iput v5, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    iput v5, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContent:Landroid/view/View;
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$200(Lcom/android/camera/widget/Panel;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mOrientation:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$300(Lcom/android/camera/widget/Panel;)I

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/widget/Panel$1;->setInitialPosition:Z

    :goto_3
    iget-object v1, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v1}, Lcom/android/camera/widget/Panel;->access$800(Lcom/android/camera/widget/Panel;)Landroid/view/GestureDetector;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    if-ne v0, v2, :cond_0

    iget-object v1, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v2, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    iget-object v2, v2, Lcom/android/camera/widget/Panel;->startAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/camera/widget/Panel;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mPosition:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$400(Lcom/android/camera/widget/Panel;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    :goto_4
    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    goto :goto_2

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    iget-boolean v1, p0, Lcom/android/camera/widget/Panel$1;->setInitialPosition:Z

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentWidth:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$500(Lcom/android/camera/widget/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    iget v1, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    iget-object v3, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mContentHeight:I
    invoke-static {v3}, Lcom/android/camera/widget/Panel;->access$600(Lcom/android/camera/widget/Panel;)I

    move-result v3

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    iget-object v1, p0, Lcom/android/camera/widget/Panel$1;->this$0:Lcom/android/camera/widget/Panel;

    #getter for: Lcom/android/camera/widget/Panel;->mGestureListener:Lcom/android/camera/widget/Panel$PanelOnGestureListener;
    invoke-static {v1}, Lcom/android/camera/widget/Panel;->access$700(Lcom/android/camera/widget/Panel;)Lcom/android/camera/widget/Panel$PanelOnGestureListener;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    iget v4, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/widget/Panel$PanelOnGestureListener;->setScroll(II)V

    iput-boolean v5, p0, Lcom/android/camera/widget/Panel$1;->setInitialPosition:Z

    iget v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    iget v1, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    :cond_8
    iget v1, p0, Lcom/android/camera/widget/Panel$1;->initX:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/camera/widget/Panel$1;->initY:I

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_3
.end method
