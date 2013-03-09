.class public interface abstract Lcom/google/android/videochat/CallStateListener;
.super Ljava/lang/Object;
.source "CallStateListener.java"


# virtual methods
.method public abstract onCallStateUpdate(Ljava/lang/String;Lcom/google/android/videochat/CallState;ZLjava/lang/Object;)V
.end method

.method public abstract onChatRoomStateUpdate(Ljava/util/Set;Ljava/util/Set;ZLjava/lang/Object;)V
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
.end method

.method public abstract onLoudestSpeakerUpdate(IZLjava/lang/Object;)V
.end method
