.class Lcom/google/android/talk/videochat/VideoChatActivity$15;
.super Ljava/lang/Object;
.source "VideoChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/VideoChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/VideoChatActivity;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/VideoChatActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 2050
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    invoke-direct {v2, v3, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2051
    .local v2, p:Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 2052
    .local v1, m:Landroid/view/Menu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f0f0001

    invoke-virtual {v3, v4, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2055
    sget-object v3, Lcom/google/android/talk/videochat/VideoChatActivity$16;->$SwitchMap$com$google$android$videochat$CallState$AudioDeviceState:[I

    iget-object v4, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #getter for: Lcom/google/android/talk/videochat/VideoChatActivity;->mAudioDeviceState:Lcom/google/android/videochat/CallState$AudioDeviceState;
    invoke-static {v4}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$1900(Lcom/google/android/talk/videochat/VideoChatActivity;)Lcom/google/android/videochat/CallState$AudioDeviceState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/videochat/CallState$AudioDeviceState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 2063
    :pswitch_0
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 2076
    .local v0, currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :goto_0
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v4, 0x7f1000b6

    sget-object v5, Lcom/google/android/videochat/CallSession$AudioDevice;->SPEAKERPHONE:Lcom/google/android/videochat/CallSession$AudioDevice;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    invoke-static {v3, v1, v4, v5, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6600(Lcom/google/android/talk/videochat/VideoChatActivity;Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2078
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v4, 0x7f1000b7

    sget-object v5, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    invoke-static {v3, v1, v4, v5, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6600(Lcom/google/android/talk/videochat/VideoChatActivity;Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2080
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v4, 0x7f1000b8

    sget-object v5, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    invoke-static {v3, v1, v4, v5, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6600(Lcom/google/android/talk/videochat/VideoChatActivity;Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2082
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    const v4, 0x7f1000b9

    sget-object v5, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->setupMenuItem(Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    invoke-static {v3, v1, v4, v5, v0}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6600(Lcom/google/android/talk/videochat/VideoChatActivity;Landroid/view/Menu;ILcom/google/android/videochat/CallSession$AudioDevice;Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 2087
    new-instance v3, Lcom/google/android/talk/videochat/VideoChatActivity$15$1;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$15$1;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$15;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2094
    new-instance v3, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;

    invoke-direct {v3, p0}, Lcom/google/android/talk/videochat/VideoChatActivity$15$2;-><init>(Lcom/google/android/talk/videochat/VideoChatActivity$15;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2115
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 2117
    iget-object v3, p0, Lcom/google/android/talk/videochat/VideoChatActivity$15;->this$0:Lcom/google/android/talk/videochat/VideoChatActivity;

    #calls: Lcom/google/android/talk/videochat/VideoChatActivity;->removePendingDismissButtonPanelRunnable()V
    invoke-static {v3}, Lcom/google/android/talk/videochat/VideoChatActivity;->access$6700(Lcom/google/android/talk/videochat/VideoChatActivity;)V

    .line 2118
    return-void

    .line 2059
    .end local v0           #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_1
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->BLUETOOTH_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 2060
    .restart local v0       #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_0

    .line 2066
    .end local v0           #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_2
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->EARPIECE:Lcom/google/android/videochat/CallSession$AudioDevice;

    .line 2067
    .restart local v0       #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_0

    .line 2069
    .end local v0           #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    :pswitch_3
    sget-object v0, Lcom/google/android/videochat/CallSession$AudioDevice;->WIRED_HEADSET:Lcom/google/android/videochat/CallSession$AudioDevice;

    .restart local v0       #currentDevice:Lcom/google/android/videochat/CallSession$AudioDevice;
    goto :goto_0

    .line 2055
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
