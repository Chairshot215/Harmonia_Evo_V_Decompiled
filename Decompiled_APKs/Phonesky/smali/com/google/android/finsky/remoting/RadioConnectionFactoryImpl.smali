.class public Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;
.super Ljava/lang/Object;
.source "RadioConnectionFactoryImpl.java"

# interfaces
.implements Lcom/google/android/finsky/remoting/RadioConnectionFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$2;,
        Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    }
.end annotation


# static fields
.field private static final NULL_RADIO_CONNECTION:Lcom/google/android/finsky/remoting/RadioConnection;

.field private static final USE_RADIO:Lcom/google/android/finsky/config/GservicesValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/GservicesValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$1;

    invoke-direct {v0}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$1;-><init>()V

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->NULL_RADIO_CONNECTION:Lcom/google/android/finsky/remoting/RadioConnection;

    .line 33
    const-string v0, "vending.use_radio"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/config/GservicesValue;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/GservicesValue;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->USE_RADIO:Lcom/google/android/finsky/config/GservicesValue;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .parameter "connMgr"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 54
    return-void
.end method

.method private createNewConnectionByType(Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;)Lcom/google/android/finsky/remoting/RadioConnection;
    .locals 6
    .parameter "connectionType"

    .prologue
    const/4 v5, 0x2

    .line 57
    sget-object v2, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$2;->$SwitchMap$com$google$android$finsky$remoting$RadioConnectionFactoryImpl$ConnectionType:[I

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 72
    new-instance v2, Lcom/google/android/finsky/remoting/RadioConnectionImpl;

    iget-object v3, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v4, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_MMS:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-direct {v2, v3, v5, v4}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;-><init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V

    :goto_0
    return-object v2

    .line 59
    :pswitch_0
    new-instance v0, Lcom/google/android/finsky/remoting/RadioConnectionImpl;

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x5

    sget-object v4, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_HIPRI:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;-><init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V

    .line 61
    .local v0, hiPriRadio:Lcom/google/android/finsky/remoting/RadioConnection;
    new-instance v1, Lcom/google/android/finsky/remoting/RadioConnectionImpl;

    iget-object v2, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_MMS:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-direct {v1, v2, v5, v3}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;-><init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V

    .line 63
    .local v1, mmsRadio:Lcom/google/android/finsky/remoting/RadioConnection;
    new-instance v2, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;

    invoke-direct {v2, v0, v1}, Lcom/google/android/finsky/remoting/RadioConnectionWithFallback;-><init>(Lcom/google/android/finsky/remoting/RadioConnection;Lcom/google/android/finsky/remoting/RadioConnection;)V

    goto :goto_0

    .line 65
    .end local v0           #hiPriRadio:Lcom/google/android/finsky/remoting/RadioConnection;
    .end local v1           #mmsRadio:Lcom/google/android/finsky/remoting/RadioConnection;
    :pswitch_1
    new-instance v2, Lcom/google/android/finsky/remoting/RadioConnectionImpl;

    iget-object v3, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x4

    sget-object v5, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_DUN:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;-><init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V

    goto :goto_0

    .line 68
    :pswitch_2
    new-instance v2, Lcom/google/android/finsky/remoting/RadioConnectionImpl;

    iget-object v3, p0, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v4, 0x3

    sget-object v5, Lcom/google/android/finsky/remoting/PhoneFeature;->ENABLE_SUPL:Lcom/google/android/finsky/remoting/PhoneFeature;

    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/finsky/remoting/RadioConnectionImpl;-><init>(Landroid/net/ConnectivityManager;ILcom/google/android/finsky/remoting/PhoneFeature;)V

    goto :goto_0

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public createNewConnection()Lcom/google/android/finsky/remoting/RadioConnection;
    .locals 4

    .prologue
    .line 79
    sget-object v2, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->USE_RADIO:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 80
    sget-object v2, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->NULL_RADIO_CONNECTION:Lcom/google/android/finsky/remoting/RadioConnection;

    .line 88
    :goto_0
    return-object v2

    .line 83
    :cond_0
    sget-object v2, Lcom/google/android/finsky/config/G;->vendingDcbConnectionType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->parse(Ljava/lang/String;)Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;

    move-result-object v1

    .line 84
    .local v1, connectionType:Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating new RadioConnection of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl;->createNewConnectionByType(Lcom/google/android/finsky/remoting/RadioConnectionFactoryImpl$ConnectionType;)Lcom/google/android/finsky/remoting/RadioConnection;

    move-result-object v0

    .line 88
    .local v0, conn:Lcom/google/android/finsky/remoting/RadioConnection;
    new-instance v2, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;

    invoke-direct {v2, v0}, Lcom/google/android/finsky/remoting/StateHandleRadioConnection;-><init>(Lcom/google/android/finsky/remoting/RadioConnection;)V

    goto :goto_0
.end method
