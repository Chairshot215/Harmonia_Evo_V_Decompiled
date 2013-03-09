.class public Lcom/android/settings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field private static final META_DATA_PREFERENCE_SUMMARY:Ljava/lang/String; = "com.android.settings.summary"

.field private static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final UPDATE_PREFERENCE_FLAG_SET_TITLE_TO_MATCHING_ACTIVITY:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6
    .parameter "localeStr"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    if-nez p0, :cond_0

    .line 332
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 340
    :goto_0
    return-object v1

    .line 333
    :cond_0
    const-string v1, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, brokenDownLocale:[Ljava/lang/String;
    array-length v1, v0

    if-ne v4, v1, :cond_1

    .line 336
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_1
    array-length v1, v0

    if-ne v5, v1, :cond_2

    .line 338
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 340
    :cond_2
    new-instance v1, Ljava/util/Locale;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    aget-object v4, v0, v5

    invoke-direct {v1, v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 4
    .parameter "batteryChangedIntent"

    .prologue
    .line 345
    const-string v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 346
    .local v0, level:I
    const-string v2, "scale"

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 347
    .local v1, scale:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v0, 0x64

    div-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;
    .locals 7
    .parameter "res"
    .parameter "batteryChangedIntent"

    .prologue
    const/4 v6, 0x1

    .line 351
    move-object v0, p1

    .line 353
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, plugType:I
    const-string v4, "status"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 356
    .local v2, status:I
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 357
    const v4, 0x7f0c079a

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, statusString:Ljava/lang/String;
    if-lez v1, :cond_0

    .line 359
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v6, :cond_1

    const v4, 0x7f0c079b

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    :cond_0
    :goto_1
    return-object v3

    .line 359
    :cond_1
    const v4, 0x7f0c079c

    goto :goto_0

    .line 365
    .end local v3           #statusString:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 366
    const v4, 0x7f0c079d

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 367
    .end local v3           #statusString:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    .line 368
    const v4, 0x7f0c079e

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 369
    .end local v3           #statusString:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x5

    if-ne v2, v4, :cond_5

    .line 370
    const v4, 0x7f0c079f

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1

    .line 372
    .end local v3           #statusString:Ljava/lang/String;
    :cond_5
    const v4, 0x7f0c0799

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #statusString:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getTetheringLabel(Landroid/net/ConnectivityManager;)I
    .locals 12
    .parameter "cm"

    .prologue
    const/16 v11, 0x94

    const/16 v10, 0x51

    const/16 v9, 0x38

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 405
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, usbRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v5

    .line 407
    .local v5, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 409
    .local v1, bluetoothRegexs:[Ljava/lang/String;
    array-length v8, v3

    if-eqz v8, :cond_3

    move v2, v6

    .line 410
    .local v2, usbAvailable:Z
    :goto_0
    array-length v8, v5

    if-eqz v8, :cond_4

    move v4, v6

    .line 411
    .local v4, wifiAvailable:Z
    :goto_1
    array-length v8, v1

    if-eqz v8, :cond_5

    move v0, v6

    .line 413
    .local v0, bluetoothAvailable:Z
    :goto_2
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    :cond_0
    if-eqz v4, :cond_1

    if-nez v2, :cond_2

    :cond_1
    if-eqz v4, :cond_b

    if-eqz v0, :cond_b

    .line 415
    :cond_2
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v11, :cond_6

    .line 416
    const v6, 0x7f0c04bf

    .line 447
    :goto_3
    return v6

    .end local v0           #bluetoothAvailable:Z
    .end local v2           #usbAvailable:Z
    .end local v4           #wifiAvailable:Z
    :cond_3
    move v2, v7

    .line 409
    goto :goto_0

    .restart local v2       #usbAvailable:Z
    :cond_4
    move v4, v7

    .line 410
    goto :goto_1

    .restart local v4       #wifiAvailable:Z
    :cond_5
    move v0, v7

    .line 411
    goto :goto_2

    .line 417
    .restart local v0       #bluetoothAvailable:Z
    :cond_6
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_7

    .line 418
    const v6, 0x7f0c04bd

    goto :goto_3

    .line 419
    :cond_7
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-ne v6, v7, :cond_8

    .line 420
    const v6, 0x7f0c04be

    goto :goto_3

    .line 421
    :cond_8
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v10, :cond_9

    .line 422
    const v6, 0x7f0c04c0

    goto :goto_3

    .line 423
    :cond_9
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_a

    .line 424
    const v6, 0x7f0c04c1

    goto :goto_3

    .line 426
    :cond_a
    const v6, 0x7f0c0a78

    goto :goto_3

    .line 428
    :cond_b
    if-eqz v4, :cond_11

    .line 429
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v11, :cond_c

    .line 430
    const v6, 0x7f0c04ba

    goto :goto_3

    .line 431
    :cond_c
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0xa8

    if-ne v6, v7, :cond_d

    .line 432
    const v6, 0x7f0c04b8

    goto :goto_3

    .line 433
    :cond_d
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v7, 0x9b

    if-ne v6, v7, :cond_e

    .line 434
    const v6, 0x7f0c04b9

    goto :goto_3

    .line 435
    :cond_e
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v10, :cond_f

    .line 436
    const v6, 0x7f0c04bb

    goto :goto_3

    .line 437
    :cond_f
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v6, v9, :cond_10

    .line 438
    const v6, 0x7f0c04bc

    goto :goto_3

    .line 440
    :cond_10
    const v6, 0x7f0c0a75

    goto :goto_3

    .line 442
    :cond_11
    if-eqz v2, :cond_12

    if-eqz v0, :cond_12

    .line 443
    const v6, 0x7f0c0a77

    goto :goto_3

    .line 444
    :cond_12
    if-eqz v2, :cond_13

    .line 445
    const v6, 0x7f0c0a74

    goto :goto_3

    .line 447
    :cond_13
    const v6, 0x7f0c0a76

    goto :goto_3
.end method

.method public static getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 308
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 310
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v3

    .line 311
    .local v3, prop:Landroid/net/LinkProperties;
    if-nez v3, :cond_1

    .line 321
    :cond_0
    return-object v0

    .line 312
    :cond_1
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 314
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 316
    const-string v0, ""

    .line 317
    .local v0, addresses:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isMonkeyRunning()Z
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    return v0
.end method

.method public static isVoiceCapable(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 291
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 293
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 297
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 299
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V
    .locals 9
    .parameter "parent"
    .parameter "child"
    .parameter "list"
    .parameter "ignoreSidePadding"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 385
    invoke-virtual {p2}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v5

    const/high16 v8, 0x200

    if-ne v5, v8, :cond_1

    move v1, v7

    .line 386
    .local v1, movePadding:Z
    :goto_0
    if-eqz v1, :cond_0

    instance-of v5, p0, Lcom/htc/preference/HtcPreferenceFrameLayout;

    if-eqz v5, :cond_0

    .line 387
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;

    iput-boolean v7, v5, Lcom/htc/preference/HtcPreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 389
    invoke-virtual {p2}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 390
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x1050025

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 392
    .local v3, paddingSide:I
    const v5, 0x1050024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 395
    .local v2, paddingBottom:I
    if-eqz p3, :cond_2

    move v0, v6

    .line 396
    .local v0, effectivePaddingSide:I
    :goto_1
    invoke-virtual {p2, v0, v6, v0, v2}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 398
    .end local v0           #effectivePaddingSide:I
    .end local v2           #paddingBottom:I
    .end local v3           #paddingSide:I
    .end local v4           #res:Landroid/content/res/Resources;
    :cond_0
    return-void

    .end local v1           #movePadding:Z
    :cond_1
    move v1, v6

    .line 385
    goto :goto_0

    .restart local v1       #movePadding:Z
    .restart local v2       #paddingBottom:I
    .restart local v3       #paddingSide:I
    .restart local v4       #res:Landroid/content/res/Resources;
    :cond_2
    move v0, v2

    .line 395
    goto :goto_1
.end method

.method public static updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Lcom/htc/preference/HtcPreferenceActivity$Header;)Z
    .locals 16
    .parameter "context"
    .parameter
    .parameter "header"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ">;",
            "Lcom/htc/preference/HtcPreferenceActivity$Header;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Lcom/htc/preference/HtcPreferenceActivity$Header;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 224
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_3

    .line 226
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 227
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v12, 0x80

    invoke-virtual {v7, v3, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 228
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 229
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 230
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 231
    .local v9, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x0

    .line 235
    .local v11, title:Ljava/lang/String;
    const/4 v10, 0x0

    .line 239
    .local v10, summary:Ljava/lang/String;
    :try_start_0
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 241
    .local v8, res:Landroid/content/res/Resources;
    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v12, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 243
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v8, :cond_0

    if-eqz v6, :cond_0

    .line 244
    const-string v12, "com.android.settings.icon"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 245
    const-string v12, "com.android.settings.title"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 246
    const-string v12, "com.android.settings.summary"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 256
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_1
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 257
    invoke-virtual {v9, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 263
    :cond_1
    move-object/from16 v0, p2

    iput-object v11, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 264
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->summary:Ljava/lang/CharSequence;

    .line 266
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    move-object/from16 v0, p2

    iput-object v12, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->intent:Landroid/content/Intent;

    .line 269
    const/4 v12, 0x1

    .line 277
    .end local v1           #i:I
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #summary:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :goto_2
    return v12

    .line 229
    .restart local v1       #i:I
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 275
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v9           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-interface/range {p1 .. p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    sget-object v12, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Removed "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/htc/preference/HtcPreferenceActivity$Header;->id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 250
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v9       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v10       #summary:Ljava/lang/String;
    .restart local v11       #title:Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_1

    .line 248
    :catch_1
    move-exception v12

    goto :goto_1
.end method

.method public static updatePreferenceToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Z
    .locals 16
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"

    .prologue
    .line 156
    invoke-virtual/range {p1 .. p2}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/IconPreferenceScreen;

    .line 158
    .local v8, preference:Lcom/android/settings/IconPreferenceScreen;
    if-nez v8, :cond_0

    .line 159
    const/4 v13, 0x0

    .line 217
    :goto_0
    return v13

    .line 162
    :cond_0
    invoke-virtual {v8}, Lcom/android/settings/IconPreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 163
    .local v3, intent:Landroid/content/Intent;
    if-eqz v3, :cond_4

    .line 165
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 166
    .local v7, pm:Landroid/content/pm/PackageManager;
    const/16 v13, 0x80

    invoke-virtual {v7, v3, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 167
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 168
    .local v5, listSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v5, :cond_4

    .line 169
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 170
    .local v10, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 174
    .local v12, title:Ljava/lang/String;
    const/4 v11, 0x0

    .line 178
    .local v11, summary:Ljava/lang/String;
    :try_start_0
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 180
    .local v9, res:Landroid/content/res/Resources;
    iget-object v13, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 182
    .local v6, metaData:Landroid/os/Bundle;
    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 183
    const-string v13, "com.android.settings.icon"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    const-string v13, "com.android.settings.title"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 185
    const-string v13, "com.android.settings.summary"

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 195
    .end local v6           #metaData:Landroid/os/Bundle;
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_1
    :goto_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 196
    invoke-virtual {v10, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 200
    :cond_2
    invoke-virtual {v8, v2}, Lcom/android/settings/IconPreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 201
    invoke-virtual {v8, v12}, Lcom/android/settings/IconPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    invoke-virtual {v8, v11}, Lcom/android/settings/IconPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v8, v13}, Lcom/android/settings/IconPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 209
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 168
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .end local v11           #summary:Ljava/lang/String;
    .end local v12           #title:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 215
    .end local v1           #i:I
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5           #listSize:I
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    .end local v10           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 217
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 189
    .restart local v1       #i:I
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5       #listSize:I
    .restart local v7       #pm:Landroid/content/pm/PackageManager;
    .restart local v10       #resolveInfo:Landroid/content/pm/ResolveInfo;
    .restart local v11       #summary:Ljava/lang/String;
    .restart local v12       #title:Ljava/lang/String;
    :catch_0
    move-exception v13

    goto :goto_2

    .line 187
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method public static updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;I)Z
    .locals 11
    .parameter "context"
    .parameter "parentPreferenceGroup"
    .parameter "preferenceKey"
    .parameter "flags"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-virtual {p1, p2}, Lcom/htc/preference/HtcPreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v5

    .line 96
    .local v5, preference:Lcom/htc/preference/HtcPreference;
    if-nez v5, :cond_0

    .line 129
    :goto_0
    return v7

    .line 100
    :cond_0
    invoke-virtual {v5}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 101
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 104
    .local v4, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v1, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 105
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 106
    .local v3, listSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 107
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 108
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_2

    .line 112
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    .line 116
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    .line 118
    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    move v7, v8

    .line 121
    goto :goto_0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 127
    .end local v0           #i:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3           #listSize:I
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_3
    invoke-virtual {p1, v5}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    move v7, v8

    .line 129
    goto :goto_0
.end method
