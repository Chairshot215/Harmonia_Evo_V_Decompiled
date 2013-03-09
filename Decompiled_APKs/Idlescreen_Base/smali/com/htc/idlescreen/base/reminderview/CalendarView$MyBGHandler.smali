.class Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;
.super Landroid/os/Handler;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyBGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;


# direct methods
.method public constructor <init>(Lcom/htc/idlescreen/base/reminderview/CalendarView;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 189
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/CalendarView;->mBgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->access$000(Lcom/htc/idlescreen/base/reminderview/CalendarView;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x44d

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 195
    iget-object v0, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;

    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/CalendarView;->mStartTime:J
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->access$100(Lcom/htc/idlescreen/base/reminderview/CalendarView;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/CalendarView$MyBGHandler;->this$0:Lcom/htc/idlescreen/base/reminderview/CalendarView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/CalendarView;->mEndTime:J
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->access$200(Lcom/htc/idlescreen/base/reminderview/CalendarView;)J

    move-result-wide v3

    #calls: Lcom/htc/idlescreen/base/reminderview/CalendarView;->updateTime(JJ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/CalendarView;->access$300(Lcom/htc/idlescreen/base/reminderview/CalendarView;JJ)V

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x44d
        :pswitch_0
    .end packed-switch
.end method
