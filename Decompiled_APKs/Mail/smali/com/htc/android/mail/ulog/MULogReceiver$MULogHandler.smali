.class Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;
.super Landroid/os/Handler;
.source "MULogReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ulog/MULogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MULogHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ulog/MULogReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ulog/MULogReceiver;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 67
    iput-object p1, p0, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;->this$0:Lcom/htc/android/mail/ulog/MULogReceiver;

    .line 68
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;->this$0:Lcom/htc/android/mail/ulog/MULogReceiver;

    #calls: Lcom/htc/android/mail/ulog/MULogReceiver;->manageMailCountULog()V
    invoke-static {v0}, Lcom/htc/android/mail/ulog/MULogReceiver;->access$000(Lcom/htc/android/mail/ulog/MULogReceiver;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lcom/htc/android/mail/ulog/MULogReceiver$MULogHandler;->this$0:Lcom/htc/android/mail/ulog/MULogReceiver;

    #calls: Lcom/htc/android/mail/ulog/MULogReceiver;->setAlarm()V
    invoke-static {v0}, Lcom/htc/android/mail/ulog/MULogReceiver;->access$100(Lcom/htc/android/mail/ulog/MULogReceiver;)V

    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
