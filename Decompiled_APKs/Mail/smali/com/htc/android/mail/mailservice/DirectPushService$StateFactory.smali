.class interface abstract Lcom/htc/android/mail/mailservice/DirectPushService$StateFactory;
.super Ljava/lang/Object;
.source "DirectPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StateFactory"
.end annotation


# virtual methods
.method public abstract getDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
.end method

.method public abstract getIdleState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
.end method

.method public abstract getPollState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
.end method

.method public abstract getShortDpState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
.end method

.method public abstract getStopState()Lcom/htc/android/mail/mailservice/DirectPushService$State;
.end method
