.class public interface abstract Lcom/htc/home/HostInterface;
.super Ljava/lang/Object;
.source "HostInterface.java"


# virtual methods
.method public abstract attach3DObject(Lcom/htc/gl/Instance;)V
.end method

.method public abstract detach3DObject(Lcom/htc/gl/Instance;)V
.end method

.method public abstract getCurrentScene()Lcom/htc/home/Scene;
.end method

.method public abstract load()Ljava/util/Properties;
.end method

.method public abstract requestPlayAnimation(Ljava/lang/String;I)V
.end method

.method public abstract requestRender()V
.end method

.method public abstract requestShowWeatherWallpaper(IIIII)Z
.end method

.method public abstract requestStopRender()V
.end method

.method public abstract store(Ljava/util/Properties;)Z
.end method
