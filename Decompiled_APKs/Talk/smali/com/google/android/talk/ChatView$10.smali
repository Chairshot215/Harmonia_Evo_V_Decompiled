.class Lcom/google/android/talk/ChatView$10;
.super Ljava/lang/Object;
.source "ChatView.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/ChatView;->startVoiceChat()V
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
    .line 3056
    iput-object p1, p0, Lcom/google/android/talk/ChatView$10;->this$0:Lcom/google/android/talk/ChatView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 3
    .parameter "session"

    .prologue
    .line 3059
    iget-object v0, p0, Lcom/google/android/talk/ChatView$10;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v0}, Lcom/google/android/talk/ChatView;->getBestAvailableJid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/ChatView$10;->this$0:Lcom/google/android/talk/ChatView;

    #getter for: Lcom/google/android/talk/ChatView;->mSelfUsername:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/talk/ChatView;->access$5700(Lcom/google/android/talk/ChatView;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/ChatView$10;->this$0:Lcom/google/android/talk/ChatView;

    invoke-virtual {v2}, Lcom/google/android/talk/ChatView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/videochat/TalkOngoingNotificationFactory;->getInstance(Landroid/content/Context;)Lcom/google/android/videochat/OngoingNotificationFactory;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/videochat/CallSession;->initiateVoiceCall(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/videochat/OngoingNotificationFactory;)Z

    .line 3062
    return-void
.end method
