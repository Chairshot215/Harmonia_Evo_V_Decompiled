.class public Lcom/android/htccontacts/util/EmptyService;
.super Landroid/app/Service;
.source "EmptyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 37
    const/4 v0, 0x2

    return v0
.end method
