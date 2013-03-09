.class public Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper;
.super Ljava/lang/Object;
.source "DLNAServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;
    }
.end annotation


# static fields
.field public static final DLNA_CALLER_ALBUM_BROWSER:I = 0x0

.field public static final DLNA_CALLER_ALBUM_DMP:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "DLNAServiceHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method public static bindService(Landroid/content/Context;Landroid/os/Handler;)Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;
    .locals 4
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 24
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 35
    :cond_0
    :goto_0
    return-object v1

    .line 26
    :cond_1
    new-instance v1, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;

    invoke-direct {v1, p0, p1}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 28
    .local v1, connection:Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 29
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/htc/dlnainterface/IDLNAPluginService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 33
    .local v0, bret:Z
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unbindService(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)V
    .locals 4
    .parameter "connection"

    .prologue
    .line 41
    if-eqz p0, :cond_1

    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$000(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 43
    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$100(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$200(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 46
    :try_start_0
    const-string v1, "DLNAServiceHelper"

    const-string v2, "[HTCAlbum][DLNAServiceHelper][unbindService]: Unregister DLNA service callback."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mService:Lcom/htc/dlnainterface/IDLNAPluginService;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$200(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginService;

    move-result-object v1

    const/4 v2, 0x0

    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mCallback:Lcom/htc/dlnainterface/IDLNAPluginNotify;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$100(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Lcom/htc/dlnainterface/IDLNAPluginNotify;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/htc/dlnainterface/IDLNAPluginService;->unregisterCallback(ILcom/htc/dlnainterface/IDLNAPluginNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    #getter for: Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;->access$000(Lcom/htc/album/TabPluginDLNA/DLNAServiceHelper$DLNAServiceConnection;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 55
    :cond_1
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DLNAServiceHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][DLNAServiceHelper][unbindService]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
