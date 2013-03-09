.class public Lcom/htc/taskmanager/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "TaskManager_Application"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 21
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 22
    return-void
.end method

.method protected setupQuietUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/htc/taskmanager/Application$1;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/Application$1;-><init>(Lcom/htc/taskmanager/Application;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 33
    return-void
.end method
