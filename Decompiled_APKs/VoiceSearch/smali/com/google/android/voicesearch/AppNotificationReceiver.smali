.class public Lcom/google/android/voicesearch/AppNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    invoke-static {p1}, Lcom/google/android/voicesearch/actions/VoiceActionsFactory;->forceApplicationAvailabilityRefresh(Landroid/content/Context;)V

    .line 34
    return-void
.end method
