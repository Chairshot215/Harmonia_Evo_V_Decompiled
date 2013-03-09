.class Lcom/google/android/talk/ChatView$15$1;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/ChatView$15;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView$15;)V
    .locals 0
    .parameter

    .prologue
    .line 3136
    iput-object p1, p0, Lcom/google/android/talk/ChatView$15$1;->this$1:Lcom/google/android/talk/ChatView$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 3139
    sget-object v0, Lcom/google/android/talk/ChatView$23;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    iget-object v1, p0, Lcom/google/android/talk/ChatView$15$1;->this$1:Lcom/google/android/talk/ChatView$15;

    iget-object v1, v1, Lcom/google/android/talk/ChatView$15;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mMessageBar:Lcom/google/android/talk/ChatView$MessageBar;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$7200(Lcom/google/android/talk/ChatView;)Lcom/google/android/talk/ChatView$MessageBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/ChatView$MessageBar;->getAudioDeviceState()Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3149
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 3152
    :goto_0
    :pswitch_0
    return-void

    .line 3141
    :pswitch_1
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 3139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
