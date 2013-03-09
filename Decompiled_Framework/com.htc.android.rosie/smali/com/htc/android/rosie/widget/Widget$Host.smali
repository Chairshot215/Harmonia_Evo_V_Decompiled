.class public interface abstract Lcom/htc/android/rosie/widget/Widget$Host;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/Widget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/rosie/widget/Widget$Host$AttachInfo;,
        Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    }
.end annotation


# virtual methods
.method public abstract createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
.end method

.method public abstract destroyScene(Lcom/htc/fusion/fx/FxScene;)V
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;
.end method

.method public abstract getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
.end method

.method public abstract registerSensorListener(Landroid/hardware/SensorEventListener;II)Landroid/hardware/Sensor;
.end method

.method public abstract startActivity(Landroid/content/Intent;)V
.end method

.method public abstract startActivityForResult(ILandroid/content/Intent;I)V
.end method

.method public abstract storeInstanceData(ILjava/util/Properties;)V
.end method

.method public abstract surpressLongClick(Z)V
.end method

.method public abstract surpressSlide(Z)V
.end method

.method public abstract unregisterSensorListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
