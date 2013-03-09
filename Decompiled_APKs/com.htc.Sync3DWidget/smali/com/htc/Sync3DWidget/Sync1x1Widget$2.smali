.class Lcom/htc/Sync3DWidget/Sync1x1Widget$2;
.super Ljava/lang/Object;
.source "Sync1x1Widget.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Sync3DWidget/Sync1x1Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;


# direct methods
.method constructor <init>(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 145
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 165
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 147
    :pswitch_0
    invoke-static {}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WHAT_ON_DELAYED_RESUME"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #setter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z
    invoke-static {v2, v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$402(Lcom/htc/Sync3DWidget/Sync1x1Widget;Z)Z

    .line 149
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->determineUpdateStatus()V
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-static {}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WHAT_ON_CONFIG_CHANGE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->releaseData()V
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$500(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    .line 155
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #getter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mWidgetContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$600(Lcom/htc/Sync3DWidget/Sync1x1Widget;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->orientation:I

    .line 156
    .local v0, orien:I
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    iget-object v3, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->setupUIVars(I)Z
    invoke-static {v3, v0}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$800(Lcom/htc/Sync3DWidget/Sync1x1Widget;I)Z

    move-result v3

    #setter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mLoadView:Z
    invoke-static {v2, v3}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$702(Lcom/htc/Sync3DWidget/Sync1x1Widget;Z)Z

    .line 158
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #setter for: Lcom/htc/Sync3DWidget/Sync1x1Widget;->mActive:Z
    invoke-static {v2, v1}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$402(Lcom/htc/Sync3DWidget/Sync1x1Widget;Z)Z

    .line 159
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->determineUpdateStatus()V
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$100(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    goto :goto_0

    .line 162
    .end local v0           #orien:I
    :pswitch_2
    iget-object v2, p0, Lcom/htc/Sync3DWidget/Sync1x1Widget$2;->this$0:Lcom/htc/Sync3DWidget/Sync1x1Widget;

    #calls: Lcom/htc/Sync3DWidget/Sync1x1Widget;->updateTurningAccordingToUpdateStatus()V
    invoke-static {v2}, Lcom/htc/Sync3DWidget/Sync1x1Widget;->access$900(Lcom/htc/Sync3DWidget/Sync1x1Widget;)V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x2134
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
