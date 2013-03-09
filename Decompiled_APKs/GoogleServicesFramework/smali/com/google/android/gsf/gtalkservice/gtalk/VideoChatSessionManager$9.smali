.class Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;
.super Ljava/lang/Object;
.source "VideoChatSessionManager.java"

# interfaces
.implements Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->processJingleInfoPacket(Lorg/jivesoftware/smack/packet/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gsf/gtalkservice/gtalk/RemoteListenerCallback$Callable",
        "<",
        "Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)V
    .locals 0
    .parameter

    .prologue
    .line 732
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;->this$0:Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;

    #getter for: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->mLastJingleInfoStanza:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$600(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->notifyEachJingleInfoListener(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z
    invoke-static {v0, p1, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;->access$700(Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager;Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 732
    check-cast p1, Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/VideoChatSessionManager$9;->call(Lcom/google/android/gtalkservice/IJingleInfoStanzaListener;)Z

    move-result v0

    return v0
.end method
