.class public interface abstract Lcom/google/android/setupwizard/NetworkMonitor$Callback;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupwizard/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onGlsConnected(Lcom/google/android/gsf/IGoogleLoginService;)V
.end method

.method public abstract onNetworkConnected()V
.end method

.method public abstract onNetworkDisconnected()V
.end method
