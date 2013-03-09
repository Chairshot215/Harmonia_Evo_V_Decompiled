.class Lcom/google/android/talk/ChatView$12;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->endVideoOrVoiceChat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/ChatView;


# direct methods
.method constructor <init>(Lcom/google/android/talk/ChatView;)V
    .locals 0
    .parameter

    .prologue
    .line 3075
    iput-object p1, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 1
    .parameter "session"

    .prologue
    .line 3078
    iget-object v0, p0, Lcom/google/android/talk/ChatView$12;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->terminateCall(Ljava/lang/String;)Z

    .line 3079
    return-void
.end method
