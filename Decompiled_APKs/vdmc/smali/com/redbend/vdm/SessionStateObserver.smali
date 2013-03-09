.class public interface abstract Lcom/redbend/vdm/SessionStateObserver;
.super Ljava/lang/Object;
.source "SessionStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdm/SessionStateObserver$SessionState;,
        Lcom/redbend/vdm/SessionStateObserver$SessionType;
    }
.end annotation


# virtual methods
.method public abstract notify(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;ILcom/redbend/vdm/SessionInitiator;)V
.end method
