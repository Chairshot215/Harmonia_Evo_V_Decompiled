.class public final Lcom/android/settings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiStatusReceiver$1;,
        Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;
    }
.end annotation


# static fields
.field private static final MAGICSTR:Ljava/lang/String; = "google"

.field private static final TAG:Ljava/lang/String; = "WifiStatusReceiver"

.field private static final URL:Ljava/lang/String; = "http://www.google.com"

.field private static final USER_AGENT:Ljava/lang/String; = "Android-Wifi/0.1"

.field private static mAssociated:Z

.field private static mEapErrorUI:Z

.field private static mEnterSetting:Z

.field private static mUITriger:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Exit Wi-fi Setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    .line 99
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 100
    return-void
.end method

.method public static onResume()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Enter Wi-fi Setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    .line 94
    return-void
.end method

.method public static setUIflag(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 82
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Trigger UI flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sput-boolean p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 84
    return-void
.end method

.method public static showEapErrorUI(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 87
    const-string v0, "WifiStatusReceiver"

    const-string v1, "Trigger UI flag"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    sput-boolean p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    .line 89
    return-void
.end method


# virtual methods
.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .parameter "redirectTo"

    .prologue
    .line 199
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, isConnected:Z
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, action:Ljava/lang/String;
    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    if-eqz v7, :cond_3

    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 54
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    .line 55
    const-string v7, "networkInfo"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 57
    .local v2, netinfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    and-int/2addr v5, v7

    if-eqz v5, :cond_2

    .line 58
    const/4 v1, 0x1

    .line 59
    new-instance v5, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;

    invoke-direct {v5, p0, v8}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    new-array v7, v6, [Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    .line 78
    .end local v2           #netinfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return-void

    .restart local v2       #netinfo:Landroid/net/NetworkInfo;
    :cond_1
    move v5, v6

    .line 57
    goto :goto_0

    .line 62
    :cond_2
    iput-object v8, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    .line 63
    const/4 v1, 0x0

    goto :goto_1

    .line 65
    .end local v2           #netinfo:Landroid/net/NetworkInfo;
    :cond_3
    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnterSetting:Z

    if-eqz v7, :cond_4

    sget-boolean v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mUITriger:Z

    if-eqz v7, :cond_4

    const-string v7, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 66
    const-string v6, "newState"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    .line 67
    .local v4, state:Landroid/net/wifi/SupplicantState;
    sget-object v6, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v4, v6}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 68
    sput-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mAssociated:Z

    goto :goto_1

    .line 70
    .end local v4           #state:Landroid/net/wifi/SupplicantState;
    :cond_4
    const-string v5, "android.net.wifi.AKA_INVALID_SIM"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-boolean v5, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    if-eqz v5, :cond_0

    .line 71
    const-string v5, "WifiStatusReceiver"

    const-string v7, "received wifi aka sim error"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sput-boolean v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mEapErrorUI:Z

    .line 73
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 74
    .local v3, sIntent:Landroid/content/Intent;
    const-class v5, Lcom/android/settings/wifi/EapErrorDialog;

    invoke-virtual {v3, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 76
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
