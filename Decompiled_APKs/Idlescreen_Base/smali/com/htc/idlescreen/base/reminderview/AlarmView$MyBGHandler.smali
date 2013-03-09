.class Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;
.super Landroid/os/Handler;
.source "AlarmView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/AlarmView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/AlarmView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 266
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 268
    :pswitch_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/AlarmView;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->access$000(Lcom/htc/idlescreen/base/reminderview/AlarmView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 269
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/AlarmView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/AlarmView;

    #calls: Lcom/htc/idlescreen/base/reminderview/AlarmView;->updateTime()V
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/AlarmView;->access$100(Lcom/htc/idlescreen/base/reminderview/AlarmView;)V

    goto :goto_0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
