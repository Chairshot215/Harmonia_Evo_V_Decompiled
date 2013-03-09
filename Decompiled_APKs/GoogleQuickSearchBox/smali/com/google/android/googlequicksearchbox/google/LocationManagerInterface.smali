.class public interface abstract Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface;
.super Ljava/lang/Object;
.source "LocationManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;
    }
.end annotation


# virtual methods
.method public abstract getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
.end method

.method public abstract getProvider(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;
.end method

.method public abstract getProviders(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isProviderEnabled(Ljava/lang/String;)Z
.end method

.method public abstract removeUpdates(Landroid/location/LocationListener;)V
.end method

.method public abstract requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
.end method
