.class public interface abstract Ltwitter4j/Place;
.super Ljava/lang/Object;
.source "Place.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Ltwitter4j/Place;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getBoundingBoxCoordinates()[[Ltwitter4j/GeoLocation;
.end method

.method public abstract getBoundingBoxType()Ljava/lang/String;
.end method

.method public abstract getContainedWithIn()[Ltwitter4j/Place;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getGeometryCoordinates()[[Ltwitter4j/GeoLocation;
.end method

.method public abstract getGeometryType()Ljava/lang/String;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPlaceType()Ljava/lang/String;
.end method

.method public abstract getStreetAddress()Ljava/lang/String;
.end method

.method public abstract getURL()Ljava/lang/String;
.end method
