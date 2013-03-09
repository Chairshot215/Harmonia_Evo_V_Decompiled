.class public interface abstract Lcom/google/android/partnersetup/RlzPingService$RlzPingSchedulerInterface;
.super Ljava/lang/Object;
.source "RlzPingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/RlzPingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RlzPingSchedulerInterface"
.end annotation


# virtual methods
.method public abstract reschedulePing()V
.end method

.method public abstract scheduleEventPing()V
.end method

.method public abstract schedulePeriodicPing()V
.end method

.method public abstract scheduleRetryPing()V
.end method
