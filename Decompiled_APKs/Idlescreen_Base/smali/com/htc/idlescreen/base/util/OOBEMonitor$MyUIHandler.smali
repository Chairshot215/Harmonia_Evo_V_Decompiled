.class Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;
.super Landroid/os/Handler;
.source "OOBEMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/util/OOBEMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/util/OOBEMonitor;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    .line 141
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/util/OOBEMonitor$MyUIHandler;->this$0:Lcom/htc/idlescreen/base/util/OOBEMonitor;

    #calls: Lcom/htc/idlescreen/base/util/OOBEMonitor;->notifyListener()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/util/OOBEMonitor;->access$300(Lcom/htc/idlescreen/base/util/OOBEMonitor;)V

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_0
    .end packed-switch
.end method
