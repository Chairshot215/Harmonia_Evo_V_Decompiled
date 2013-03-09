.class public Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;
.super Landroid_maps_conflict_avoidance/com/google/common/Config;
.source "AndroidConfig.java"


# static fields
.field private static uiThread:Ljava/lang/Thread;


# instance fields
.field private final clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

.field protected connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

.field protected final context:Landroid/content/Context;

.field protected fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

.field protected imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

.field protected persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private final pixelsPerInch:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/common/Config;-><init>()V

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidClock;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sput-object v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->uiThread:Ljava/lang/Thread;

    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->setConfig(Landroid_maps_conflict_avoidance/com/google/common/Config;)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->init()V

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_COMMANDS:Z

    sput-boolean v1, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->USE_NATIVE_MENUS:Z

    const/4 v0, 0x4

    sput v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->KEY_BACK:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    :goto_0
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initPortabilityFields(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->initLocale(Ljava/util/Locale;)V

    return-void

    :cond_0
    const/16 v0, 0xa0

    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    goto :goto_0
.end method

.method private getSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "name=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initLocale(Ljava/util/Locale;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setSystemLocale(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getI18n()Landroid_maps_conflict_avoidance/com/google/common/I18n;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/I18n;->setUiLocale(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->clock:Landroid_maps_conflict_avoidance/com/google/common/Clock;

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/HttpConnectionFactory;
    .locals 1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionFactory()Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    return-object v0
.end method

.method protected getDistributionChannelInternal()Ljava/lang/String;
    .locals 5

    const-string v1, "Web"

    const-string v3, "maps_client_id"

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "client_id"

    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Web"

    :goto_0
    return-object v3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gmm-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public bridge synthetic getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    .locals 1

    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    move-result-object v0

    return-object v0
.end method

.method public getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    return-object v0
.end method

.method public getInflaterInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v0, p1, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    return-object v0
.end method

.method public getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;
    .locals 1

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    return-object v0
.end method

.method public getPixelsPerInch()I
    .locals 1

    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->pixelsPerInch:I

    return v0
.end method

.method protected initPortabilityFields(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/InMemoryPersistentStore;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    :goto_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->connectionFactory:Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidHttpConnectionFactory;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;

    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidFontFactory;-><init>()V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->fontFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/FontFactory;

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidAshmemImageFactory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->imageFactory:Landroid_maps_conflict_avoidance/com/google/common/graphics/android/AndroidImageFactory;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;

    invoke-direct {v0, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidFixedPersistentStore;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;

    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/android/AndroidPersistentStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;->persistentStore:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    goto :goto_0
.end method

.method protected setupGzipper()V
    .locals 1

    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;

    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig$1;-><init>(Landroid_maps_conflict_avoidance/com/google/common/android/AndroidConfig;)V

    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->setImplementation(Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper$GunzipInterface;)V

    return-void
.end method
