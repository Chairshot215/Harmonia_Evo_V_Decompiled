.class Lcom/htc/fusion/fx/controls/TextInputWorker$6;
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
        "Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;


# direct methods
.method constructor <init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-direct {p0, p1, p2}, Lcom/htc/fusion/fx/controls/TextInputWorker$MessageHandlerListener;-><init>(Lcom/htc/fusion/fx/controls/TextInputWorker;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    .locals 12

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->isTextEditEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mTempTouchEventHandling:Z
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$900(Lcom/htc/fusion/fx/controls/TextInputWorker;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v11, p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v0, v11, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, v11, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float v9, v0, v1

    iget-object v0, v11, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, v11, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v10, v0, v1

    const-wide/16 v0, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v6}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;->hitbox_position:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v7}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v10

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    iget-object v0, p0, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->this$0:Lcom/htc/fusion/fx/controls/TextInputWorker;

    #getter for: Lcom/htc/fusion/fx/controls/TextInputWorker;->mEditText:Lcom/htc/fusion/fx/controls/TextInputStreaming;
    invoke-static {v0}, Lcom/htc/fusion/fx/controls/TextInputWorker;->access$100(Lcom/htc/fusion/fx/controls/TextInputWorker;)Lcom/htc/fusion/fx/controls/TextInputStreaming;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/htc/fusion/fx/controls/TextInputStreaming;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;

    invoke-virtual {p0, p1}, Lcom/htc/fusion/fx/controls/TextInputWorker$6;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V

    return-void
.end method
