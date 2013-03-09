.class Lcom/android/settings/wifi/AccessPoint;
.super Lcom/htc/preference/HtcPreference;
.source "AccessPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AccessPoint$1;,
        Lcom/android/settings/wifi/AccessPoint$PskType;
    }
.end annotation


# static fields
.field static final EAP_FAST:I = 0x4

.field static final EAP_LEAP:I = 0x3

.field static final EAP_PEAP:I = 0x0

.field static final EAP_TLS:I = 0x1

.field static final EAP_TTLS:I = 0x2

.field static final ENCRYPTION_AES:I = 0x1

.field static final ENCRYPTION_TKIP:I = 0x0

.field private static final KEY_CONFIG:Ljava/lang/String; = "key_config"

.field private static final KEY_DETAILEDSTATE:Ljava/lang/String; = "key_detailedstate"

.field private static final KEY_SCANRESULT:Ljava/lang/String; = "key_scanresult"

.field private static final KEY_WIFIINFO:Ljava/lang/String; = "key_wifiinfo"

.field public static final MATCH_EXACT:I = 0x3

.field public static final MATCH_NONE:I = 0x0

.field public static final MATCH_STRONG:I = 0x2

.field public static final MATCH_WEAK:I = 0x1

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WAPI_CERT:I = 0x5

.field static final SECURITY_WAPI_PSK:I = 0x4

.field static final SECURITY_WEP:I = 0x1

.field private static final STATE_NONE:[I = null

.field private static final STATE_SECURED:[I = null

.field static final TAG:Ljava/lang/String; = "Settings.AccessPoint"

.field public static final TYPE_SETTINGS:I = 0x0

.field public static final TYPE_SETUP_WIZARD:I = 0x1


# instance fields
.field bssid:Ljava/lang/String;

.field eap:Ljava/lang/String;

.field eapol_flags:I

.field private mCTReadOnlySsid:[Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mFrequency:I

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field private mRssi:I

.field mScanResult:Landroid/net/wifi/ScanResult;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStatus:Landroid/widget/ImageView;

.field private mType:I

.field networkId:I

.field pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

.field security:I

.field ssid:Ljava/lang/String;

.field wpsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/high16 v1, 0x7f01

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    .line 51
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;I)V
    .locals 5
    .parameter "context"
    .parameter "result"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "ChinaNet_HomeCW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 95
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 219
    if-ne p3, v4, :cond_0

    .line 220
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 223
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 224
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 226
    return-void

    .line 222
    :cond_0
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 5
    .parameter "context"
    .parameter "config"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 207
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "ChinaNet_HomeCW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 95
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 208
    if-ne p3, v4, :cond_0

    .line 209
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 212
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 213
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 215
    return-void

    .line 211
    :cond_0
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 5
    .parameter "context"
    .parameter "savedState"
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 229
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 53
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ChinaNet"

    aput-object v1, v0, v3

    const-string v1, "ChinaNet_CW"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "ChinaNet_HomeCW"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    .line 93
    iput-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 95
    sget-object v0, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 230
    if-ne p3, v4, :cond_3

    .line 231
    const v0, 0x7f040076

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    .line 235
    :goto_0
    iput p3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    .line 236
    const-string v0, "key_config"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 237
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 240
    :cond_0
    const-string v0, "key_scanresult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->loadResult(Landroid/net/wifi/ScanResult;)V

    .line 244
    :cond_1
    const-string v0, "key_wifiinfo"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 245
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    const-string v0, "key_detailedstate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkInfo$DetailedState;->valueOf(Ljava/lang/String;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 249
    return-void

    .line 233
    :cond_3
    const v0, 0x7f040075

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AccessPoint;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private compareCTPriority(Lcom/android/settings/wifi/AccessPoint;)I
    .locals 5
    .parameter "other"

    .prologue
    const/4 v3, 0x1

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, grade:I
    const/4 v2, 0x0

    .line 329
    .local v2, otherGrade:I
    const/4 v0, 0x0

    .line 330
    .local v0, compare:I
    iget-object v4, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/AccessPoint;->getCTSSIDGrade(Ljava/lang/String;)I

    move-result v1

    .line 331
    iget-object v4, p1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-direct {p1, v4}, Lcom/android/settings/wifi/AccessPoint;->getCTSSIDGrade(Ljava/lang/String;)I

    move-result v2

    .line 332
    sub-int v0, v2, v1

    .line 334
    if-lt v0, v3, :cond_0

    .line 339
    :goto_0
    return v3

    .line 336
    :cond_0
    if-nez v0, :cond_1

    .line 337
    const/4 v3, 0x0

    goto :goto_0

    .line 339
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "string"

    .prologue
    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCTSSIDGrade(Ljava/lang/String;)I
    .locals 1
    .parameter "ssid"

    .prologue
    .line 344
    if-nez p1, :cond_0

    const/4 v0, -0x1

    .line 351
    :goto_0
    return v0

    .line 346
    :cond_0
    if-eqz p1, :cond_3

    .line 347
    const-string v0, "ChinaNet_HomeCW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 348
    :cond_1
    const-string v0, "ChinaNet_CW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 349
    :cond_2
    const-string v0, "ChinaNet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;
    .locals 5
    .parameter "result"

    .prologue
    .line 192
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 193
    .local v0, wpa:Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 194
    .local v1, wpa2:Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 195
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA_WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 202
    :goto_0
    return-object v2

    .line 196
    :cond_0
    if-eqz v1, :cond_1

    .line 197
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA2:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 198
    :cond_1
    if-eqz v0, :cond_2

    .line 199
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->WPA:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0

    .line 201
    :cond_2
    const-string v2, "Settings.AccessPoint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget-object v2, Lcom/android/settings/wifi/AccessPoint$PskType;->UNKNOWN:Lcom/android/settings/wifi/AccessPoint$PskType;

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .parameter "result"

    .prologue
    .line 142
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x4

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    const/4 v0, 0x5

    goto :goto_0

    .line 148
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    const/4 v0, 0x2

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const/4 v0, 0x3

    goto :goto_0

    .line 153
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    .line 119
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 130
    :pswitch_0
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    if-eqz v4, :cond_1

    move v1, v3

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 121
    :pswitch_1
    const/4 v1, 0x4

    goto :goto_0

    .line 123
    :pswitch_2
    const/4 v1, 0x5

    goto :goto_0

    .line 125
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_4
    move v1, v3

    .line 128
    goto :goto_0

    .line 133
    :cond_1
    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-gt v4, v3, :cond_2

    .line 134
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v4, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v3, v3, v4

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 136
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isShowEapErrUI(Ljava/lang/String;)Z
    .locals 1
    .parameter "eapVal"

    .prologue
    .line 468
    const-string v0, "AKA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SIM"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    :cond_0
    const/4 v0, 0x1

    .line 471
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidWepPassword(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 475
    const/4 v0, 0x0

    .line 479
    .local v0, retValue:Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 480
    :cond_0
    const/4 v0, 0x1

    .line 488
    :cond_1
    :goto_0
    return v0

    .line 481
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 482
    :cond_3
    const-string v1, "[0-9A-Fa-f]*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 261
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 262
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 263
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 264
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 265
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 266
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 267
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->eapol_flags:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->eapol_flags:I

    .line 268
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    .line 273
    :goto_1
    return-void

    .line 261
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    goto :goto_1
.end method

.method private loadResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, -0x1

    .line 276
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    .line 277
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    .line 278
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    .line 279
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WPS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    .line 280
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 281
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 282
    :cond_0
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    .line 283
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    .line 285
    iput v2, p0, Lcom/android/settings/wifi/AccessPoint;->eapol_flags:I

    .line 286
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    .line 287
    return-void

    .line 279
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    .line 528
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 531
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v3, :cond_1

    .line 532
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v3}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    .line 534
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStatus:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mStatus:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "icon_connected"

    const v6, 0x208003e

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 537
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 538
    const v3, 0x7f0c093d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v3, v5, :cond_3

    .line 540
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 549
    :pswitch_0
    const v3, 0x7f0c0938

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 542
    :pswitch_1
    const v3, 0x7f0c093c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 546
    :pswitch_2
    const v3, 0x7f0c0939

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 552
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v2, summary:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_4

    .line 554
    const v3, 0x7f0c0937

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v3, :cond_5

    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_7

    .line 560
    const v3, 0x7f0c0940

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 564
    .local v1, securityStrFormat:Ljava/lang/String;
    :goto_1
    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    if-eqz v3, :cond_6

    .line 568
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_8

    .line 569
    const v3, 0x7f0c093e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    :cond_6
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/AccessPoint;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 562
    :cond_7
    const v3, 0x7f0c0941

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #securityStrFormat:Ljava/lang/String;
    goto :goto_1

    .line 571
    .end local v1           #securityStrFormat:Ljava/lang/String;
    :cond_8
    const v3, 0x7f0c093f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 512
    if-nez p0, :cond_1

    const-string p0, ""

    .line 519
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 514
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 515
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 517
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public checkCTSSID()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 315
    sget-boolean v2, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-nez v2, :cond_1

    .line 323
    :cond_0
    :goto_0
    return v1

    .line 316
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 318
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mCTReadOnlySsid:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 320
    const/4 v1, 0x1

    goto :goto_0

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public compareTo(Lcom/htc/preference/HtcPreference;)I
    .locals 7
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 357
    instance-of v5, p1, Lcom/android/settings/wifi/AccessPoint;

    if-nez v5, :cond_1

    move v3, v4

    .line 391
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 360
    check-cast v1, Lcom/android/settings/wifi/AccessPoint;

    .line 362
    .local v1, other:Lcom/android/settings/wifi/AccessPoint;
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, v1, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eq v5, v6, :cond_2

    .line 363
    iget-object v5, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 366
    :cond_2
    sget-boolean v5, Lcom/android/settings/wifi/CustomUtil;->ENABLE_C_PLUS_W:Z

    if-eqz v5, :cond_5

    .line 369
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v6, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v5, v6

    if-gtz v5, :cond_3

    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v6, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    if-ne v5, v6, :cond_5

    :cond_3
    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/AccessPoint;->compareCTPriority(Lcom/android/settings/wifi/AccessPoint;)I

    move-result v2

    .line 371
    .local v2, result:I
    const-string v3, "Settings.AccessPoint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[C+W] compare result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 372
    goto :goto_0

    .line 378
    .end local v2           #result:I
    :cond_5
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v6, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_6

    .line 379
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v6, 0x7fffffff

    if-ne v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 382
    :cond_6
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iget v6, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    xor-int/2addr v5, v6

    if-gez v5, :cond_7

    .line 383
    iget v5, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v5, v3, :cond_0

    move v3, v4

    goto :goto_0

    .line 386
    :cond_7
    iget v3, v1, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    iget v4, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    .line 387
    .local v0, difference:I
    if-eqz v0, :cond_8

    move v3, v0

    .line 388
    goto :goto_0

    .line 391
    :cond_8
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    check-cast p1, Lcom/htc/preference/HtcPreference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/AccessPoint;->compareTo(Lcom/htc/preference/HtcPreference;)I

    move-result v0

    return v0
.end method

.method protected generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 584
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_0

    .line 585
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 591
    :goto_0
    return-void

    .line 588
    :cond_1
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method getLevel()I
    .locals 3

    .prologue
    .line 435
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 436
    const/4 v0, -0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mFrequency:I

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .parameter "concise"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    packed-switch v1, :pswitch_data_0

    .line 187
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 160
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0c0947

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0c094e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object v1, Lcom/android/settings/wifi/AccessPoint$1;->$SwitchMap$com$android$settings$wifi$AccessPoint$PskType:[I

    iget-object v2, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 175
    if-eqz p1, :cond_4

    const v1, 0x7f0c0946

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 165
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0c0943

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0c094a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0c0944

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0c094b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 171
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0c0945

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0c094c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 175
    :cond_4
    const v1, 0x7f0c094d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 179
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0c0942

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0c0949

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 182
    :pswitch_6
    const v1, 0x7f0c038f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 184
    :pswitch_7
    const v1, 0x7f0c0390

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 187
    :cond_6
    const v1, 0x7f0c0948

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 163
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public isFirstPriority()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 492
    iget-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 503
    :cond_0
    :goto_0
    return v2

    .line 498
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 499
    .local v0, mgr:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getMostPreferredNetwork()I

    move-result v1

    .line 500
    .local v1, preferNetwork:I
    iget v3, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_0

    .line 503
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    .line 454
    const-string v0, "SIM"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x1

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowEapErrUI()Z
    .locals 2

    .prologue
    .line 461
    const-string v0, "AKA"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SIM"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->eap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    :cond_0
    const/4 v0, 0x1

    .line 464
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public matches(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 8
    .parameter "otherNetworkId"
    .parameter "otherBssid"
    .parameter "otherSsid"
    .parameter "otherSecurity"

    .prologue
    const/4 v5, 0x1

    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 599
    if-nez p3, :cond_0

    .line 611
    :cond_0
    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v6, p4, :cond_2

    .line 653
    :cond_1
    :goto_0
    return v4

    .line 615
    :cond_2
    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v6, p1, :cond_4

    move v1, v5

    .line 616
    .local v1, networkIdMatches:Z
    :goto_1
    if-nez v1, :cond_3

    iget v6, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-lt v6, v7, :cond_3

    if-ge p1, v7, :cond_1

    .line 621
    :cond_3
    if-eqz v1, :cond_5

    if-eq p1, v7, :cond_5

    if-lt p1, v7, :cond_5

    .line 624
    const/4 v4, 0x3

    goto :goto_0

    .end local v1           #networkIdMatches:Z
    :cond_4
    move v1, v4

    .line 615
    goto :goto_1

    .line 629
    .restart local v1       #networkIdMatches:Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    if-eqz v6, :cond_7

    if-eqz p2, :cond_7

    .line 630
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 631
    .local v0, bssidMatches:Z
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 632
    .local v2, otherBssidIsWildcard:Z
    if-eqz v0, :cond_6

    if-nez v2, :cond_6

    .line 634
    const/4 v4, 0x2

    goto :goto_0

    .line 637
    :cond_6
    if-nez v0, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    if-eqz v2, :cond_1

    .line 645
    .end local v0           #bssidMatches:Z
    .end local v2           #otherBssidIsWildcard:Z
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 646
    iget-object v6, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 647
    .local v3, ssidMatches:Z
    if-eqz v3, :cond_1

    move v4, v5

    .line 649
    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 291
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 292
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mType:I

    if-ne v1, v5, :cond_0

    .line 293
    const v1, 0x7f080129

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mStatus:Landroid/widget/ImageView;

    .line 295
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mStatus:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "icon_connected"

    const v4, 0x208003e

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    :cond_0
    :goto_0
    const v1, 0x7f080128

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 303
    .local v0, signal:Landroid/widget/ImageView;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 304
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    :goto_1
    return-void

    .line 298
    .end local v0           #signal:Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mStatus:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 306
    .restart local v0       #signal:Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 307
    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_SECURED:[I

    :goto_2
    invoke-virtual {v0, v1, v5}, Landroid/widget/ImageView;->setImageState([IZ)V

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/android/settings/wifi/AccessPoint;->STATE_NONE:[I

    goto :goto_2
.end method

.method public saveWifiState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 252
    const-string v0, "key_config"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    const-string v0, "key_scanresult"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mScanResult:Landroid/net/wifi/ScanResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 254
    const-string v0, "key_wifiinfo"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "key_detailedstate"

    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_0
    return-void
.end method

.method public setFirstPriority()V
    .locals 3

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 508
    .local v0, mgr:Landroid/net/wifi/WifiManager;
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setMostPreferredNetwork(I)Z

    .line 509
    return-void
.end method

.method update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "info"
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 415
    const/4 v0, 0x0

    .line 416
    .local v0, reorder:Z
    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 418
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 419
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 420
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 421
    iput-object p2, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 422
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 429
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyHierarchyChanged()V

    .line 432
    :cond_1
    return-void

    .line 418
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v1, :cond_0

    .line 424
    const/4 v0, 0x1

    .line 425
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 426
    iput-object v3, p0, Lcom/android/settings/wifi/AccessPoint;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 427
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    goto :goto_1
.end method

.method update(Landroid/net/wifi/ScanResult;)Z
    .locals 3
    .parameter "result"

    .prologue
    .line 395
    iget-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 396
    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mFrequency:I

    .line 397
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v2, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 399
    .local v0, oldLevel:I
    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, p0, Lcom/android/settings/wifi/AccessPoint;->mRssi:I

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/wifi/AccessPoint;->notifyChanged()V

    .line 405
    .end local v0           #oldLevel:I
    :cond_0
    iget v1, p0, Lcom/android/settings/wifi/AccessPoint;->security:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 406
    invoke-static {p1}, Lcom/android/settings/wifi/AccessPoint;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/settings/wifi/AccessPoint$PskType;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/AccessPoint;->pskType:Lcom/android/settings/wifi/AccessPoint$PskType;

    .line 408
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/AccessPoint;->refresh()V

    .line 409
    const/4 v1, 0x1

    .line 411
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
