.class public interface abstract Lcom/google/android/location/os/real/RealOs$LocationReceiver;
.super Ljava/lang/Object;
.source "RealOs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/real/RealOs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LocationReceiver"
.end annotation


# virtual methods
.method public abstract getLastKnownLocation()Lcom/google/android/location/os/LocationInterface;
.end method

.method public abstract locationReport(Lcom/google/android/location/data/NetworkLocation;)V
.end method
