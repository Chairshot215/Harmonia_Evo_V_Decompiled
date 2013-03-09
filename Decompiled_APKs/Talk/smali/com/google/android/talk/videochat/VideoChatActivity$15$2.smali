.class Lcom/google/android/talk/videochat/VideoChatActivity$15$2;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/VideoChatActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity$15;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2097
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2111
    :goto_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->resetButtonPanelFadeOutCountdown()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$3900(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 2112
    const/4 v0, 0x1

    return v0

    .line 2099
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 2102
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 2105
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 2108
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;->this$1:Lcom/google/android/talk/videochat/VideoChatActivity$15;

    iget-object v0, v0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mCallSession:Lcom/google/android/videochat/CallSession;
    invoke-static {v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$5800(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallSession;

    move-result-object v0

    sget-object v1, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    goto :goto_0

    .line 2097
    :pswitch_data_0
    .packed-switch 0x7f1000b6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
