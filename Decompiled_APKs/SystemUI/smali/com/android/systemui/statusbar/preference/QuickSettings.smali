.class public Lcom/android/systemui/statusbar/preference/QuickSettings;
.super Landroid/widget/LinearLayout;
.source "QuickSettings.java"


# static fields
.field static final HTC_DEBUG:Z = false

.field private static final SETTINGS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/systemui/statusbar/preference/StatusBarPreference;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final SETTINGS_LOADED:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/preference/StatusBarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private static final SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams; = null

.field static final TAG:Ljava/lang/String; = "QuickSettings"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mScrollList:Landroid/widget/LinearLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

.field private mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

.field private mStart:Z

.field private mStyleable:Lcom/android/systemui/statusbar/StatusBarStyleable;

.field mbla:Lcom/android/systemui/statusbar/StatusBarFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Wifi"

    const-class v2, Lcom/android/systemui/statusbar/preference/Wifi;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Bluetooth"

    const-class v2, Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "GPS"

    const-class v2, Lcom/android/systemui/statusbar/preference/GPS;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Airplane"

    const-class v2, Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Brightness"

    const-class v2, Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Flashlight"

    const-class v2, Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "HotSpot"

    const-class v2, Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "MobileNetwork"

    const-class v2, Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Rotation"

    const-class v2, Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "ScreenOn"

    const-class v2, Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Settings"

    const-class v2, Lcom/android/systemui/statusbar/preference/Settings;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "SilentMode"

    const-class v2, Lcom/android/systemui/statusbar/preference/SilentMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "TaskManager"

    const-class v2, Lcom/android/systemui/statusbar/preference/TaskManager;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "VibrationMode"

    const-class v2, Lcom/android/systemui/statusbar/preference/VibrationMode;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "Volume"

    const-class v2, Lcom/android/systemui/statusbar/preference/Volume;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "AutoSync"

    const-class v2, Lcom/android/systemui/statusbar/preference/AutoSync;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "PowerSaver"

    const-class v2, Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "ADB"

    const-class v2, Lcom/android/systemui/statusbar/preference/Adb;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    const-string v1, "WiMAX"

    const-class v2, Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS_LOADED:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    const/16 v2, 0x11

    new-array v0, v2, [Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->init()V

    return-void
.end method

.method private init()V
    .locals 0

    return-void
.end method


# virtual methods
.method public loadSettings()V
    .locals 24

    const-string v19, "loadSettings"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    const-string v19, "loadSettings: not start"

    :cond_0
    const-string v21, "QuickSettings"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "tweaks_quicksettings"

    invoke-static/range {v21 .. v22}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const v21, 0x7f0e002b

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ScrollView;

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    const-string v22, "tweaks_wifi_config"

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-nez v19, :cond_2

    const-string v19, "TaskManager|Volume|Brightness|ScreenOn|Flashlight|Rotation|Airplane|WiMAX|Wifi|MobileNetwork|HotSpot|AutoSync|Bluetooth|GPS|PowerSaver|SilentMode|VibrationMode|ADB|Settings"

    :cond_2
    const-string v21, "\\|"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v9, v6

    new-array v5, v9, [Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    if-lt v0, v9, :cond_3

    return-void

    :cond_3
    aget-object v20, v6, v18

    sget-object v21, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v3, v0, [Ljava/lang/Class;

    const/16 v21, 0x0

    const-class v22, Landroid/content/Context;

    aput-object v22, v3, v21

    const/16 v21, 0x1

    const-class v22, Landroid/view/View;

    aput-object v22, v3, v21

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v10, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v21, v0

    const v22, 0x7f03001c

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/preference/PreferenceView;

    sget-object v13, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTING_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/Object;

    const/16 v21, 0x0

    aput-object v12, v4, v21

    const/16 v21, 0x1

    aput-object v16, v4, v21

    const/16 v17, 0x0

    :try_start_1
    invoke-virtual {v11, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    move-object/from16 v17, v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    move-object/from16 v21, v0

    aput-object v17, v21, v18

    sget-object v21, Lcom/android/systemui/statusbar/preference/QuickSettings;->SETTINGS_LOADED:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    :catch_4
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0e002b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    const v0, 0x7f0e002c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollList:Landroid/widget/LinearLayout;

    const v0, 0x7f0e002d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    iput-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->loadSettings()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/QuickSettings;->updateResources()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v1, "QuickSettings"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->onStart()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-nez v1, :cond_3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStart()V

    goto :goto_2
.end method

.method public onStop()V
    .locals 3

    const-string v1, "QuickSettings"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->onStop()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    :cond_1
    :goto_1
    const-string v1, "QuickSettings"

    const-string v2, "onStop: not start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mStart:Z

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-nez v1, :cond_4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->onStop()V

    goto :goto_2
.end method

.method public scrollToZero()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->setService(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto :goto_1
.end method

.method public updateResources()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingsConfig:Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/QuickSettingsConfig;->updateResources()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/QuickSettings;->mSettingItems:[Lcom/android/systemui/statusbar/preference/StatusBarPreference;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->updateResources()V

    goto :goto_1
.end method
