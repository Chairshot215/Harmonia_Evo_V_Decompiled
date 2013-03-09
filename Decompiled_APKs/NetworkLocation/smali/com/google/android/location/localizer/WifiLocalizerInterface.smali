.class interface abstract Lcom/google/android/location/localizer/WifiLocalizerInterface;
.super Ljava/lang/Object;
.source "WifiLocalizerInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    }
.end annotation


# virtual methods
.method public abstract getEstimatedPosition(Ljava/util/Map;Ljava/util/Map;)Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/location/data/WifiApPosition;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/location/localizer/WifiLocalizerInterface$WifiLocationResult;"
        }
    .end annotation
.end method
