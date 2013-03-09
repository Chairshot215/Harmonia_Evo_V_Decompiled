.class Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;
.super Ljava/lang/Object;
.source "SSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaFedeOutRunnable"
.end annotation


# instance fields
.field mSprite:Lcom/htc/sunny2/Sprite;

.field mStartTime:J

.field mStop:Z

.field final synthetic this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;


# direct methods
.method private constructor <init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/high16 v5, 0x3f80

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStop:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStartTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const/high16 v4, 0x442f

    div-float v0, v3, v4

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mSprite:Lcom/htc/sunny2/Sprite;

    sub-float v4, v5, v0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setAlpha(F)V

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$1200(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->post(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mSprite:Lcom/htc/sunny2/Sprite;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_0
.end method

.method start(JLcom/htc/sunny2/Sprite;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStop:Z

    iput-wide p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStartTime:J

    iput-object p3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mSprite:Lcom/htc/sunny2/Sprite;

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$1200(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method stop()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStartTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->mStop:Z

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->this$1:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mEventDispatcher:Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$1200(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/view/SSurfaceView$EventDispatcher;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
