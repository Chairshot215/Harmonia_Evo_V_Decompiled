.class public Lcom/htc/android/htcsetupwizard/CustomizationReader;
.super Ljava/lang/Object;
.source "CustomizationReader.java"


# static fields
.field public static final FACEBOOK_PKG:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final FLICKR_PKG:Ljava/lang/String; = "com.htc.socialnetwork.flickr"

.field public static final JIEPANG_PKG:Ljava/lang/String; = "com.jiepang.android.htcfs"

.field public static final KAIXIN_PKG:Ljava/lang/String; = "com.kaixin001.activity"

.field private static final KEY_APPLICATION_OOBE:Ljava/lang/String; = "application_OOBE"

.field private static final LOCAL_LOG:Z = false

.field public static final PLURK_PKG:Ljava/lang/String; = "com.htc.socialnetwork.plurk"

.field public static final RENREN_PKG_1:Ljava/lang/String; = "com.renren.mobile.android"

.field public static final RENREN_PKG_2:Ljava/lang/String; = "com.htc.friendstream.renrenwebplugin"

.field public static final TAG:Ljava/lang/String; = "CustomizationReader"

.field public static final TWITTER_PKG:Ljava/lang/String; = "com.htc.htctwitter"

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable/"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "moduleName"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    .line 64
    invoke-direct {p0, p2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 464
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 466
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 467
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 468
    const/4 v0, 0x0

    .line 470
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 469
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 413
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 414
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 415
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 437
    :goto_0
    return-object v2

    .line 418
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 419
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 420
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 424
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 426
    const/4 v8, 0x0

    .line 428
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 435
    invoke-direct {p0, v8}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 436
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 437
    goto :goto_0

    .line 429
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 430
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "CustomizationReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no customized data support getModule(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 456
    if-nez p1, :cond_0

    .line 457
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method private getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-object v1

    .line 444
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 445
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_0

    .line 449
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, result:Ljava/lang/String;
    goto :goto_0

    .line 444
    .end local v0           #childbundle:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public static isActivityAvailable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 374
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .local v1, mainComponent:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .line 377
    .local v3, res:Z
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    const/4 v3, 0x1

    .line 382
    :goto_0
    return v3

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "CustomizationReader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Not Found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 387
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 389
    .local v2, res:Z
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    const/4 v2, 0x1

    .line 394
    :goto_0
    return v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "CustomizationReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Not Found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadCustomizationData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "moduleName"

    .prologue
    .line 398
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 399
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 400
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "application_OOBE"

    invoke-direct {p0, v1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    .line 404
    :goto_1
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 408
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    return-object v1

    .line 403
    .restart local v0       #i:I
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    goto :goto_1

    .line 399
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getBlockNoSIMCountry()Ljava/lang/String;
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v1, "Block_No_SIM"

    const-string v2, "Country"

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLearnMoreLink()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v2, "Learn_More"

    const-string v3, "Link"

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, Link:Ljava/lang/String;
    const-string v1, "CustomizationReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLearnMoreLink = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-object v0
.end method

.method public getLearnMoreName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 123
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v2, "Learn_More"

    const-string v3, "Name"

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, Name:Ljava/lang/String;
    const-string v1, "CustomizationReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLearnMoreName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0
.end method

.method public getSingleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "function"
    .parameter "item"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    invoke-direct {p0, v0, p1, p2}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAccountConfig(Ljava/lang/String;)Z
    .locals 6
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 135
    const-string v3, "CustomizationReader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasAccountConfig service is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v0, 0x1

    .line 138
    .local v0, hasAccount:Z
    const-string v3, "Orange_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    const-string v3, "Orange_3rd_Party_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 145
    iget-object v3, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v4, "com.orange.pushmail.Z7"

    invoke-static {v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    :cond_3
    const-string v3, "Tmo_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 152
    goto :goto_0

    .line 154
    :cond_4
    const-string v3, "O2_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 155
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 158
    goto :goto_0

    .line 160
    :cond_5
    const-string v3, "My_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 161
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 164
    goto :goto_0

    .line 166
    :cond_6
    const-string v3, "Bell_Net_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 167
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 170
    goto/16 :goto_0

    .line 172
    :cond_7
    const-string v3, "AOL_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 173
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 176
    goto/16 :goto_0

    .line 178
    :cond_8
    const-string v3, "Yahoo_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 179
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_9
    const-string v3, "1und1_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 185
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 188
    goto/16 :goto_0

    .line 190
    :cond_a
    const-string v3, "Rus_Mts_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 191
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 194
    goto/16 :goto_0

    .line 196
    :cond_b
    const-string v3, "Ru_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 197
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 200
    goto/16 :goto_0

    .line 210
    :cond_c
    const-string v3, "Sympatico_ca_Mail"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 211
    const-string v3, "no"

    iget-object v4, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v5, "Account_Config"

    invoke-direct {p0, v4, v5, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 214
    goto/16 :goto_0

    .line 216
    :cond_d
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Account_Config"

    invoke-direct {p0, v2, v3, p1}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 217
    const/4 v0, 0x0

    :cond_e
    move v1, v0

    .line 219
    goto/16 :goto_0
.end method

.method public hasSocialNetworkConfig(Ljava/lang/String;)Z
    .locals 4
    .parameter "service"

    .prologue
    const/4 v1, 0x0

    .line 224
    const/4 v0, 0x1

    .line 228
    .local v0, hasService:Z
    const-string v2, "Facebook"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.socialnetwork.facebook"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 250
    .end local v0           #hasService:Z
    :cond_0
    :goto_0
    return v0

    .line 230
    .restart local v0       #hasService:Z
    :cond_1
    const-string v2, "Flickr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.socialnetwork.flickr"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 232
    :cond_2
    const-string v2, "Twitter"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.htctwitter"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 233
    goto :goto_0

    .line 234
    :cond_3
    const-string v2, "Plurk"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.socialnetwork.plurk"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 235
    goto :goto_0

    .line 236
    :cond_4
    const-string v2, "kaixin001"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.kaixin001.activity"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 237
    goto :goto_0

    .line 238
    :cond_5
    const-string v2, "jiepang"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.jiepang.android.htcfs"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 239
    goto :goto_0

    .line 240
    :cond_6
    const-string v2, "renren"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.renren.mobile.android"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mContext:Landroid/content/Context;

    const-string v3, "com.htc.friendstream.renrenwebplugin"

    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->isPackageAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 244
    goto/16 :goto_0
.end method

.method public isAllowLocationConsent()Z
    .locals 5

    .prologue
    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, allowCheckLocation:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Location_Consent_Config"

    const-string v4, "Allow_Check"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const/4 v0, 0x0

    .line 100
    :cond_0
    const-string v1, "CustomizationReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowLocationConsent allowCheckLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v0
.end method

.method public isAllowPrivacy()Z
    .locals 5

    .prologue
    .line 105
    const/4 v0, 0x1

    .line 106
    .local v0, allowCheckPrivacy:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Location_Consent_Config"

    const-string v4, "Allow_Check_Privacy"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/4 v0, 0x0

    .line 109
    :cond_0
    const-string v1, "CustomizationReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowPrivacy allowCheckPrivacy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v0
.end method

.method public isAutoSetDevName()Z
    .locals 5

    .prologue
    .line 271
    const/4 v0, 0x1

    .line 272
    .local v0, isAuto:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Auto_Set_Device_Name"

    const-string v4, "Default"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const/4 v0, 0x0

    .line 275
    :cond_0
    return v0
.end method

.method public isBlockNoSIM()Z
    .locals 5

    .prologue
    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, isBlock:Z
    const-string v1, "yes"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Block_No_SIM"

    const-string v4, "Default"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_0
    return v0
.end method

.method public isDefaultDataSync()Z
    .locals 5

    .prologue
    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, dataSync:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Data_Sync_Config"

    const-string v4, "Default"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :cond_0
    return v0
.end method

.method public isDefaultMobileData()Z
    .locals 5

    .prologue
    .line 80
    const/4 v0, 0x1

    .line 81
    .local v0, mobileData:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Mobile_Data_Config"

    const-string v4, "Default"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :cond_0
    return v0
.end method

.method public isDefaultSyncData()Z
    .locals 5

    .prologue
    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, syncData:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Sync_Data_Config"

    const-string v4, "Default"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 92
    :cond_0
    return v0
.end method

.method public isSetHTCDefaullt()Z
    .locals 5

    .prologue
    .line 254
    const/4 v0, 0x1

    .line 255
    .local v0, setDefault:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Default_Home_Config"

    const-string v4, "Set_HTC_Home"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :cond_0
    return v0
.end method

.method public isShowStep(I)Z
    .locals 5
    .parameter "activityId"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_1

    .line 285
    const/4 v0, 0x1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 287
    :cond_1
    const/4 v0, 0x1

    .line 288
    .local v0, show:Z
    packed-switch p1, :pswitch_data_0

    .line 364
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Set_Language"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    const/4 v0, 0x0

    goto :goto_0

    .line 302
    :pswitch_2
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "SIP_Tutorial"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :pswitch_3
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Data_Sync"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :pswitch_4
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Wi-Fi"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 313
    const/4 v0, 0x0

    goto :goto_0

    .line 319
    :pswitch_5
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Mail_SocialNetwork_Setup"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :pswitch_6
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Account_Setup"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :pswitch_7
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Social_Network_Setup"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 331
    :pswitch_8
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Location_Consent"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 335
    :pswitch_9
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Tutorial"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 339
    :pswitch_a
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Internet_Connection"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 343
    :pswitch_b
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Sync_Data"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 344
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 347
    :pswitch_c
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Transfer_Data"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 351
    :pswitch_d
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "Htc_Account"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 355
    :pswitch_e
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "VZW_Backup_Assistant"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 360
    :pswitch_f
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Step_Config"

    const-string v4, "VZW_Location_Consent"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 288
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public isShowWifiSetting()Z
    .locals 5

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 115
    .local v0, isShowWifiSettingPage:Z
    const-string v1, "no"

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/CustomizationReader;->mBundle:Landroid/os/Bundle;

    const-string v3, "Wifi_Detected_Config"

    const-string v4, "Show_Wifi"

    invoke-direct {p0, v2, v3, v4}, Lcom/htc/android/htcsetupwizard/CustomizationReader;->getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :cond_0
    const-string v1, "CustomizationReader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowWifiSetting isShowWifiSettingPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v0
.end method
