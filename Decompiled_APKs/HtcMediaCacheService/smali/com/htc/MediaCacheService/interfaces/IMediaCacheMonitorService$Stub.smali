.class public abstract Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService$Stub;
.super Landroid/os/Binder;
.source "IMediaCacheMonitorService.java"

# interfaces
.implements Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.htc.MediaCacheService.interfaces.IMediaCacheMonitorService"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.htc.MediaCacheService.interfaces.IMediaCacheMonitorService"

    invoke-virtual {p0, p0, v0}, Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.htc.MediaCacheService.interfaces.IMediaCacheMonitorService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/htc/MediaCacheService/interfaces/IMediaCacheMonitorService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 46
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :pswitch_0
    const-string v0, "com.htc.MediaCacheService.interfaces.IMediaCacheMonitorService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch
.end method
