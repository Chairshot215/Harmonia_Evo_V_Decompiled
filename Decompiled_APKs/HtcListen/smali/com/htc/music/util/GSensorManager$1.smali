.class Lcom/htc/music/util/GSensorManager$1;
.super Landroid/os/Handler;
.source "GSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/util/GSensorManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/util/GSensorManager;


# direct methods
.method constructor <init>(Lcom/htc/music/util/GSensorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/util/GSensorManager$1;->this$0:Lcom/htc/music/util/GSensorManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager$1;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v0}, Lcom/htc/music/util/GSensorManager;->access$000(Lcom/htc/music/util/GSensorManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/util/GSensorManager$1;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/music/util/GSensorManager$1;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mIsEnabled:Z
    invoke-static {v1}, Lcom/htc/music/util/GSensorManager;->access$100(Lcom/htc/music/util/GSensorManager;)Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/music/util/GSensorManager$1;->this$0:Lcom/htc/music/util/GSensorManager;

    #getter for: Lcom/htc/music/util/GSensorManager;->mOrientationListener:Lcom/htc/music/util/GSensorManager$OrientationListener;
    invoke-static {v0}, Lcom/htc/music/util/GSensorManager;->access$200(Lcom/htc/music/util/GSensorManager;)Lcom/htc/music/util/GSensorManager$OrientationListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/util/GSensorManager$OrientationListener;->enable()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/util/GSensorManager$1;->this$0:Lcom/htc/music/util/GSensorManager;

    #setter for: Lcom/htc/music/util/GSensorManager;->mWaitAnimationEnd:Z
    invoke-static {v0, v2}, Lcom/htc/music/util/GSensorManager;->access$002(Lcom/htc/music/util/GSensorManager;Z)Z

    const-string v0, "[GSensorManager]"

    const-string v1, "unexpected timeout exceed. onAnimationEnd not invoked correctly"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
