.class public Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;
.super Ljava/lang/Object;
.source "LocationManagerWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/google/LocationManagerInterface$LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationProviderWrapper"
.end annotation


# instance fields
.field private final mWrapped:Landroid/location/LocationProvider;


# direct methods
.method public constructor <init>(Landroid/location/LocationProvider;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;->mWrapped:Landroid/location/LocationProvider;

    .line 68
    return-void
.end method


# virtual methods
.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/google/LocationManagerWrapper$LocationProviderWrapper;->mWrapped:Landroid/location/LocationProvider;

    invoke-virtual {v0}, Landroid/location/LocationProvider;->requiresSatellite()Z

    move-result v0

    return v0
.end method
