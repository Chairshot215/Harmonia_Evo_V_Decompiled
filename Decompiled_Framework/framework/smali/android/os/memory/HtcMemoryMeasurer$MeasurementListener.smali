.class public interface abstract Landroid/os/memory/HtcMemoryMeasurer$MeasurementListener;
.super Ljava/lang/Object;
.source "HtcMemoryMeasurer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/memory/HtcMemoryMeasurer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MeasurementListener"
.end annotation


# virtual methods
.method public abstract onApproximatelyMeasured(Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;)V
.end method

.method public abstract onExactlyMeasured(Landroid/os/memory/HtcMemoryMeasurer$MemoryInfo;)V
.end method
