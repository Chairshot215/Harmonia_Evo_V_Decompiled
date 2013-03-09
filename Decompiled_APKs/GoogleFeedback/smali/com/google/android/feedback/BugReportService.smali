.class public Lcom/google/android/feedback/BugReportService;
.super Landroid/app/Service;
.source "BugReportService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    new-instance v0, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;

    invoke-direct {v0, p0}, Lcom/google/android/feedback/BugReportService$BugReportServiceBinder;-><init>(Lcom/google/android/feedback/BugReportService;)V

    iput-object v0, p0, Lcom/google/android/feedback/BugReportService;->mBinder:Landroid/os/IBinder;

    .line 42
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/feedback/BugReportService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 93
    return-void
.end method
