.class Lcom/htc/android/worldclock/AlarmAlert$2;
.super Landroid/os/Handler;
.source "AlarmAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/worldclock/AlarmAlert;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/worldclock/AlarmAlert;


# direct methods
.method constructor <init>(Lcom/htc/android/worldclock/AlarmAlert;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/android/worldclock/AlarmAlert$2;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 195
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 209
    :goto_0
    :pswitch_0
    return-void

    .line 197
    :pswitch_1
    const-string v0, "WHAT_ON_INIT"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$2;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->onInitParent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$100(Lcom/htc/android/worldclock/AlarmAlert;)V

    goto :goto_0

    .line 201
    :pswitch_2
    const-string v0, "WHAT_ON_ALARM_INTENT"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$2;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->onAlarmIntent()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$200(Lcom/htc/android/worldclock/AlarmAlert;)V

    goto :goto_0

    .line 205
    :pswitch_3
    const-string v0, "WHAT_ON_ALARM_NEXT"

    invoke-static {v0}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmAlert$2;->this$0:Lcom/htc/android/worldclock/AlarmAlert;

    #calls: Lcom/htc/android/worldclock/AlarmAlert;->AlarmNext()V
    invoke-static {v0}, Lcom/htc/android/worldclock/AlarmAlert;->access$300(Lcom/htc/android/worldclock/AlarmAlert;)V

    goto :goto_0

    .line 195
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
