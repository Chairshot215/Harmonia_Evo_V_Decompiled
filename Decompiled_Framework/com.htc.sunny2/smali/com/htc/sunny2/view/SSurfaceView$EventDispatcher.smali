.class Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
.super Lcom/htc/sunny2/RenderThreadHandler;
.source "SSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventDispatcher"
.end annotation


# static fields
.field static final EVENT_ADD_VIEW:I = 0x2

.field static final EVENT_REFRESH_RENDER_ORDER:I = 0x4

.field static final EVENT_REMOVE_VIEW:I = 0x3

.field static final EVENT_SET_GLOBAL_BKG:I = 0x5

.field static final EVENT_TOUCH_EVENT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;Ljava/lang/Object;Lcom/htc/sunny2/RenderThread;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    const-string v0, "EventDispatcher"

    invoke-direct {p0, p2, v0, p3}, Lcom/htc/sunny2/RenderThreadHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;Lcom/htc/sunny2/RenderThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;)V
    .locals 3

    iget v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-virtual {v1, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeView(Lcom/htc/sunny2/view/SView;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v1, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v2, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->refreshRenderOrder(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v2, v1, Lcom/htc/sunny2/view/SSurfaceView;->mSViewRoot:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v1, p1, Lcom/htc/sunny2/RenderThreadHandler$RenderThreadMessage;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setGlobalBackgroundResource(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
