.class public Lcom/htc/cs/util/PhoneStatusUtil;
.super Ljava/lang/Object;
.source "PhoneStatusUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkNetworkAccess(Landroid/content/Context;)Z
    .locals 10
    .parameter "userContext"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 65
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 67
    .local v2, mobile:Landroid/net/NetworkInfo;
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 68
    .local v6, wifi:Landroid/net/NetworkInfo;
    const/16 v9, 0x12

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 69
    .local v4, usbNet:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 70
    .local v1, mOn:Z
    const/4 v5, 0x0

    .line 71
    .local v5, wOn:Z
    const/4 v3, 0x0

    .line 72
    .local v3, uOn:Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 73
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    .line 74
    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    .line 75
    :cond_2
    if-eq v5, v8, :cond_3

    if-eq v1, v8, :cond_3

    if-eq v3, v8, :cond_3

    .line 78
    :goto_0
    return v7

    :cond_3
    move v7, v8

    goto :goto_0
.end method

.method public static checkSIMCard(Landroid/content/Context;)Z
    .locals 4
    .parameter "userContext"

    .prologue
    const/4 v2, 0x1

    .line 24
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 29
    .local v1, tmp:I
    if-ne v1, v2, :cond_0

    .line 30
    const/4 v2, 0x0

    .line 31
    :cond_0
    return v2
.end method

.method public static getBindIdFromWap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "source"

    .prologue
    .line 107
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, firstIndex:I
    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x26

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, BindRequestId:Ljava/lang/String;
    return-object v0
.end method

.method public static getCDMAROMNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "userContext"

    .prologue
    .line 57
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 58
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getEmailFromWap(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "source"

    .prologue
    .line 116
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, secondIndex:I
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, tempEmail:Ljava/lang/String;
    return-object v1
.end method

.method public static getHTCLocateSetting(Landroid/content/Context;)Z
    .locals 4
    .parameter "userContext"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_locate_allowed"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 84
    .local v0, locate:I
    if-eqz v0, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_0
    return v1
.end method

.method public static getPhoneType(Landroid/content/Context;)I
    .locals 4
    .parameter "userContext"

    .prologue
    .line 50
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 52
    .local v0, tm:Landroid/telephony/TelephonyManager;
    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line1Number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    return v1
.end method

.method public static getRequiredStorage()J
    .locals 9

    .prologue
    .line 159
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, FileStats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v1, v5

    .line 163
    .local v1, blkSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v5, v5

    mul-long/2addr v5, v1

    long-to-double v5, v5

    const-wide v7, 0x3fac28f5c28f5c29L

    mul-double/2addr v5, v7

    double-to-long v3, v5

    .line 165
    .local v3, reqMem:J
    return-wide v3
.end method

.method public static getSimOperatorName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "userContext"

    .prologue
    .line 41
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 42
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->checkSIMCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSimSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "userContext"

    .prologue
    .line 35
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 36
    .local v1, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, serial:Ljava/lang/String;
    return-object v0
.end method

.method public static getTitleColor(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    const-string v0, "setting_title_color"

    const v1, 0x7f060004

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getTitleDivider(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    const-string v0, "oobe_title_divider"

    const v1, 0x7f020002

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isDataStorageFull()Z
    .locals 13

    .prologue
    .line 146
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, FileStats:Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v1, v7

    .line 150
    .local v1, blkSize:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v7, v7

    mul-long v3, v7, v1

    .line 151
    .local v3, freeMem:J
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v7, v7

    mul-long v5, v7, v1

    .line 155
    .local v5, totalMem:J
    long-to-double v7, v3

    long-to-double v9, v5

    const-wide v11, 0x3fac28f5c28f5c29L

    mul-double/2addr v9, v11

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static setHTCLocateSetting(Landroid/content/Context;Z)V
    .locals 3
    .parameter "userContext"
    .parameter "locate"

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, value:I
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 95
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_locate_allowed"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    return-void
.end method

.method public static setTitleColor(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 129
    const/high16 v1, 0x7f0b

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 130
    .local v0, title:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getTitleColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    return-void
.end method

.method public static setTitleDivider(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 2
    .parameter "context"
    .parameter "activity"

    .prologue
    .line 140
    const v1, 0x7f0b0001

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 142
    .local v0, divider:Landroid/widget/ImageView;
    invoke-static {p0}, Lcom/htc/cs/util/PhoneStatusUtil;->getTitleDivider(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    return-void
.end method
