.class public interface abstract Lcom/htc/Weather/WeatherModel$WeatherModelListener;
.super Ljava/lang/Object;
.source "WeatherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/Weather/WeatherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WeatherModelListener"
.end annotation


# virtual methods
.method public abstract onModelInitialized()V
.end method

.method public abstract onModelUpdated()V
.end method

.method public abstract onNetworkNonActive()V
.end method

.method public abstract onNetworkRoaming()V
.end method
