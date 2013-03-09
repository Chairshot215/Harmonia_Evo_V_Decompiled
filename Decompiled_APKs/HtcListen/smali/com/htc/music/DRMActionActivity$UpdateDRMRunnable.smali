.class Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;
.super Ljava/lang/Object;
.source "DRMActionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DRMActionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateDRMRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DRMActionActivity;


# direct methods
.method private constructor <init>(Lcom/htc/music/DRMActionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/music/DRMActionActivity;Lcom/htc/music/DRMActionActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;-><init>(Lcom/htc/music/DRMActionActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mLooper:Landroid/os/Looper;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$000(Lcom/htc/music/DRMActionActivity;)Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updated Thread IN."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    invoke-virtual {v1}, Lcom/htc/music/DRMActionActivity;->init()I

    move-result v0

    invoke-static {}, Lcom/htc/music/DRMActionActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Updated Thread Finish."

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    iget-object v1, v1, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    iget-object v2, v2, Lcom/htc/music/DRMActionActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/htc/music/DRMActionActivity$UpdateDRMRunnable;->this$0:Lcom/htc/music/DRMActionActivity;

    #getter for: Lcom/htc/music/DRMActionActivity;->mLooper:Landroid/os/Looper;
    invoke-static {v1}, Lcom/htc/music/DRMActionActivity;->access$000(Lcom/htc/music/DRMActionActivity;)Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
