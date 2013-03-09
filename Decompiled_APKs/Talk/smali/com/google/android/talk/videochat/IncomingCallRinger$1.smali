.class Lcom/google/android/talk/videochat/IncomingCallRinger$1;
.super Ljava/lang/Object;
.source "IncomingCallRinger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/IncomingCallRinger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/IncomingCallRinger;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/IncomingCallRinger;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/talk/videochat/IncomingCallRinger$1;->this$0:Lcom/google/android/talk/videochat/IncomingCallRinger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger$1;->this$0:Lcom/google/android/talk/videochat/IncomingCallRinger;

    const-string v1, "mRingDelayRunnable.run"

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/IncomingCallRinger;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/google/android/talk/videochat/IncomingCallRinger$1;->this$0:Lcom/google/android/talk/videochat/IncomingCallRinger;

    #calls: Lcom/google/android/talk/videochat/IncomingCallRinger;->ringAndRepeat()V
    invoke-static {v0}, Lcom/google/android/talk/videochat/IncomingCallRinger;->access$000(Lcom/google/android/talk/videochat/IncomingCallRinger;)V

    .line 106
    return-void
.end method
