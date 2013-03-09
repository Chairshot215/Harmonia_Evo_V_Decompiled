.class public Lcom/google/android/partnersetup/AppHiderService;
.super Landroid/app/IntentService;
.source "AppHiderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/partnersetup/AppHiderService$MyBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "GooglePartnerSetup"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/google/android/partnersetup/AppHiderService$MyBinder;

    invoke-direct {v0, p0}, Lcom/google/android/partnersetup/AppHiderService$MyBinder;-><init>(Lcom/google/android/partnersetup/AppHiderService;)V

    iput-object v0, p0, Lcom/google/android/partnersetup/AppHiderService;->mBinder:Landroid/os/IBinder;

    .line 27
    return-void
.end method

.method public static startSetVisibilityService(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 33
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/partnersetup/AppHiderService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 35
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/android/partnersetup/AppHiderService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 44
    const-string v0, "GooglePartnerSetup"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string v0, "GooglePartnerSetup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/google/android/partnersetup/AppHider;->setAppVisibilities(Landroid/content/Context;)V

    .line 48
    return-void
.end method
