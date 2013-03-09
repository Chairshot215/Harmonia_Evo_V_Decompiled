.class Lcom/google/android/talk/ChatView$22;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->handleAudioChoice(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;

.field final synthetic val$audioDeviceFinal:Lcom/google/android/videochat/CallSession$AudioDevice;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;Lcom/google/android/videochat/CallSession$AudioDevice;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3890
    iput-object p1, p0, Lcom/google/android/talk/ChatView$22;->this$0:Lcom/google/android/talk/ChatView;

    iput-object p2, p0, Lcom/google/android/talk/ChatView$22;->val$audioDeviceFinal:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 3893
    iget-object v0, p0, Lcom/google/android/talk/ChatView$22;->val$audioDeviceFinal:Lcom/google/android/videochat/CallSession$AudioDevice;

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->setAudioDevice(Lcom/google/android/videochat/CallSession$AudioDevice;)V

    .line 3894
    return-void
.end method
