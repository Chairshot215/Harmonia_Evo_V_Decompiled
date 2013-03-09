.class public Lcom/google/android/onetimeinitializer/OneTimeInitializerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OneTimeInitializerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 33
    const-string v0, "OneTimeInitializerReceiver"

    const-string v1, "OneTimeInitializerReceiver.onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/onetimeinitializer/OneTimeService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method
