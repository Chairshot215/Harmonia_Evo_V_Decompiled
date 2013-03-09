.class public interface abstract Lcom/htc/lmw/InstalledAppsObserver$IAppsListener;
.super Ljava/lang/Object;
.source "InstalledAppsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lmw/InstalledAppsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAppsListener"
.end annotation


# virtual methods
.method public abstract onAppAdded(Lcom/htc/lmw/AppInfo;)V
.end method

.method public abstract onAppChanged(Lcom/htc/lmw/AppInfo;)V
.end method

.method public abstract onAppRemoved(Lcom/htc/lmw/AppInfo;)V
.end method
