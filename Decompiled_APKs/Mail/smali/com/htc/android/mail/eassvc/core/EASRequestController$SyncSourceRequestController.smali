.class interface abstract Lcom/htc/android/mail/eassvc/core/EASRequestController$SyncSourceRequestController;
.super Ljava/lang/Object;
.source "EASRequestController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/EASRequestController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "SyncSourceRequestController"
.end annotation


# virtual methods
.method public abstract addRequest(Lcom/htc/android/mail/eassvc/core/EASRequest;)V
.end method

.method public abstract isBusy(J)Z
.end method

.method public abstract isOnlyRequest(I)Z
.end method

.method public abstract isRequestEmpty()Z
.end method

.method public abstract isRequestEmpty(J)Z
.end method

.method public abstract removeAllRequest()V
.end method

.method public abstract removeRequestByAccountId(J)V
.end method

.method public abstract setListener(Lcom/htc/android/mail/eassvc/core/EASRequestController$RequestListener;)V
.end method

.method public abstract stopRunning()V
.end method
