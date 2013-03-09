.class public interface abstract Lcom/htc/android/rosie/home/HostWidgetManager$Owner;
.super Ljava/lang/Object;
.source "HostWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/HostWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Owner"
.end annotation


# virtual methods
.method public abstract addResourcePath(Ljava/lang/String;)V
.end method

.method public abstract createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
.end method

.method public abstract deleteWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
.end method

.method public abstract destroyScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getInvalidId()J
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract storeWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
.end method

.method public abstract surpressLongClick(Z)V
.end method

.method public abstract surpressSlide(Z)V
.end method

.method public abstract updateWidgetInfo(Lcom/htc/android/rosie/home/HostWidgetManager$WidgetInfo;)Z
.end method
