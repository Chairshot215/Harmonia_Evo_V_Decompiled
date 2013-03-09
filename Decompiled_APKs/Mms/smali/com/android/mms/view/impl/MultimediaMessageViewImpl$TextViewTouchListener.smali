.class Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;
.super Ljava/lang/Object;
.source "MultimediaMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/MultimediaMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const-wide/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 454
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, v3, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView:Landroid/widget/TextView;

    iput-object v3, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    .line 455
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    iput-object p1, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v2, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 511
    :cond_1
    :goto_0
    return v6

    .line 463
    :cond_2
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    #setter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastX:F
    invoke-static {v2, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$302(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;F)F

    .line 464
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    #setter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->m_fLastY:F
    invoke-static {v2, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$402(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;F)F

    .line 465
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 466
    .local v0, action:I
    const/4 v1, 0x0

    .line 468
    .local v1, link:[Landroid/text/style/ClickableSpan;
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 471
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 472
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, v3, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    #calls: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V
    invoke-static {v2, v5, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$500(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;ZLandroid/widget/TextView;)V

    .line 481
    :goto_1
    :pswitch_2
    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v4, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v2, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    #calls: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    invoke-static {v3, v4, v2, p2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$600(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    .line 484
    array-length v2, v1

    if-eqz v2, :cond_5

    .line 485
    if-ne v0, v5, :cond_4

    .line 486
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$700(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 487
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$700(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #setter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v2, v5}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$102(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;Z)Z

    goto :goto_0

    .line 475
    :cond_3
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v3, v3, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    #calls: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V
    invoke-static {v2, v6, v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$500(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;ZLandroid/widget/TextView;)V

    goto :goto_1

    .line 490
    :cond_4
    if-nez v0, :cond_1

    .line 491
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v2, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    const/high16 v3, -0x100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 494
    :cond_5
    if-ne v0, v5, :cond_6

    .line 495
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextViewColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$800(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 497
    :cond_6
    if-nez v0, :cond_1

    .line 498
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2, v5}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->setPressed(Z)V

    goto/16 :goto_0

    .line 504
    :pswitch_3
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$700(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 505
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v2}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->access$700(Lcom/android/mms/view/impl/MultimediaMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 508
    iget-object v2, p0, Lcom/android/mms/view/impl/MultimediaMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    iget-object v2, v2, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->mTextView_onTouch:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    invoke-static {v2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
