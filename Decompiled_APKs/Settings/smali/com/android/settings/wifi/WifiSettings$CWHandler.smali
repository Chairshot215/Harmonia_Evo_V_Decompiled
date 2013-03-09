.class Lcom/android/settings/wifi/WifiSettings$CWHandler;
.super Landroid/os/Handler;
.source "WifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CWHandler"
.end annotation


# static fields
.field private static final MSG_REGISTER:I = 0x1

.field private static final MSG_UNREGISTER:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$CWHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    .line 1037
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1038
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$CWHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1076
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$CWHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/cw/ICWService;->register()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiSettings"

    const-string v2, "[C+W] register is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1069
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings$CWHandler;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mCWService:Lcom/htc/cw/ICWService;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)Lcom/htc/cw/ICWService;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/cw/ICWService;->unRegister()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1070
    :catch_1
    move-exception v0

    .line 1071
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v1, "WifiSettings"

    const-string v2, "[C+W] unRegister is failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 1056
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method register()V
    .locals 1

    .prologue
    .line 1041
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1042
    return-void
.end method

.method unRegister()V
    .locals 1

    .prologue
    .line 1045
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings$CWHandler;->sendEmptyMessage(I)Z

    .line 1046
    return-void
.end method
