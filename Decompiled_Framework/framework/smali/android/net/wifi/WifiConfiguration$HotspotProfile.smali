.class public Landroid/net/wifi/WifiConfiguration$HotspotProfile;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HotspotProfile"
.end annotation


# static fields
.field public static final DEFAULT_DHCP_MAX_AP_CONNECTION:I = 0x4

.field public static final DEFAULT_MAX_AP_CONNECTION:I = 0x4

.field public static final DHCP_MAX_AP_CONNECTION:I = 0x8

.field public static final MAX_AP_CONNECTION:I = 0x8

.field public static final OPEN:Ljava/lang/String; = "open"

.field public static final WEP:Ljava/lang/String; = "wep"

.field public static final WPA:Ljava/lang/String; = "wpa-psk"

.field public static final WPA2:Ljava/lang/String; = "wpa2-psk"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public blocklist:[Ljava/lang/String;

.field public channel:I

.field public connectionArray:I

.field public dhcpEnable:I

.field public dhcpSubnetMask:Ljava/lang/String;

.field public dnsIPAddr1:Ljava/lang/String;

.field public dnsIPAddr2:Ljava/lang/String;

.field public enableMacFilter:I

.field public hiddenSSID:Z

.field public ipAddress:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public maxConns:I

.field public maxDhcpClients:I

.field public secureType:Ljava/lang/String;

.field public sleepPolicy:I

.field public startingIP:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiConfiguration;

.field public whitelist:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    const/16 v1, 0x10

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->this$0:Landroid/net/wifi/WifiConfiguration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    return-void
.end method
