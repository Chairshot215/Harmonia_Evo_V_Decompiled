.class public interface abstract Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbacks;
.super Ljava/lang/Object;
.source "Rmq2Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MessageQueueCallbacks"
.end annotation


# virtual methods
.method public abstract onMessageSent(Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;)V
.end method

.method public abstract onMessagesSent(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gsf/gtalkservice/rmq/Rmq2Manager$MessageQueueCallbackEntry;",
            ">;)V"
        }
    .end annotation
.end method
