.class Lcom/htc/fusion/fx/controls/TextInputWorker$5;
.super Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;
.source "TextInputWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fusion/fx/controls/TextInputWorker;->bindMessageListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 14

    const-wide/16 v0, 0x3e8

    const/4 v9, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputWorker:Lcom/htc/fusion/fx/controls/TextInputWorker;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$400(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputWorker;

    move-result-object v0

    #calls: Lcom/htc/fusion/fx/controls/TextInputWorker;->exitInputMode_OnUiThread()V
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$800(Lcom/htc/fusion/fx/controls/TextInputWorker;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    move-wide v5, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :cond_2
    iget v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/htc/fusion/fx/controls/FxTextInput;->updateTextScreenPosition(Z)V

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isFocused()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #setter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z
    invoke-static {v2, v9}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$902(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)Z

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/htc/fusion/fx/controls/FxTextInput;->swapStreamingTextureVisibility(Z)V

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->enableStreamingTexture()V

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInputInfo:Lcom/htc/fusion/fx/controls/TextInputInfo;
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$700(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputInfo;

    move-result-object v3

    iget-boolean v3, v3, Lcom/htc/fusion/fx/controls/TextInputInfo;->cursorVisible:Z

    invoke-virtual {v2, v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    :cond_3
    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mExitInputModeTimer:Landroid/os/CountDownTimer;
    invoke-static {v2}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$200(Lcom/htc/fusion/fx/controls/TextInputWorker;)Landroid/os/CountDownTimer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v5, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v10, v2, v3

    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v11, v2, v3

    move-wide v5, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v13

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #setter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z
    invoke-static {v0, v4}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$902(Lcom/htc/fusion/fx/controls/TextInputWorker;Z)Z

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->disableStreamingTexture()V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTextInput:Lcom/htc/fusion/fx/controls/FxTextInput;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$300(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/FxTextInput;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/FxTextInput;->swapStreamingTextureVisibility(Z)V

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->setCursorVisible(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$5;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
