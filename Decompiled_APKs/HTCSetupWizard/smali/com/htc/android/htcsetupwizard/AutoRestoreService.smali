.class public Lcom/htc/android/htcsetupwizard/AutoRestoreService;
.super Landroid/app/Service;
.source "AutoRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcsetupwizard/AutoRestoreService$1;,
        Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutoRestoreService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 21
    new-instance v0, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;-><init>(Lcom/htc/android/htcsetupwizard/AutoRestoreService;Lcom/htc/android/htcsetupwizard/AutoRestoreService$1;)V

    invoke-virtual {v0}, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;->start()V

    .line 22
    const/4 v0, 0x2

    return v0
.end method
