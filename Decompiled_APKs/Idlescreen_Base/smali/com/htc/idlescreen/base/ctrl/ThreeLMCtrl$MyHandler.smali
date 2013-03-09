.class Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;
.super Landroid/os/Handler;
.source "ThreeLMCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    .line 85
    .local v0, what:I
    packed-switch v0, :pswitch_data_0

    .line 91
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    #calls: Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->querySetting()V
    invoke-static {v1}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->access$100(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)V

    .line 88
    const-string v1, "ThreeLMCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WHAT_ON_QUERY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl$MyHandler;->this$0:Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;

    #getter for: Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->mMessage:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;->access$200(Lcom/htc/idlescreen/base/ctrl/ThreeLMCtrl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method
