.class Lcom/htc/dockmode/saver/SaverControl$2;
.super Ljava/lang/Object;
.source "SaverControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/saver/SaverControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/saver/SaverControl;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/saver/SaverControl;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mStopped:Z
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$000(Lcom/htc/dockmode/saver/SaverControl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/dockmode/saver/SaverControl;->access$300(Lcom/htc/dockmode/saver/SaverControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "deskdock_dim_screen"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I
    invoke-static {v0, v1}, Lcom/htc/dockmode/saver/SaverControl;->access$202(Lcom/htc/dockmode/saver/SaverControl;I)I

    .line 216
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$200(Lcom/htc/dockmode/saver/SaverControl;)I

    move-result v0

    if-lez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$500(Lcom/htc/dockmode/saver/SaverControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mDimTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/saver/SaverControl;->access$400(Lcom/htc/dockmode/saver/SaverControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 218
    iget-object v0, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/dockmode/saver/SaverControl;->access$500(Lcom/htc/dockmode/saver/SaverControl;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mDimTimeOut:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/htc/dockmode/saver/SaverControl;->access$400(Lcom/htc/dockmode/saver/SaverControl;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/dockmode/saver/SaverControl$2;->this$0:Lcom/htc/dockmode/saver/SaverControl;

    #getter for: Lcom/htc/dockmode/saver/SaverControl;->mDimScreen:I
    invoke-static {v2}, Lcom/htc/dockmode/saver/SaverControl;->access$200(Lcom/htc/dockmode/saver/SaverControl;)I

    move-result v2

    const v3, 0xea60

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
