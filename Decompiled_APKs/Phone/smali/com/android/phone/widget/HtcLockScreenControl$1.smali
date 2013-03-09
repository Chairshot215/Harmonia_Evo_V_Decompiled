.class Lcom/android/phone/widget/HtcLockScreenControl$1;
.super Ljava/lang/Object;
.source "HtcLockScreenControl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/widget/HtcLockScreenControl;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/HtcLockScreenControl;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/HtcLockScreenControl;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 144
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 239
    :goto_0
    return v6

    .line 147
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    .line 149
    .local v2, nDownRawY:I
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    if-lt v2, v5, :cond_0

    .line 150
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5, v7}, Lcom/android/phone/widget/HtcLockScreenControl;->access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    .line 151
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v6, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v8, v2}, Lcom/android/phone/widget/HtcLockScreenControl;->access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    move-result v8

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I
    invoke-static {v6, v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$302(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    move-result v6

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$202(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    :goto_1
    move v6, v7

    .line 156
    goto :goto_0

    .line 153
    :cond_0
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    goto :goto_1

    .line 158
    .end local v2           #nDownRawY:I
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$100(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 159
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v5, v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$202(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 160
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$300(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    sub-int/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v8, 0x6

    if-ge v5, v8, :cond_2

    .line 161
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v6, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v6

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    :cond_1
    :goto_2
    move v6, v7

    .line 210
    goto :goto_0

    .line 163
    :cond_2
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$400(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    sub-int v0, v5, v8

    .line 164
    .local v0, dis:I
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v5, v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 165
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    add-int/2addr v8, v0

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v5, v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$502(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 166
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$600(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/widget/RelativeLayout;

    move-result-object v5

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    .line 167
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mForIncomingCall:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$700(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 168
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$600(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/widget/RelativeLayout;

    move-result-object v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x0

    invoke-virtual {v5, v6, v8}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 174
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$200(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    sub-int/2addr v5, v8

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mScreenHeight:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$800(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    iget-object v9, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I
    invoke-static {v9}, Lcom/android/phone/widget/HtcLockScreenControl;->access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0xa

    if-le v5, v8, :cond_3

    .line 175
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingUp:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$900(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1000(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    const-string v5, "HtcLockScreenControl"

    const-string v6, "runnableDraggingUp"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1100(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingUp:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$900(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 181
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z
    invoke-static {v5, v7}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1002(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    goto/16 :goto_2

    .line 184
    :cond_3
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingDown:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1200(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1000(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-ne v5, v7, :cond_1

    .line 186
    const-string v5, "HtcLockScreenControl"

    const-string v8, "runnableDraggingDown"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDragActionDone:Z
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1002(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    .line 190
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1100(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->runnableDraggingDown:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1200(Lcom/android/phone/widget/HtcLockScreenControl;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 195
    :cond_4
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockArea:Landroid/widget/RelativeLayout;
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$600(Lcom/android/phone/widget/HtcLockScreenControl;)Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    if-gez v5, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v8, v6, v5}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto/16 :goto_2

    :cond_5
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    rsub-int/lit8 v5, v5, 0x0

    goto :goto_3

    .line 202
    .end local v0           #dis:I
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v3, v5

    .line 203
    .local v3, nMoveRawY:I
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 204
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5, v7}, Lcom/android/phone/widget/HtcLockScreenControl;->access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    .line 205
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v6, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v8, v3}, Lcom/android/phone/widget/HtcLockScreenControl;->access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    move-result v8

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I
    invoke-static {v6, v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$302(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    move-result v6

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$202(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    goto/16 :goto_2

    .line 207
    :cond_7
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    goto/16 :goto_2

    .line 213
    .end local v3           #nMoveRawY:I
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$300(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    sub-int v1, v5, v8

    .line 214
    .local v1, dy:I
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mScreenHeight:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$800(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    iget-object v8, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mUnlockAreaTop:I
    invoke-static {v8}, Lcom/android/phone/widget/HtcLockScreenControl;->access$000(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v8

    sub-int/2addr v5, v8

    div-int/lit8 v4, v5, 0x3

    .line 216
    .local v4, threshold:I
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mForIncomingCall:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$700(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 217
    if-lez v1, :cond_9

    if-lt v1, v4, :cond_9

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$100(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 218
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #calls: Lcom/android/phone/widget/HtcLockScreenControl;->openDrawerDown()V
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1300(Lcom/android/phone/widget/HtcLockScreenControl;)V

    .line 232
    :cond_8
    :goto_4
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mLastY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$202(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 233
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mInitY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$302(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 234
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mStartY:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$402(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 235
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$502(Lcom/android/phone/widget/HtcLockScreenControl;I)I

    .line 236
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #setter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5, v6}, Lcom/android/phone/widget/HtcLockScreenControl;->access$102(Lcom/android/phone/widget/HtcLockScreenControl;Z)Z

    move v6, v7

    .line 237
    goto/16 :goto_0

    .line 219
    :cond_9
    if-gez v1, :cond_a

    rsub-int/lit8 v5, v1, 0x0

    mul-int/lit8 v8, v4, 0x4

    if-lt v5, v8, :cond_a

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$100(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 220
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #calls: Lcom/android/phone/widget/HtcLockScreenControl;->openDrawerUp()V
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1400(Lcom/android/phone/widget/HtcLockScreenControl;)V

    goto :goto_4

    .line 222
    :cond_a
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #calls: Lcom/android/phone/widget/HtcLockScreenControl;->closeDrawer()V
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1500(Lcom/android/phone/widget/HtcLockScreenControl;)V

    goto :goto_4

    .line 225
    :cond_b
    if-lt v1, v4, :cond_c

    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mbInArcArea:Z
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$100(Lcom/android/phone/widget/HtcLockScreenControl;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 226
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #calls: Lcom/android/phone/widget/HtcLockScreenControl;->openDrawerDown()V
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1300(Lcom/android/phone/widget/HtcLockScreenControl;)V

    goto :goto_4

    .line 227
    :cond_c
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #getter for: Lcom/android/phone/widget/HtcLockScreenControl;->mDistance:I
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$500(Lcom/android/phone/widget/HtcLockScreenControl;)I

    move-result v5

    if-lez v5, :cond_8

    .line 228
    iget-object v5, p0, Lcom/android/phone/widget/HtcLockScreenControl$1;->this$0:Lcom/android/phone/widget/HtcLockScreenControl;

    #calls: Lcom/android/phone/widget/HtcLockScreenControl;->closeDrawer()V
    invoke-static {v5}, Lcom/android/phone/widget/HtcLockScreenControl;->access$1500(Lcom/android/phone/widget/HtcLockScreenControl;)V

    goto :goto_4

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
