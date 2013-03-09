.class public interface abstract Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask$OnCompletionListener;
.super Ljava/lang/Object;
.source "MasfSenderAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/masf/MasfSenderAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompletionListener"
.end annotation


# virtual methods
.method public abstract onSendCompleted(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/voicesearch/masf/LiteRequest;",
            ">;)V"
        }
    .end annotation
.end method
