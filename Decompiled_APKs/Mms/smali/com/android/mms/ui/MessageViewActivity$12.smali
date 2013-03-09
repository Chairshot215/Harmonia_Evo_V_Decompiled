.class Lcom/android/mms/ui/MessageViewActivity$12;
.super Landroid/os/Handler;
.source "MessageViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageViewActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2433
    iput-object p1, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 2440
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2456
    :cond_0
    :goto_0
    return-void

    .line 2443
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    #calls: Lcom/android/mms/ui/MessageViewActivity;->showCommonInfo(Lcom/android/mms/msg/AbstractMessage;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1700(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V

    .line 2448
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {v0}, Lcom/android/mms/ui/MessageViewActivity;->access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2449
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    #calls: Lcom/android/mms/ui/MessageViewActivity;->showMms(Lcom/android/mms/msg/AbstractMessage;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1800(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0

    .line 2451
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageViewActivity$12;->this$0:Lcom/android/mms/ui/MessageViewActivity;

    #getter for: Lcom/android/mms/ui/MessageViewActivity;->mMsg:Lcom/android/mms/msg/AbstractMessage;
    invoke-static {v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1600(Lcom/android/mms/ui/MessageViewActivity;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v1

    #calls: Lcom/android/mms/ui/MessageViewActivity;->showSms(Lcom/android/mms/msg/AbstractMessage;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageViewActivity;->access$1900(Lcom/android/mms/ui/MessageViewActivity;Lcom/android/mms/msg/AbstractMessage;)V

    goto :goto_0

    .line 2440
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
