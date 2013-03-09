.class Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;
.super Landroid/os/Handler;
.source "WifiOffloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiOffloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_WIFI_CONNECT_TIMEOUT:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiOffloadRequest$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiOffloadRequest$MyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 251
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 257
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 258
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 259
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 260
    invoke-static {}, Lcom/android/settings/wifi/WifiOffloadRequest;->setupTimer()V

    .line 261
    const-string v1, "WifiOffloadRequest"

    const-string v2, "disable wifi!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
