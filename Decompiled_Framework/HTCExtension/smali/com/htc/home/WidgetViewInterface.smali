.class public interface abstract Lcom/htc/home/WidgetViewInterface;
.super Ljava/lang/Object;
.source "WidgetViewInterface.java"


# virtual methods
.method public abstract getLayoutResource()I
.end method

.method public abstract getSpanX()I
.end method

.method public abstract getSpanY()I
.end method

.method public abstract isHandleDirectionalKey()Z
.end method

.method public abstract onActivityDestroy()V
.end method

.method public abstract onActivityPause()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public abstract onActivityResume()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onActivityStop()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onLayoutInflated(Landroid/view/View;ILandroid/content/Intent;)V
.end method

.method public abstract onLayoutRemoved()V
.end method

.method public abstract setHost(Lcom/htc/home/HostInterface;)V
.end method

.method public abstract setHostActivity(Lcom/htc/home/HostActivity;)V
.end method
