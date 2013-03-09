.class public interface abstract Lcom/android/settings/deviceinfo/MemoryMeasurement$MeasurementReceiver;
.super Ljava/lang/Object;
.source "MemoryMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MemoryMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MeasurementReceiver"
.end annotation


# virtual methods
.method public abstract updateApproximateExternal(Landroid/os/Bundle;)V
.end method

.method public abstract updateApproximateInternal(Landroid/os/Bundle;)V
.end method

.method public abstract updateExactInternal(Landroid/os/Bundle;)V
.end method
