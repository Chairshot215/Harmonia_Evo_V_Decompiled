.class interface abstract Lcom/google/android/gm/ComposeActivity$SendOrSaveCallback;
.super Ljava/lang/Object;
.source "ComposeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SendOrSaveCallback"
.end annotation


# virtual methods
.method public abstract getMessageId()J
.end method

.method public abstract initializeSendOrSave(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;)V
.end method

.method public abstract notifyMessageIdAllocated(Lcom/google/android/gm/ComposeActivity$SendOrSaveMessage;J)V
.end method

.method public abstract sendOrSaveFinished(Lcom/google/android/gm/ComposeActivity$SendOrSaveTask;Z)V
.end method
