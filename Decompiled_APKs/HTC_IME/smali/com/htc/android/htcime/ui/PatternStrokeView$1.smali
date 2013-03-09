.class Lcom/htc/android/htcime/ui/PatternStrokeView$1;
.super Landroid/os/Handler;
.source "PatternStrokeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/ui/PatternStrokeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ui/PatternStrokeView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ui/PatternStrokeView;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView$1;->this$0:Lcom/htc/android/htcime/ui/PatternStrokeView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/high16 v3, -0x4080

    .line 452
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 465
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 455
    :pswitch_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView$1;->this$0:Lcom/htc/android/htcime/ui/PatternStrokeView;

    #getter for: Lcom/htc/android/htcime/ui/PatternStrokeView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->access$000(Lcom/htc/android/htcime/ui/PatternStrokeView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 457
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView$1;->this$0:Lcom/htc/android/htcime/ui/PatternStrokeView;

    #getter for: Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->access$100(Lcom/htc/android/htcime/ui/PatternStrokeView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 458
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 459
    .local v0, ptAppend:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/android/htcime/ui/PatternStrokeView$1;->this$0:Lcom/htc/android/htcime/ui/PatternStrokeView;

    #getter for: Lcom/htc/android/htcime/ui/PatternStrokeView;->m_arrayStrokePoints:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/htcime/ui/PatternStrokeView;->access$100(Lcom/htc/android/htcime/ui/PatternStrokeView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
