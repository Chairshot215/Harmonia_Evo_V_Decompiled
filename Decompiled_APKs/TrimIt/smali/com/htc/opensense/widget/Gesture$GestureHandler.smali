.class Lcom/htc/opensense/widget/Gesture$GestureHandler;
.super Landroid/os/Handler;
.source "Gesture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/Gesture;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    .line 82
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    return-void
.end method

.method constructor <init>(Lcom/htc/opensense/widget/Gesture;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 85
    iput-object p1, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    .line 86
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 87
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mDoubleTap:Z
    invoke-static {v0}, Lcom/htc/opensense/widget/Gesture;->access$000(Lcom/htc/opensense/widget/Gesture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-boolean v0, v0, Lcom/htc/opensense/widget/Gesture;->mClickTap:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    iget-object v0, v0, Lcom/htc/opensense/widget/Gesture;->mListener:Lcom/htc/opensense/widget/Gesture$GestureListener;

    iget-object v1, p0, Lcom/htc/opensense/widget/Gesture$GestureHandler;->this$0:Lcom/htc/opensense/widget/Gesture;

    #getter for: Lcom/htc/opensense/widget/Gesture;->mClickBehavior:Lcom/htc/opensense/widget/Gesture$ClickBehavior;
    invoke-static {v1}, Lcom/htc/opensense/widget/Gesture;->access$100(Lcom/htc/opensense/widget/Gesture;)Lcom/htc/opensense/widget/Gesture$ClickBehavior;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/opensense/widget/Gesture$GestureListener;->onClick(Lcom/htc/opensense/widget/Gesture$ClickBehavior;)Z

    .line 101
    :cond_0
    return-void

    .line 91
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
