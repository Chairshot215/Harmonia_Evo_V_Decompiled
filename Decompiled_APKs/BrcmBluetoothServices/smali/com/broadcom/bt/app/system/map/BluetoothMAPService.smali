.class public Lcom/broadcom/bt/app/system/map/BluetoothMAPService;
.super Landroid/app/Service;
.source "BluetoothMAPService.java"


# static fields
.field private static final ACTION_REGISTER_MAP:Ljava/lang/String; = "com.htc.bluetooth.map.email.REGISTER_PROVIDER"

.field private static final TAG:Ljava/lang/String; = "BluetoothMAPService"

.field private static mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

.field private static mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    .line 60
    sput-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    return-void
.end method

.method private initEmailProvider()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "BluetoothMAPService"

    const-string v1, "Email provider is null. Creating new one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-direct {v0}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    .line 172
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-virtual {v0, p0, v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->init(Landroid/content/Context;Z)V

    .line 180
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "BluetoothMAPService"

    const-string v1, "Email provider is there. Only init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapMailProvider:Lcom/htc/bluetooth/map/email/MAPEmailProvider;

    invoke-virtual {v0, p0, v2}, Lcom/htc/bluetooth/map/email/MAPEmailProvider;->init(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private initSMSProvider()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 150
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "BluetoothMAPService"

    const-string v1, "Sms provider is null. Creating new one"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;-><init>()V

    sput-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    .line 155
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v0, p0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->init(Landroid/content/Context;Z)V

    .line 163
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "BluetoothMAPService"

    const-string v1, "Sms provider is there. Only init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    sget-object v0, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->mMapSmsProvider:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;

    invoke-virtual {v0, p0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->init(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static registerMAPProvider(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "providerId"

    .prologue
    .line 76
    const-string v1, "BluetoothMAPService"

    const-string v2, "MAP Service registerMAPProvider"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, i:Landroid/content/Intent;
    const-class v1, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const-string v1, "com.htc.bluetooth.map.email.REGISTER_PROVIDER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "ds_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 137
    const-string v0, "BluetoothMAPService"

    const-string v1, "MAP Service onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 69
    const-string v0, "BluetoothMAPService"

    const-string v1, "MAP Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "BluetoothMAPService"

    const-string v1, "MAP Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 133
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 87
    const-string v2, "BluetoothMAPService"

    const-string v3, "MAP Service onStartCommand"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 89
    if-nez p1, :cond_0

    .line 90
    const-string v2, "BluetoothMAPService"

    const-string v3, "onStartCommand: Intent is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, action:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 94
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_1
    if-nez v0, :cond_2

    .line 97
    const-string v2, "BluetoothMAPService"

    const-string v3, "onStartCommand: action is null - service is being restarted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    const-string v2, "ds_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, providerId:Ljava/lang/String;
    const-string v2, "ALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 104
    const-string v2, "BluetoothMAPService"

    const-string v3, "Enable ALL providers"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->initSMSProvider()V

    .line 107
    invoke-direct {p0}, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->initEmailProvider()V

    .line 126
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 110
    :cond_3
    const-string v2, "SMS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 112
    const-string v2, "BluetoothMAPService"

    const-string v3, "Enable SMS provider"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->initSMSProvider()V

    goto :goto_0

    .line 115
    :cond_4
    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 117
    const-string v2, "BluetoothMAPService"

    const-string v3, "Enable Email provider"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/broadcom/bt/app/system/map/BluetoothMAPService;->initEmailProvider()V

    goto :goto_0

    .line 122
    :cond_5
    const-string v2, "BluetoothMAPService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown provider = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUnBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 142
    const-string v0, "BluetoothMAPService"

    const-string v1, "MAP Service onUnbind\t//-------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method
