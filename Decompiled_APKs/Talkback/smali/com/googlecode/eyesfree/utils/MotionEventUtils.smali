.class public Lcom/googlecode/eyesfree/utils/MotionEventUtils;
.super Ljava/lang/Object;
.source "MotionEventUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertHoverToTouch(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 2
    .parameter "hoverEvent"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 41
    .local v0, touchEvent:Landroid/view/MotionEvent;
    const/16 v1, 0x1002

    invoke-static {p0, v1}, Lcom/googlecode/eyesfree/compat/view/MotionEventCompatUtils;->setSource(Landroid/view/MotionEvent;I)V

    .line 43
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    return-object v0

    .line 45
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 48
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 51
    :pswitch_3
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
