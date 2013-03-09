.class public Lcom/android/i18n/addressinput/AddressWidget;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressWidget$4;,
        Lcom/android/i18n/addressinput/AddressWidget$Listener;,
        Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;,
        Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;,
        Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
    }
.end annotation


# static fields
.field private static final ADMIN_ERROR_MESSAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADMIN_LABELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;


# instance fields
.field private mAdminLabel:Ljava/lang/String;

.field private mCacheData:Lcom/android/i18n/addressinput/CacheData;

.field private mContext:Landroid/content/Context;

.field private mCurrentRegion:Ljava/lang/String;

.field private mFormController:Lcom/android/i18n/addressinput/FormController;

.field private mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

.field private mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

.field final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputWidgets:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/android/i18n/addressinput/AddressUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

.field private mSavedErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

.field private mSpinners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUpdateMultipleFields:Ljava/lang/Runnable;

.field private mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

.field private mWidgetLocale:Ljava/lang/String;

.field private mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 103
    new-instance v0, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 117
    const-string v1, "area"

    const v2, 0x7f070009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "county"

    const v2, 0x7f07000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "department"

    const v2, 0x7f07000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "district"

    const v2, 0x7f070003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "do_si"

    const v2, 0x7f07000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "emirate"

    const v2, 0x7f07000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "island"

    const v2, 0x7f07000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "parish"

    const v2, 0x7f07000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "prefecture"

    const v2, 0x7f070010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "province"

    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "state"

    const v2, 0x7f070012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 131
    const-string v1, "area"

    const v2, 0x7f070019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v1, "county"

    const v2, 0x7f07001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "department"

    const v2, 0x7f07001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "district"

    const v2, 0x7f070016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "do_si"

    const v2, 0x7f07001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "emirate"

    const v2, 0x7f07001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "island"

    const v2, 0x7f07001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "parish"

    const v2, 0x7f07001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "prefecture"

    const v2, 0x7f070020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "province"

    const v2, 0x7f070021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "state"

    const v2, 0x7f070022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    .line 585
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 586
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    .line 588
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    .line 596
    invoke-virtual {p5}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 601
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    .line 602
    invoke-virtual {p0, p5}, Lcom/android/i18n/addressinput/AddressWidget;->renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 603
    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->updateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/i18n/addressinput/AddressWidget;)Lcom/android/i18n/addressinput/AddressWidget$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;

    return-object v0
.end method

.method private buildCountryListBox()V
    .locals 10

    .prologue
    .line 402
    new-instance v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 403
    .local v2, countryUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v8, 0x7f070001

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v0, countries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/i18n/addressinput/RegionData;>;"
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v8, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v8, v9}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/addressinput/RegionData;

    .line 407
    .local v5, regionData:Lcom/android/i18n/addressinput/RegionData;
    invoke-virtual {v5}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, regionKey:Ljava/lang/String;
    const-string v7, "ZZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 410
    invoke-direct {p0, v6}, Lcom/android/i18n/addressinput/AddressWidget;->getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, localCountryName:Ljava/lang/String;
    new-instance v7, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v7}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v1

    .line 413
    .local v1, country:Lcom/android/i18n/addressinput/RegionData;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 416
    .end local v1           #country:Lcom/android/i18n/addressinput/RegionData;
    .end local v4           #localCountryName:Ljava/lang/String;
    .end local v5           #regionData:Lcom/android/i18n/addressinput/RegionData;
    .end local v6           #regionKey:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 417
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    return-void
.end method

.method private buildFieldWidgets()V
    .locals 14

    .prologue
    .line 312
    new-instance v12, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    .line 313
    .local v4, data:Lcom/android/i18n/addressinput/AddressData;
    new-instance v12, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v13, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v12, v4}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v5

    .line 314
    .local v5, key:Lcom/android/i18n/addressinput/LookupKey;
    new-instance v12, Lcom/android/i18n/addressinput/ClientData;

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v3

    .line 318
    .local v3, countryNode:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    new-instance v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 319
    .local v2, adminAreaUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 320
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    new-instance v6, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 324
    .local v6, localityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070002

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 325
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    new-instance v11, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 329
    .local v11, subLocalityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070003

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 330
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    new-instance v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 334
    .local v0, addressLine1UI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070006

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 335
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 340
    .local v1, addressLine2UI:Lcom/android/i18n/addressinput/AddressUIComponent;
    const-string v12, ""

    invoke-virtual {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 341
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    new-instance v7, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 345
    .local v7, organizationUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070004

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 346
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance v9, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 350
    .local v9, recipientUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070005

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 351
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    new-instance v8, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 355
    .local v8, postalCodeUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 356
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v10, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 360
    .local v10, sortingCodeUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    const-string v12, "CEDEX"

    invoke-virtual {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 361
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method private createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V
    .locals 9
    .parameter "rootView"
    .parameter "field"
    .parameter "defaultKey"
    .parameter "readOnly"

    .prologue
    const/4 v6, 0x0

    .line 260
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, fieldText:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v7

    sget-object v8, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 265
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040003

    invoke-virtual {v7, v8, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 266
    .local v5, view:Landroid/view/View;
    invoke-virtual {p2, v5}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    move-object v0, v5

    .line 267
    check-cast v0, Landroid/widget/EditText;

    .line 268
    .local v0, editText:Landroid/widget/EditText;
    if-nez p4, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 269
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 270
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 272
    :cond_1
    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    .end local v0           #editText:Landroid/widget/EditText;
    .end local v5           #view:Landroid/view/View;
    :cond_2
    :goto_0
    return-void

    .line 273
    :cond_3
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v7

    sget-object v8, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 274
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040005

    invoke-virtual {v7, v8, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 275
    .restart local v5       #view:Landroid/view/View;
    invoke-virtual {p2, v5}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    move-object v3, v5

    .line 276
    check-cast v3, Landroid/widget/Spinner;

    .line 277
    .local v3, spinner:Landroid/widget/Spinner;
    invoke-virtual {p1, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v4, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getParentId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v7

    invoke-direct {v4, v3, v6, v7}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;-><init>(Landroid/widget/Spinner;Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)V

    .line 280
    .local v4, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v7, 0x1090008

    const v8, 0x1090009

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->initAdapter(Landroid/content/Context;II)V

    .line 282
    #getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v4}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$200(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/ArrayAdapter;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 283
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getCandidatesList()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v4, v6, p3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 286
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 288
    :cond_4
    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 289
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    .locals 3
    .parameter "view"

    .prologue
    .line 425
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    .line 426
    .local v1, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    #getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mView:Landroid/widget/Spinner;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$300(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/Spinner;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 430
    .end local v1           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .parameter "countryNode"

    .prologue
    .line 390
    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, adminLabelType:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    .line 392
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 393
    .local v1, result:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 395
    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 397
    :cond_0
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 892
    const-string v0, "US"

    .line 895
    .local v0, defaultRegionCode:Ljava/lang/String;
    if-nez p0, :cond_1

    .line 907
    .end local v0           #defaultRegionCode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 900
    .restart local v0       #defaultRegionCode:Ljava/lang/String;
    :cond_1
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, region:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move-object v0, v1

    .line 905
    goto :goto_0
.end method

.method private getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 827
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget$4;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 839
    const v0, 0x7f070014

    :goto_0
    return v0

    .line 829
    :pswitch_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 831
    :pswitch_1
    const v0, 0x7f070015

    goto :goto_0

    .line 833
    :pswitch_2
    const v0, 0x7f070016

    goto :goto_0

    .line 835
    :pswitch_3
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    if-ne v0, v1, :cond_0

    const v0, 0x7f070017

    goto :goto_0

    :cond_0
    const v0, 0x7f070018

    goto :goto_0

    .line 827
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "address"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 770
    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 421
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;
    .locals 6
    .parameter "parentField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 558
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 559
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3, v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>(Lcom/android/i18n/addressinput/AddressData;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 562
    :cond_0
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v2

    .line 566
    .local v2, parentKey:Lcom/android/i18n/addressinput/LookupKey;
    if-nez v2, :cond_1

    .line 567
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t build key with parent field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". One of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the ancestor fields might be empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 577
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    :goto_0
    return-object v1

    .line 575
    .end local v1           #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v1

    .restart local v1       #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    goto :goto_0
.end method

.method private getViewErrors()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 645
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 646
    .local v0, errors:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 648
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 649
    .local v4, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v4, :cond_0

    .line 652
    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    .line 653
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 656
    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_0

    .line 657
    check-cast v5, Landroid/widget/EditText;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    .line 658
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 659
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 663
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    :cond_1
    return-object v0
.end method

.method private getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .parameter "countryNode"

    .prologue
    .line 378
    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, zipType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 380
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 381
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, zipName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 383
    .end local v0           #zipName:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 384
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #zipName:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 4
    .parameter "context"
    .parameter "rootView"
    .parameter "formOptions"
    .parameter "cacheManager"

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    .line 688
    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    .line 689
    iput-object p3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    .line 690
    new-instance v0, Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v0, p4}, Lcom/android/i18n/addressinput/CacheData;-><init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    .line 691
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 692
    new-instance v0, Lcom/android/i18n/addressinput/FormController;

    new-instance v1, Lcom/android/i18n/addressinput/ClientData;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/addressinput/FormController;-><init>(Lcom/android/i18n/addressinput/ClientData;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    .line 695
    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    .line 696
    new-instance v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;

    new-instance v1, Lcom/android/i18n/addressinput/FieldVerifier;

    new-instance v2, Lcom/android/i18n/addressinput/ClientData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v2, v3}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/DataSource;)V

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    .line 698
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildCountryListBox()V

    .line 700
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v3}, Lcom/android/i18n/addressinput/FormOptions;->isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/i18n/addressinput/AddressWidget;->createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V

    .line 704
    :cond_0
    return-void
.end method

.method private initializeDropDowns()V
    .locals 6

    .prologue
    .line 365
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 366
    .local v1, adminAreaUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, adminAreaList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    invoke-virtual {v1, v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 369
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 370
    .local v3, localityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v2

    .line 371
    .local v2, localityList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 372
    return-void
.end method

.method private initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 9
    .parameter "savedAddress"

    .prologue
    .line 611
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 613
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 614
    .local v3, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v3, :cond_0

    .line 617
    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 619
    const-string v4, ""

    .line 621
    :cond_1
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    .line 622
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 625
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_2

    .line 626
    invoke-direct {p0, v5}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v2

    .line 627
    .local v2, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-eqz v2, :cond_0

    .line 630
    invoke-virtual {v2, v4}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    .end local v2           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :cond_2
    check-cast v5, Landroid/widget/EditText;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 635
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "regionCode"

    .prologue
    .line 882
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutAddressFields()V
    .locals 6

    .prologue
    .line 462
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 464
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    const-string v4, ""

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v5, v0}, Lcom/android/i18n/addressinput/FormOptions;->isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/i18n/addressinput/AddressWidget;->createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V

    goto :goto_0

    .line 468
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_1
    return-void
.end method

.method private removePreviousViews()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 447
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 451
    .local v0, childCount:I
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 452
    if-lez v0, :cond_0

    .line 453
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 455
    :cond_2
    if-le v0, v3, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    goto :goto_0
.end method

.method private setViewErrors(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 667
    .local p1, errors:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 668
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 669
    .local v3, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v3, :cond_0

    .line 672
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v4

    .line 673
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 676
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v5, v6, :cond_0

    .line 677
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 678
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 679
    check-cast v4, Landroid/widget/EditText;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 683
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    :cond_1
    return-void
.end method

.method private setWidgetLocaleAndScript()V
    .locals 2

    .prologue
    .line 545
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->getWidgetCompatibleLanguageCode(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setLanguageCode(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :goto_0
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 550
    return-void

    .line 547
    :cond_0
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_0
.end method

.method private updateChildNodes(Landroid/widget/AdapterView;I)V
    .locals 6
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v2

    .line 472
    .local v2, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-nez v2, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    #getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v2}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$400(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .line 478
    .local v0, myId:Lcom/android/i18n/addressinput/AddressField;
    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v3, :cond_0

    .line 485
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->getRegionCode(I)Ljava/lang/String;

    move-result-object v1

    .line 486
    .local v1, regionCode:Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v3, :cond_3

    .line 487
    invoke-virtual {p0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :cond_3
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    new-instance v5, Lcom/android/i18n/addressinput/AddressWidget$2;

    invoke-direct {v5, p0, v0}, Lcom/android/i18n/addressinput/AddressWidget$2;-><init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0
.end method

.method private updateFields()V
    .locals 1

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->removePreviousViews()V

    .line 435
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildFieldWidgets()V

    .line 436
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeDropDowns()V

    .line 437
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->layoutAddressFields()V

    .line 438
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    .line 444
    :cond_1
    return-void
.end method

.method private updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V
    .locals 4
    .parameter "myId"

    .prologue
    .line 514
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    .line 515
    .local v1, child:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    #getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 516
    #getter for: Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->mParentId:Lcom/android/i18n/addressinput/AddressField;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    .line 517
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    .end local v1           #child:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearErrorMessage()V
    .locals 7

    .prologue
    .line 847
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 849
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v4, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 851
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v4, v5, :cond_0

    .line 852
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 853
    .local v3, view:Landroid/widget/EditText;
    if-eqz v3, :cond_0

    .line 854
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 858
    .end local v0           #addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #view:Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method public displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/widget/TextView;
    .locals 5
    .parameter "field"

    .prologue
    .line 816
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 817
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v3, v4, :cond_0

    .line 818
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I

    move-result v1

    .line 819
    .local v1, errorMessageId:I
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 820
    .local v2, view:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 823
    .end local v1           #errorMessageId:I
    .end local v2           #view:Landroid/widget/EditText;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAddressData()Lcom/android/i18n/addressinput/AddressData;
    .locals 10

    .prologue
    .line 719
    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    .line 720
    .local v1, builder:Lcom/android/i18n/addressinput/AddressData$Builder;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 721
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v9, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressField;

    .line 723
    .local v2, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v7, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 724
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    .line 727
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 728
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v7

    sget-object v8, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v7, v8, :cond_1

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v6

    .line 731
    .local v6, view:Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v4

    .line 732
    .local v4, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-eqz v4, :cond_1

    .line 733
    invoke-virtual {v4, v5}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->getRegionDataKeyForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 736
    .end local v4           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    .end local v6           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v2, v5}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    goto :goto_0

    .line 738
    .end local v0           #addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v2           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 739
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v7

    return-object v7
.end method

.method public getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;
    .locals 4

    .prologue
    .line 778
    new-instance v1, Lcom/android/i18n/addressinput/AddressProblems;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressProblems;-><init>()V

    .line 779
    .local v1, problems:Lcom/android/i18n/addressinput/AddressProblems;
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 780
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    invoke-virtual {v2, v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    .line 784
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/FormOptions;->getHiddenFields()Ljava/util/EnumSet;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 789
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v2, v3}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressProblems;->getProblem(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/AddressProblemType;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressProblemType;->MISSING_REQUIRED_FIELD:Lcom/android/i18n/addressinput/AddressProblemType;

    if-eq v2, v3, :cond_0

    .line 792
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressProblems;->getProblems()Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    :cond_0
    return-object v1
.end method

.method public getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;
    .locals 2
    .parameter "field"

    .prologue
    .line 861
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 862
    .local v0, component:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-nez v0, :cond_0

    .line 863
    const/4 v1, 0x0

    .line 865
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 874
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1, p3}, Lcom/android/i18n/addressinput/AddressWidget;->updateChildNodes(Landroid/widget/AdapterView;I)V

    .line 875
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public renderForm()V
    .locals 3

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->setWidgetLocaleAndScript()V

    .line 524
    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 526
    .local v0, data:Lcom/android/i18n/addressinput/AddressData;
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v2, Lcom/android/i18n/addressinput/AddressWidget$3;

    invoke-direct {v2, p0}, Lcom/android/i18n/addressinput/AddressWidget$3;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 542
    return-void
.end method

.method public renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 0
    .parameter "savedAddress"

    .prologue
    .line 606
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    .line 607
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    .line 608
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 927
    const-string v0, "address_data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressData;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    .line 928
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 931
    const-string v0, "address_error_fields"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 932
    const-string v0, "address_error_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 933
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 934
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 935
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 936
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 937
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 938
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v6

    aget-object v5, v6, v5

    .line 939
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 941
    :cond_0
    iput-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    .line 942
    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    .line 944
    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 912
    const-string v0, "address_data"

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 915
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewErrors()Ljava/util/Map;

    move-result-object v1

    .line 916
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 918
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 919
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 922
    :cond_0
    const-string v0, "address_error_fields"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 923
    const-string v0, "address_error_values"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 924
    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 301
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v2}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 302
    .local v0, addressField:Lcom/android/i18n/addressinput/AddressUIComponent;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 306
    .end local v0           #addressField:Lcom/android/i18n/addressinput/AddressUIComponent;
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/i18n/addressinput/AddressWidget$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mListener:Lcom/android/i18n/addressinput/AddressWidget$Listener;

    .line 295
    return-void
.end method

.method public updateWidgetOnCountryChange(Ljava/lang/String;)V
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 508
    :cond_0
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setCurrentCountry(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    goto :goto_0
.end method
