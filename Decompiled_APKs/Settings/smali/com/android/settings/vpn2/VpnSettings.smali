.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VpnSettings"


# instance fields
.field private mDialog:Lcom/android/settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 57
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 59
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 460
    return-void
.end method

.method private connect(Lcom/android/settings/vpn2/VpnProfile;)V
    .locals 14
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, network:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 351
    .local v3, interfaze:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v2, v5, v11

    .line 354
    .local v2, gateway:Ljava/lang/String;
    const-string v6, ""

    .line 355
    .local v6, privateKey:Ljava/lang/String;
    const-string v9, ""

    .line 356
    .local v9, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 357
    .local v0, caCert:Ljava/lang/String;
    const-string v8, ""

    .line 358
    .local v8, serverCert:Ljava/lang/String;
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 359
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 360
    .local v10, value:[B
    if-nez v10, :cond_4

    const/4 v6, 0x0

    .line 361
    :goto_0
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 362
    if-nez v10, :cond_5

    const/4 v9, 0x0

    .line 364
    .end local v10           #value:[B
    :cond_0
    :goto_1
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 365
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 366
    .restart local v10       #value:[B
    if-nez v10, :cond_6

    const/4 v0, 0x0

    .line 368
    .end local v10           #value:[B
    :cond_1
    :goto_2
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 369
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 370
    .restart local v10       #value:[B
    if-nez v10, :cond_7

    const/4 v8, 0x0

    .line 372
    .end local v10           #value:[B
    :cond_2
    :goto_3
    if-eqz v6, :cond_3

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    if-nez v8, :cond_8

    .line 374
    :cond_3
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 360
    .restart local v10       #value:[B
    :cond_4
    new-instance v6, Ljava/lang/String;

    .end local v6           #privateKey:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/16 :goto_0

    .line 362
    .restart local v6       #privateKey:Ljava/lang/String;
    :cond_5
    new-instance v9, Ljava/lang/String;

    .end local v9           #userCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 366
    .restart local v9       #userCert:Ljava/lang/String;
    :cond_6
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 370
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_7
    new-instance v8, Ljava/lang/String;

    .end local v8           #serverCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_3

    .line 378
    .end local v10           #value:[B
    .restart local v8       #serverCert:Ljava/lang/String;
    :cond_8
    const/4 v7, 0x0

    .line 379
    .local v7, racoon:[Ljava/lang/String;
    iget v11, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 413
    :goto_4
    const/4 v4, 0x0

    .line 414
    .local v4, mtpd:[Ljava/lang/String;
    iget v11, p1, Lcom/android/settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_1

    .line 435
    :goto_5
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 436
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 437
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 438
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 439
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 440
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 441
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 443
    :cond_9
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 444
    iget-object v11, p1, Lcom/android/settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 447
    :cond_a
    iget-object v11, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v1, v7, v4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 448
    return-void

    .line 381
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 385
    .restart local v7       #racoon:[Ljava/lang/String;
    goto :goto_4

    .line 387
    :pswitch_1
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 391
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_4

    .line 393
    :pswitch_2
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 397
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_4

    .line 399
    :pswitch_3
    const/16 v11, 0xb

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0xa

    aput-object v2, v7, v11

    .line 403
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_4

    .line 405
    :pswitch_4
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_4

    .line 416
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/settings/vpn2/VpnProfile;->mppe:Z

    if-eqz v11, :cond_b

    const-string v11, "+mppe"

    :goto_6
    aput-object v11, v4, v12

    .line 423
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_5

    .line 416
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_b
    const-string v11, "nomppe"

    goto :goto_6

    .line 426
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v4, v11

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_5

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 414
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v5, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 326
    .local v3, network:Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    .line 327
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 329
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, interfaze:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 331
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 333
    :cond_1
    const/4 v0, 0x0

    .line 334
    .local v0, gateway:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 336
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 337
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 341
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 342
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 344
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    return-object v5
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 297
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 302
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 303
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 304
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 305
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 307
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 309
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 310
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 311
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 312
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 313
    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 316
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 186
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v2

    .line 189
    .local v2, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 192
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 193
    .local v1, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 194
    iget-object v3, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/settings/vpn2/VpnProfile;)V

    .line 203
    :goto_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 205
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/settings/vpn2/VpnSettings;->connect(Lcom/android/settings/vpn2/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v2           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 197
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .restart local v2       #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 198
    .restart local v1       #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 235
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 236
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    return v1

    .line 240
    :cond_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .line 241
    .local v0, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 242
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 248
    :pswitch_0
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 249
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 250
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 251
    goto :goto_0

    .line 253
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 255
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 257
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x7f0c0d15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v1, 0x7f050044

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setOrderingAsAdded(Z)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    .line 80
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    if-eqz v0, :cond_0

    .line 81
    new-instance v1, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 85
    .end local v0           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f0c0d16

    const v5, 0x7f0c0d15

    const/4 v4, 0x0

    .line 215
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 220
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreference;

    .line 223
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    instance-of v2, v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 224
    check-cast v0, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v1

    .line 225
    .local v1, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 226
    iget-object v2, v1, Lcom/android/settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 227
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 228
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 182
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onPause()V

    .line 167
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnDialog;->dismiss()V

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 176
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 264
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 265
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    .end local p1
    :goto_0
    return v7

    .line 269
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 270
    check-cast p1, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v2

    .line 271
    .local v2, profile:Lcom/android/settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 274
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 276
    :catch_0
    move-exception v3

    .line 280
    :cond_1
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    .line 290
    .end local v2           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 291
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 283
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 284
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 285
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 287
    :cond_3
    new-instance v3, Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/settings/vpn2/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 101
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 104
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v10

    sget-object v11, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v10, v11, :cond_2

    .line 105
    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_1

    .line 107
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 112
    :goto_0
    iget-boolean v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v10, :cond_0

    const/4 v9, 0x1

    :cond_0
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 160
    :goto_1
    return-void

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 117
    :cond_2
    iput-boolean v9, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 122
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v10, :cond_5

    .line 123
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 126
    .local v2, group:Lcom/htc/preference/HtcPreferenceGroup;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v11, "VPN_"

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, keys:[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v10, v5

    if-lez v10, :cond_4

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 130
    .local v1, context:Landroid/content/Context;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_4

    aget-object v4, v0, v3

    .line 131
    .local v4, key:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    invoke-static {v4, v10}, Lcom/android/settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v8

    .line 133
    .local v8, profile:Lcom/android/settings/vpn2/VpnProfile;
    if-nez v8, :cond_3

    .line 134
    const-string v10, "VpnSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bad profile: key = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 130
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 137
    :cond_3
    new-instance v7, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v7, p0, v1, v8}, Lcom/android/settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/settings/vpn2/VpnProfile;)V

    .line 138
    .local v7, preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v10, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {v2, v7}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_3

    .line 143
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v3           #i$:I
    .end local v4           #key:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #preference:Lcom/android/settings/vpn2/VpnSettings$VpnPreference;
    .end local v8           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_4
    const-string v10, "add_network"

    invoke-virtual {v2, v10}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/htc/preference/HtcPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 147
    .end local v2           #group:Lcom/htc/preference/HtcPreferenceGroup;
    .end local v5           #keys:[Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v10, :cond_6

    .line 148
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10, p0}, Lcom/android/settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 149
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v10}, Lcom/android/settings/vpn2/VpnDialog;->show()V

    .line 153
    :cond_6
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v10, :cond_7

    .line 154
    new-instance v10, Landroid/os/Handler;

    invoke-direct {v10, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 156
    :cond_7
    iget-object v10, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v10, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/settings/vpn2/VpnDialog;->getProfile()Lcom/android/settings/vpn2/VpnProfile;

    move-result-object v0

    .line 92
    .local v0, profile:Lcom/android/settings/vpn2/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/settings/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 94
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mDialog:Lcom/android/settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 97
    .end local v0           #profile:Lcom/android/settings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method
