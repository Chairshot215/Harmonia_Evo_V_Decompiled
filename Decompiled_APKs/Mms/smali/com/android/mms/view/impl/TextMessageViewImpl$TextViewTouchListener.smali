.class Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;
.super Ljava/lang/Object;
.source "TextMessageViewImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/view/impl/TextMessageViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/view/impl/TextMessageViewImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    iput-object p1, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, -0x100

    const-wide/16 v7, 0x64

    const/4 v6, 0x1

    .line 734
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Landroid/widget/TextView;

    move-result-object v3

    .line 735
    .local v3, touchTextView:Landroid/widget/TextView;
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 736
    check-cast v3, Landroid/widget/TextView;

    .line 739
    :cond_0
    const/4 v2, 0x0

    .line 741
    .local v2, span:Landroid/text/Spannable;
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #setter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastX:F
    invoke-static {v4, v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$902(Lcom/android/mms/view/impl/TextMessageViewImpl;F)F

    .line 742
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    #setter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->m_fLastY:F
    invoke-static {v4, v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1002(Lcom/android/mms/view/impl/TextMessageViewImpl;F)F

    .line 743
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 744
    .local v0, action:I
    const/4 v1, 0x0

    .line 745
    .local v1, link:[Landroid/text/style/ClickableSpan;
    packed-switch v0, :pswitch_data_0

    .line 804
    :cond_1
    :goto_0
    :pswitch_0
    return v10

    .line 748
    :pswitch_1
    if-eqz v3, :cond_2

    .line 749
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 751
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->isCallerComposeMessageActivity()Z
    invoke-static {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1100(Lcom/android/mms/view/impl/TextMessageViewImpl;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 752
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V
    invoke-static {v4, v6, v3}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1200(Lcom/android/mms/view/impl/TextMessageViewImpl;ZLandroid/widget/TextView;)V

    .line 760
    :goto_1
    :pswitch_2
    if-eqz v3, :cond_3

    .line 761
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v2

    .line 763
    :cond_3
    if-eqz v2, :cond_4

    .line 764
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->getClickableSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;
    invoke-static {v4, v3, v2, p2}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1300(Lcom/android/mms/view/impl/TextMessageViewImpl;Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)[Landroid/text/style/ClickableSpan;

    move-result-object v1

    .line 769
    :cond_4
    if-eqz v1, :cond_7

    array-length v4, v1

    if-eqz v4, :cond_7

    .line 770
    if-ne v0, v6, :cond_6

    .line 771
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 772
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 774
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #setter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->mTextViewLinkOnClick:Z
    invoke-static {v4, v6}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$702(Lcom/android/mms/view/impl/TextMessageViewImpl;Z)Z

    goto :goto_0

    .line 754
    :cond_5
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #calls: Lcom/android/mms/view/impl/TextMessageViewImpl;->enableTextSelection(ZLandroid/widget/TextView;)V
    invoke-static {v4, v10, v3}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1200(Lcom/android/mms/view/impl/TextMessageViewImpl;ZLandroid/widget/TextView;)V

    goto :goto_1

    .line 775
    :cond_6
    if-nez v0, :cond_1

    .line 776
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 779
    :cond_7
    if-ne v0, v6, :cond_8

    .line 781
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 782
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 784
    :cond_8
    if-nez v0, :cond_1

    .line 789
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    .line 797
    :pswitch_3
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 798
    iget-object v4, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v4}, Lcom/android/mms/view/impl/TextMessageViewImpl;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/view/impl/TextMessageViewImpl$TextViewTouchListener;->this$0:Lcom/android/mms/view/impl/TextMessageViewImpl;

    #getter for: Lcom/android/mms/view/impl/TextMessageViewImpl;->resetTextColorsRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/mms/view/impl/TextMessageViewImpl;->access$1400(Lcom/android/mms/view/impl/TextMessageViewImpl;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 801
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto/16 :goto_0

    .line 745
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
