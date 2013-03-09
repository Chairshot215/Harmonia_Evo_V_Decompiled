.class public Lcom/google/android/finsky/receivers/PackageMonitorReceiver$RegisteredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageMonitorReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/receivers/PackageMonitorReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegisteredReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getPackageMonitorReceiver()Lcom/google/android/finsky/receivers/PackageMonitorReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 93
    return-void
.end method
