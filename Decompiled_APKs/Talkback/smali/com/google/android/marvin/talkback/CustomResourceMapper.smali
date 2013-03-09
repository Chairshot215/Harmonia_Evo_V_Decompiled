.class public Lcom/google/android/marvin/talkback/CustomResourceMapper;
.super Ljava/lang/Object;
.source "CustomResourceMapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCustomResourceMap:Ljava/util/Map;
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

.field private final mDefaultResourceMap:Landroid/util/SparseIntArray;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mResolvedValue:Landroid/util/TypedValue;

.field private final mResources:Landroid/content/res/Resources;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mDefaultResourceMap:Landroid/util/SparseIntArray;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mCustomResourceMap:Ljava/util/Map;

    .line 46
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResolvedValue:Landroid/util/TypedValue;

    .line 124
    new-instance v0, Lcom/google/android/marvin/talkback/CustomResourceMapper$1;

    invoke-direct {v0, p0}, Lcom/google/android/marvin/talkback/CustomResourceMapper$1;-><init>(Lcom/google/android/marvin/talkback/CustomResourceMapper;)V

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 63
    iput-object p1, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResources:Landroid/content/res/Resources;

    .line 65
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 66
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 68
    invoke-direct {p0}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefaults()V

    .line 69
    return-void
.end method

.method static synthetic access$0(Lcom/google/android/marvin/talkback/CustomResourceMapper;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mCustomResourceMap:Ljava/util/Map;

    return-object v0
.end method

.method private loadDefault(II)V
    .locals 3
    .parameter "keyResId"
    .parameter "defaultResId"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResolvedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 95
    iget-object v0, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mDefaultResourceMap:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResolvedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 96
    return-void
.end method

.method private loadDefaults()V
    .locals 2

    .prologue
    .line 73
    const/high16 v0, 0x7f0a

    const v1, 0x7f050015

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 74
    const v0, 0x7f0a0001

    const v1, 0x7f050016

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 75
    const v0, 0x7f0a0002

    const v1, 0x7f050017

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 76
    const v0, 0x7f0a0003

    const v1, 0x7f050018

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 77
    const v0, 0x7f0a0004

    const v1, 0x7f050019

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 78
    const v0, 0x7f0a0005

    const v1, 0x7f05001a

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 79
    const v0, 0x7f0a0006

    const v1, 0x7f05001b

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 80
    const v0, 0x7f0a0007

    const v1, 0x7f05001c

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 81
    const v0, 0x7f0a0008

    const v1, 0x7f05001d

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 84
    const v0, 0x7f0a0009

    const v1, 0x7f060010

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 85
    const v0, 0x7f0a000a

    const v1, 0x7f060011

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 86
    const v0, 0x7f0a000b

    const v1, 0x7f060012

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 87
    const v0, 0x7f0a000c

    const v1, 0x7f060013

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 88
    const v0, 0x7f0a000d

    const v1, 0x7f060014

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 89
    const v0, 0x7f0a000e

    const v1, 0x7f060015

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 90
    const v0, 0x7f0a000f

    const v1, 0x7f060016

    invoke-direct {p0, v0, v1}, Lcom/google/android/marvin/talkback/CustomResourceMapper;->loadDefault(II)V

    .line 91
    return-void
.end method


# virtual methods
.method public getResourceIdForPreference(I)I
    .locals 8
    .parameter "keyResId"

    .prologue
    const/4 v7, 0x0

    .line 100
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mCustomResourceMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 102
    .local v3, resId:Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 103
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 108
    .local v4, resName:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 109
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mResources:Landroid/content/res/Resources;

    iget-object v6, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, customId:I
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mCustomResourceMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 115
    .end local v0           #customId:I
    :cond_1
    iget-object v5, p0, Lcom/google/android/marvin/talkback/CustomResourceMapper;->mDefaultResourceMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 116
    .local v1, defaultResId:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 120
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
