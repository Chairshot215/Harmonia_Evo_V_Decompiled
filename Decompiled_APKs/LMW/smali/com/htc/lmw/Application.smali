.class public Lcom/htc/lmw/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "LMW/Application"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 16
    invoke-virtual {p0}, Lcom/htc/lmw/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/lmw/AppManager;->init(Landroid/content/Context;)V

    .line 19
    invoke-static {v0}, Lcom/htc/lmw/Wizard;->init(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 25
    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    .line 26
    return-void
.end method

.method protected setupQuietUncaughtExceptionHandler()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/htc/lmw/Application$1;

    invoke-direct {v0, p0}, Lcom/htc/lmw/Application$1;-><init>(Lcom/htc/lmw/Application;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 44
    return-void
.end method
