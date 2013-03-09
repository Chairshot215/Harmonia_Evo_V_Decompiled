.class Lcom/htc/fusion/fx/controls/TextInputWorker$3;
.super Ljava/lang/Object;
.source "TextInputWorker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->initialize_OnUiThread(FFZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    invoke-static {v8}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$500(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxHitbox;

    move-result-object v8

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->scaleHitboxWithEditText(Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z
    invoke-static {v6, v7, v8}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$600(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/widget/EditText;Lcom/htc/fusion/fx/controls/FxHitbox;)Z

    const/high16 v3, 0x3f80

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$700(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputInfo;

    move-result-object v7

    iget v7, v7, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    if-ge v6, v7, :cond_2

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$700(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputInfo;

    move-result-object v7

    iget v7, v7, Lcom/htc/fusion/fx/controls/TextInputInfo;->sizeWidth:I

    int-to-float v7, v7

    div-float v3, v6, v7

    :cond_2
    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/FxControl;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    div-float/2addr v6, v3

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v8}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    div-float/2addr v6, v3

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    iget-object v8, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$3;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v8}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getTop()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-virtual {v4, v0, v5, v6, v7}, Lcom/htc/fusion/fx/FxViewObject;->onTouchEvent(IIFF)Z

    :cond_4
    const/4 v5, 0x1

    goto/16 :goto_0
.end method
