.class Lcom/google/android/videochat/CallStateClient$1;
.super Ljava/lang/Object;
.source "CallStateClient.java"

# interfaces
.implements Lcom/google/android/videochat/CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/videochat/CallStateClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/videochat/CallStateClient;


# direct methods
.method constructor <init>(Lcom/google/android/videochat/CallStateClient;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
    .locals 1
    .parameter "remoteBareJid"
    .parameter "callState"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/videochat/CallStateClient;->onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V

    .line 31
    return-void
.end method

.method public onChatRoomStateUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter "isRequestReply"
    .parameter "callbackParam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/videochat/NamedSource;",
            ">;Z",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, allAudioSources:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    .local p2, allVideoSources:Ljava/util/Set;,"Ljava/util/Set<Lcom/google/android/videochat/NamedSource;>;"
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/videochat/CallStateClient;->onChatRoomUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V

    .line 40
    return-void
.end method

.method public onLoudestSpeakerUpdate(IZLjava/lang/Object;)V
    .locals 1
    .parameter "loudestAudioSsrc"
    .parameter "isRequestReply"
    .parameter "callbackParam"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/videochat/CallStateClient$1;->this$0:Lcom/google/android/videochat/CallStateClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/videochat/CallStateClient;->onLoudestSpeakerUpdate(IZLjava/lang/Object;)V

    .line 47
    return-void
.end method
