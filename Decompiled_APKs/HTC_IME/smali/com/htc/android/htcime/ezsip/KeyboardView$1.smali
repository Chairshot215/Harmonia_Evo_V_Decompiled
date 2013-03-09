.class Lcom/htc/android/htcime/ezsip/KeyboardView$1;
.super Landroid/os/Handler;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ezsip/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v4, 0x28

    const/4 v5, -0x1

    const/16 v3, 0x8

    .line 306
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 308
    :pswitch_0
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView;->showKey(I)V

    goto :goto_0

    .line 311
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 314
    :pswitch_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mFeedBack:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 317
    :pswitch_3
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-object v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mPreviewFrameFunc:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 320
    :pswitch_4
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    invoke-virtual {v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->repeatKey()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 321
    const/4 v2, 0x3

    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 323
    .local v1, repeat:Landroid/os/Message;
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressDelCan:Z

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mAutoPressDelCan:Z

    .line 325
    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 346
    :goto_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->isReapeatKey:Z

    goto :goto_0

    .line 328
    :cond_1
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mDelWordMode:Z

    if-eqz v2, :cond_2

    .line 329
    const-wide/16 v2, 0x190

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 332
    :cond_2
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ezsip/KeyboardView;->mRepeatArrowsMode:Z

    if-eqz v2, :cond_3

    .line 333
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 336
    :cond_3
    const/16 v0, 0x64

    .line 337
    .local v0, delete_delay:I
    invoke-static {}, Lcom/htc/android/htcime/ezsip/KeyboardView;->access$000()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_5

    invoke-static {}, Lcom/htc/android/htcime/ezsip/KeyboardView;->access$000()I

    move-result v2

    if-gt v2, v4, :cond_5

    .line 338
    const/16 v0, 0x32

    .line 343
    :cond_4
    :goto_2
    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 344
    invoke-static {}, Lcom/htc/android/htcime/ezsip/KeyboardView;->access$008()I

    goto :goto_1

    .line 339
    :cond_5
    invoke-static {}, Lcom/htc/android/htcime/ezsip/KeyboardView;->access$000()I

    move-result v2

    if-le v2, v4, :cond_4

    .line 340
    const/16 v0, 0x14

    goto :goto_2

    .line 350
    .end local v0           #delete_delay:I
    .end local v1           #repeat:Landroid/os/Message;
    :pswitch_5
    iget-object v3, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v3, v2}, Lcom/htc/android/htcime/ezsip/KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 353
    :pswitch_6
    iget-object v2, p0, Lcom/htc/android/htcime/ezsip/KeyboardView$1;->this$0:Lcom/htc/android/htcime/ezsip/KeyboardView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    or-int/2addr v3, v4

    invoke-virtual {v2, v3, v5, v5}, Lcom/htc/android/htcime/ezsip/KeyboardView;->sendKeyEvent(III)V

    goto/16 :goto_0

    .line 306
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
