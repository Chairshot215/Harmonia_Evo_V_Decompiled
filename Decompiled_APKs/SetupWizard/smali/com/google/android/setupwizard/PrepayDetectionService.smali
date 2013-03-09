.class public Lcom/google/android/setupwizard/PrepayDetectionService;
.super Landroid/app/Service;
.source "PrepayDetectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;
    }
.end annotation


# instance fields
.field private mDetectionThread:Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 70
    const-string v0, "SetupWizard"

    const-string v1, "PrepayDetectionService.onStartCommand()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;

    invoke-direct {v0, p0, p0}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;-><init>(Lcom/google/android/setupwizard/PrepayDetectionService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService;->mDetectionThread:Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;

    .line 72
    iget-object v0, p0, Lcom/google/android/setupwizard/PrepayDetectionService;->mDetectionThread:Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;

    invoke-virtual {v0}, Lcom/google/android/setupwizard/PrepayDetectionService$PrepayDetectionThread;->start()V

    .line 73
    const/4 v0, 0x2

    return v0
.end method
