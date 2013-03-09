.class public interface abstract Lcom/htc/weatheridlescreen/data/WeatherDataLoader$DataUpdateCallback;
.super Ljava/lang/Object;
.source "WeatherDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/weatheridlescreen/data/WeatherDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataUpdateCallback"
.end annotation


# virtual methods
.method public abstract onDataUpdate(ZLcom/htc/weatheridlescreen/data/WeatherData;)V
.end method

.method public abstract onNoData()V
.end method
