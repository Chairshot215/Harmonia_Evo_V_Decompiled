.class public Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;
.super Ljava/lang/Object;
.source "LegacyDeviceConfigurationHelper.java"


# static fields
.field private static sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)V
    .locals 8
    .parameter "context"
    .parameter "deviceConfiguration"

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 92
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v5

    .line 96
    .local v5, systemAvailableFeatures:[Landroid/content/pm/FeatureInfo;
    if-eqz v5, :cond_1

    .line 97
    move-object v0, v5

    .local v0, arr$:[Landroid/content/pm/FeatureInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 98
    .local v1, feature:Landroid/content/pm/FeatureInfo;
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 99
    iget-object v6, v1, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 97
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0           #arr$:[Landroid/content/pm/FeatureInfo;
    .end local v1           #feature:Landroid/content/pm/FeatureInfo;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 109
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v7, "unknown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 110
    sget-object v6, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 112
    :cond_2
    return-void
.end method

.method public static declared-synchronized getDeviceConfiguration()Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    .locals 18

    .prologue
    .line 37
    const-class v16, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;

    monitor-enter v16

    :try_start_0
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    if-nez v15, :cond_5

    .line 38
    new-instance v15, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-direct {v15}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;-><init>()V

    sput-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v5

    .line 41
    .local v5, context:Landroid/content/Context;
    const-string v15, "activity"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 43
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v3

    .line 45
    .local v3, ci:Landroid/content/pm/ConfigurationInfo;
    invoke-static {v5}, Lcom/google/android/finsky/utils/VendingUtils;->getScreenDimensions(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v13

    .line 47
    .local v13, screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const-string v15, "window"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 48
    .local v14, wm:Landroid/view/WindowManager;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 49
    .local v12, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v15

    invoke-virtual {v15, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getTouchScreenId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getKeyboardConfigId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getNavigationId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v3, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v17

    iget-object v15, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v17

    iget-object v15, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    move-result-object v15

    iget v0, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 60
    sget-object v17, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    iget v15, v3, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v15, v15, 0x1

    if-lez v15, :cond_0

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 62
    sget-object v17, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    iget v15, v3, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    and-int/lit8 v15, v15, 0x2

    if-lez v15, :cond_1

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 65
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 66
    .local v4, config:Landroid/content/res/Configuration;
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    iget v0, v4, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getScreenLayoutSizeId(I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 68
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_2
    if-ge v8, v9, :cond_2

    aget-object v10, v2, v8

    .line 69
    .local v10, library:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v10}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 68
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 60
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v8           #i$:I
    .end local v9           #len$:I
    .end local v10           #library:Ljava/lang/String;
    :cond_0
    const/4 v15, 0x0

    goto :goto_0

    .line 62
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 72
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v8       #i$:I
    .restart local v9       #len$:I
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/finsky/FinskyApp;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    array-length v9, v2

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v9, :cond_3

    aget-object v11, v2, v8

    .line 73
    .local v11, locale:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v11}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 76
    .end local v11           #locale:Ljava/lang/String;
    :cond_3
    new-instance v7, Lcom/google/android/finsky/utils/GlExtensionReader;

    invoke-direct {v7}, Lcom/google/android/finsky/utils/GlExtensionReader;-><init>()V

    .line 77
    .local v7, extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    invoke-virtual {v7}, Lcom/google/android/finsky/utils/GlExtensionReader;->getGlExtensions()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    .local v6, extension:Ljava/lang/String;
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-virtual {v15, v6}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 37
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #ci:Landroid/content/pm/ConfigurationInfo;
    .end local v4           #config:Landroid/content/res/Configuration;
    .end local v6           #extension:Ljava/lang/String;
    .end local v7           #extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #len$:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v13           #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v14           #wm:Landroid/view/WindowManager;
    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    .line 82
    .restart local v1       #am:Landroid/app/ActivityManager;
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v3       #ci:Landroid/content/pm/ConfigurationInfo;
    .restart local v4       #config:Landroid/content/res/Configuration;
    .restart local v7       #extensionReader:Lcom/google/android/finsky/utils/GlExtensionReader;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #len$:I
    .restart local v12       #metrics:Landroid/util/DisplayMetrics;
    .restart local v13       #screenDimensions:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v14       #wm:Landroid/view/WindowManager;
    :cond_4
    :try_start_1
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;

    invoke-static {v5, v15}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->customizeDeviceConfiguration(Landroid/content/Context;Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)V

    .line 85
    :cond_5
    sget-object v15, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->sDeviceConfiguration:Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v16

    return-object v15
.end method

.method public static getHashCode(Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;)I
    .locals 3
    .parameter "deviceConfiguration"

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getTouchScreen()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->getHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 207
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getKeyboard()I

    move-result v2

    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNavigation()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenLayout()I

    move-result v2

    add-int v0, v1, v2

    .line 210
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenDensity()I

    move-result v2

    add-int v0, v1, v2

    .line 211
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenWidth()I

    move-result v2

    add-int v0, v1, v2

    .line 212
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getScreenHeight()I

    move-result v2

    add-int v0, v1, v2

    .line 213
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlEsVersion()I

    move-result v2

    add-int v0, v1, v2

    .line 215
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->hashRepeatedString(ILjava/util/List;)I

    move-result v0

    .line 216
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->hashRepeatedString(ILjava/util/List;)I

    move-result v0

    .line 217
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->hashRepeatedString(ILjava/util/List;)I

    move-result v0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->hashRepeatedString(ILjava/util/List;)I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/LegacyDeviceConfigurationHelper;->hashRepeatedString(ILjava/util/List;)I

    move-result v0

    .line 221
    return v0
.end method

.method private static getHashCode(Ljava/lang/Object;)I
    .locals 1
    .parameter "obj"

    .prologue
    .line 225
    if-nez p0, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static getKeyboardConfigId(I)I
    .locals 1
    .parameter "configValue"

    .prologue
    const/4 v0, 0x0

    .line 120
    packed-switch p0, :pswitch_data_0

    .line 131
    :goto_0
    :pswitch_0
    return v0

    .line 124
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 128
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getNavigationId(I)I
    .locals 1
    .parameter "navigationValue"

    .prologue
    .line 158
    packed-switch p0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 160
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 166
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getScreenLayoutSizeId(I)I
    .locals 2
    .parameter "screenLayoutSizeValue"

    .prologue
    .line 178
    and-int/lit8 v0, p0, 0xf

    .line 180
    .local v0, sizeBits:I
    packed-switch v0, :pswitch_data_0

    .line 191
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 182
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 184
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 186
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 188
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getTouchScreenId(I)I
    .locals 1
    .parameter "touchScreenValue"

    .prologue
    .line 140
    packed-switch p0, :pswitch_data_0

    .line 149
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 142
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 144
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static hashRepeatedString(ILjava/util/List;)I
    .locals 3
    .parameter "hash"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, strings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 201
    :cond_0
    return p0

    .line 198
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 199
    .local v1, str:Ljava/lang/String;
    if-nez v1, :cond_2

    const/4 v2, 0x7

    :goto_1
    mul-int/lit8 p0, v2, 0x1f

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1
.end method
