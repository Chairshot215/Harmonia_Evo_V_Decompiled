.class public final Lcom/htc/customize/storage/customize/HtcCustomizedLocale;
.super Ljava/lang/Object;
.source "HtcCustomizedLocale.java"


# static fields
.field private static final CATGORY_NAME:Ljava/lang/String; = "system"

.field private static final MODULE_NAME:Ljava/lang/String; = "locale"

.field private static final ORDERED_LOCALE_LIST:Ljava/lang/String; = "total_list"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLocalList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "system"

    const-string/jumbo v3, "locale"

    invoke-static {p0, v2, v3}, Lcom/htc/customize/storage/HtcCustomizedStorage;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/customize/storage/customize/HtcCustomizedData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getCustomizedData()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/htc/customize/storage/customize/HtcCustomizedLocale;->readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static readCustomizedLocaleList(Lcom/htc/customize/storage/customize/HtcCustomizedData;)[Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const-string/jumbo v8, "total_list"

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    :cond_0
    return-object v5

    :cond_1
    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    new-array v2, v8, [Z

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    array-length v8, v6

    if-ge v3, v8, :cond_3

    aget-object v8, v6, v3

    invoke-virtual {p0, v8}, Lcom/htc/customize/storage/customize/HtcCustomizedData;->getStringWithFunctionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "yes"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    aput-boolean v8, v2, v3

    add-int/lit8 v0, v0, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    aput-boolean v8, v2, v3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v3, v0

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_0

    aget-boolean v8, v2, v3

    if-eqz v8, :cond_4

    add-int/lit8 v1, v0, 0x1

    aget-object v8, v6, v3

    aput-object v8, v5, v0

    move v0, v1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static readDefaultLocaleList(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v0
.end method
