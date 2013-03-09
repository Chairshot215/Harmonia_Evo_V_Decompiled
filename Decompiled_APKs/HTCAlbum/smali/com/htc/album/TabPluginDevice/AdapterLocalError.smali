.class public Lcom/htc/album/TabPluginDevice/AdapterLocalError;
.super Lcom/htc/album/TabPluginDevice/ObserverAdapter;
.source "AdapterLocalError.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AdapterLocalError"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 0
    .parameter "context"
    .parameter "handler"
    .parameter "mediaTypes"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/album/TabPluginDevice/ObserverAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "AdapterLocalError"

    return-object v0
.end method

.method public getItem(I)Lcom/htc/sunny2/IMediaData;
    .locals 1
    .parameter "itemIndex"

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public setIntermediateDataBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/16 v2, 0x138f

    .line 38
    invoke-virtual {p0, v2}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->onRemoveMessage(I)V

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalError;->onPostMessage(ILjava/lang/Object;I)V

    .line 40
    return-void
.end method
