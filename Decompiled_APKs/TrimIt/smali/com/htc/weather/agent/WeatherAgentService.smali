.class public interface abstract Lcom/htc/weather/agent/WeatherAgentService;
.super Ljava/lang/Object;
.source "WeatherAgentService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/weather/agent/WeatherAgentService$Stub;
    }
.end annotation


# virtual methods
.method public abstract get(Ljava/lang/String;Z)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
