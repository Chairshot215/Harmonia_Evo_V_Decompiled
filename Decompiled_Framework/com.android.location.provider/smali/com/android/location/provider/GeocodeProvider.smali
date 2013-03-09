.class public abstract Lcom/android/location/provider/GeocodeProvider;
.super Ljava/lang/Object;
.source "GeocodeProvider.java"


# instance fields
.field private mProvider:Landroid/location/IGeocodeProvider$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/location/provider/GeocodeProvider$1;

    invoke-direct {v0, p0}, Lcom/android/location/provider/GeocodeProvider$1;-><init>(Lcom/android/location/provider/GeocodeProvider;)V

    iput-object v0, p0, Lcom/android/location/provider/GeocodeProvider;->mProvider:Landroid/location/IGeocodeProvider$Stub;

    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/location/provider/GeocodeProvider;->mProvider:Landroid/location/IGeocodeProvider$Stub;

    return-object v0
.end method

.method public abstract onGetFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract onGetFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method
