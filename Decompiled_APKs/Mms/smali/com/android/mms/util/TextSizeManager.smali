.class public Lcom/android/mms/util/TextSizeManager;
.super Ljava/lang/Object;
.source "TextSizeManager.java"


# static fields
.field private static final PINCH_LARGEST_RATIO:F = 1.3f

.field private static final PINCH_SMALLEST_RATIO:F = 0.8f

.field private static PREFERENCE_KEY:Ljava/lang/String; = null

.field private static PREFERENCE_KEY_CVS:Ljava/lang/String; = null

.field private static PREFERENCE_KEY_PINCH:Ljava/lang/String; = null

.field private static PREFERENCE_KEY_SYS:Ljava/lang/String; = null

.field public static final TEXT_SIZE_INTERVAL:I = 0x2

.field private static TEXT_SIZE_IN_SP_LARGER:I = 0x0

.field private static TEXT_SIZE_IN_SP_LARGEST:I = 0x0

.field private static TEXT_SIZE_IN_SP_MEDIUM:I = 0x0

.field private static TEXT_SIZE_IN_SP_SMALLER:I = 0x0

.field private static TEXT_SIZE_IN_SP_SMALLEST:I = 0x0

.field private static TEXT_SIZE_IN_SP_SYSTEM:I = 0x0

.field public static final TEXT_SIZE_LARGER:I = 0x3

.field public static final TEXT_SIZE_LARGEST:I = 0x4

.field public static final TEXT_SIZE_MEDIUM:I = 0x2

.field private static final TEXT_SIZE_PINCH_INTERVAL:I = 0x2

.field public static final TEXT_SIZE_PINCH_LEVEL_RESET:I = 0x0

.field public static final TEXT_SIZE_SMALLER:I = 0x1

.field public static final TEXT_SIZE_SMALLEST:I = 0x0

.field public static final TEXT_SIZE_SYSTEM:I = 0x5

.field private static sInstance:Lcom/android/mms/util/TextSizeManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEditorFontSize:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsForRead:Landroid/content/SharedPreferences;

.field private mSysFontSize:I

.field private mTextLevel:I

.field private mTextLevelPinch:I

.field private mTextLevel_CVS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x1c

    .line 35
    const/16 v0, 0x10

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    .line 36
    const/16 v0, 0x14

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 37
    const/16 v0, 0x18

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 38
    sput v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    .line 39
    const/16 v0, 0x20

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    .line 40
    sput v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    .line 49
    const-string v0, "pref_key_text_size"

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    .line 50
    const-string v0, "pref_key_text_size_conversation"

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_CVS:Ljava/lang/String;

    .line 51
    const-string v0, "pref_key_text_size_pinch"

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_PINCH:Ljava/lang/String;

    .line 52
    const-string v0, "pref_key_text_size_system"

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_SYS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, -0x1

    .line 121
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput v1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    .line 61
    iput v1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel_CVS:I

    .line 62
    const/16 v0, -0x64

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    .line 63
    iput v1, p0, Lcom/android/mms/util/TextSizeManager;->mSysFontSize:I

    .line 64
    iput v1, p0, Lcom/android/mms/util/TextSizeManager;->mEditorFontSize:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mContext:Landroid/content/Context;

    .line 122
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 123
    const-string v0, "text_size"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefsForRead:Landroid/content/SharedPreferences;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/TextSizeManager;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_CVS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_SYS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_PINCH:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/mms/util/TextSizeManager;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 68
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    if-nez v0, :cond_2

    .line 69
    new-instance v0, Lcom/android/mms/util/TextSizeManager;

    invoke-direct {v0, p0}, Lcom/android/mms/util/TextSizeManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    .line 72
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    iput-object p0, v0, Lcom/android/mms/util/TextSizeManager;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSystemTextSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    .line 76
    sget-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    invoke-virtual {v0, v1}, Lcom/android/mms/util/TextSizeManager;->setSystemFontSize(I)V

    .line 80
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLargeFontSize()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0119

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b011d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    .line 98
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportChineseFontSizeEnlarged()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    :cond_1
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    .line 101
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 102
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 103
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    .line 104
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    .line 106
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSystemTextSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 107
    sget v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    .line 112
    :cond_2
    return-void

    .line 89
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    goto/16 :goto_0
.end method

.method public static reset(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 288
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/util/TextSizeManager;->sInstance:Lcom/android/mms/util/TextSizeManager;

    .line 289
    invoke-static {p0}, Lcom/android/mms/util/TextSizeManager;->init(Landroid/content/Context;)V

    .line 290
    return-void
.end method


# virtual methods
.method public getEditorFontSizeForIME()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 280
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mEditorFontSize:I

    if-ne v0, v2, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefsForRead:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mEditorFontSize:I

    .line 282
    :cond_0
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mEditorFontSize:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/util/TextSizeManager;->getFontSize(Z)I

    move-result v0

    return v0
.end method

.method public getFontSize(Z)I
    .locals 4
    .parameter "isNeedAddPinch"

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/android/mms/util/TextSizeManager;->getTextLevel()I

    move-result v0

    .line 203
    .local v0, level:I
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 204
    .local v1, size:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLargeFontSize()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 205
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 207
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 235
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportMultiTouchTextSizeChange()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/android/mms/util/TextSizeManager;->getPinchLevel()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 238
    :cond_2
    return v1

    .line 209
    :pswitch_0
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    .line 210
    goto :goto_0

    .line 212
    :pswitch_1
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    .line 213
    goto :goto_0

    .line 215
    :pswitch_2
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    .line 216
    goto :goto_0

    .line 218
    :pswitch_3
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    .line 219
    goto :goto_0

    .line 221
    :pswitch_4
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    .line 222
    goto :goto_0

    .line 225
    :pswitch_5
    iget-object v2, p0, Lcom/android/mms/util/TextSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 226
    sget v2, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    if-eq v2, v1, :cond_1

    .line 227
    sput v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SYSTEM:I

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/mms/util/TextSizeManager;->setSystemFontSize(I)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public getFontSize_CVS()I
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/mms/util/TextSizeManager;->getTextLevel_CVS()I

    move-result v0

    .line 244
    .local v0, level:I
    packed-switch v0, :pswitch_data_0

    .line 255
    :pswitch_0
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_MEDIUM:I

    :goto_0
    return v1

    .line 246
    :pswitch_1
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLER:I

    goto :goto_0

    .line 248
    :pswitch_2
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_SMALLEST:I

    goto :goto_0

    .line 250
    :pswitch_3
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGER:I

    goto :goto_0

    .line 252
    :pswitch_4
    sget v1, Lcom/android/mms/util/TextSizeManager;->TEXT_SIZE_IN_SP_LARGEST:I

    goto :goto_0

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getPinchLargestLevel()I
    .locals 4

    .prologue
    .line 317
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/util/TextSizeManager;->getFontSize(Z)I

    move-result v1

    .line 318
    .local v1, size:I
    int-to-float v2, v1

    const v3, 0x3e999998

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    add-float v0, v2, v3

    .line 319
    .local v0, level:F
    float-to-int v2, v0

    return v2
.end method

.method public getPinchLevel()I
    .locals 3

    .prologue
    .line 310
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_PINCH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    .line 313
    :cond_0
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    return v0
.end method

.method public getPinchSmallestLevel()I
    .locals 4

    .prologue
    .line 323
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/mms/util/TextSizeManager;->getFontSize(Z)I

    move-result v1

    .line 324
    .local v1, size:I
    int-to-float v2, v1

    const v3, -0x41b33334

    mul-float/2addr v2, v3

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    const/high16 v3, 0x3f00

    sub-float v0, v2, v3

    .line 325
    .local v0, level:F
    float-to-int v2, v0

    return v2
.end method

.method public getSystemFontSize()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 272
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mSysFontSize:I

    if-ne v0, v2, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_SYS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mSysFontSize:I

    .line 274
    :cond_0
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mSysFontSize:I

    return v0
.end method

.method public getTextLevel()I
    .locals 3

    .prologue
    .line 179
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSystemTextSize()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    .line 188
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    return v0

    .line 183
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLargeFontSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    goto :goto_0
.end method

.method public getTextLevelSpace()I
    .locals 5

    .prologue
    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, space:I
    const/4 v0, 0x0

    .line 262
    .local v0, primary:I
    const/4 v1, 0x0

    .line 263
    .local v1, secondary:I
    iget-object v3, p0, Lcom/android/mms/util/TextSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 264
    iget-object v3, p0, Lcom/android/mms/util/TextSizeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 265
    sub-int v2, v0, v1

    .line 267
    return v2
.end method

.method public getTextLevel_CVS()I
    .locals 3

    .prologue
    .line 192
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel_CVS:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/mms/util/TextSizeManager;->mPrefs:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY_CVS:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel_CVS:I

    .line 195
    :cond_0
    iget v0, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel_CVS:I

    return v0
.end method

.method public setEditorFontSizeForIME(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 171
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mEditorFontSize:I

    .line 172
    iget-object v1, p0, Lcom/android/mms/util/TextSizeManager;->mPrefsForRead:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/android/mms/util/TextSizeManager;->PREFERENCE_KEY:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method

.method public setMotionPinchLevel(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 295
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    .line 296
    return-void
.end method

.method public setPinchLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevelPinch:I

    .line 300
    new-instance v0, Lcom/android/mms/util/TextSizeManager$4;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/TextSizeManager$4;-><init>(Lcom/android/mms/util/TextSizeManager;I)V

    invoke-virtual {v0}, Lcom/android/mms/util/TextSizeManager$4;->start()V

    .line 307
    return-void
.end method

.method public setSystemFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 158
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mSysFontSize:I

    .line 159
    new-instance v0, Lcom/android/mms/util/TextSizeManager$3;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/TextSizeManager$3;-><init>(Lcom/android/mms/util/TextSizeManager;I)V

    invoke-virtual {v0}, Lcom/android/mms/util/TextSizeManager$3;->start()V

    .line 166
    return-void
.end method

.method public setTextLevel(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel:I

    .line 136
    new-instance v0, Lcom/android/mms/util/TextSizeManager$1;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/TextSizeManager$1;-><init>(Lcom/android/mms/util/TextSizeManager;I)V

    invoke-virtual {v0}, Lcom/android/mms/util/TextSizeManager$1;->start()V

    .line 143
    return-void
.end method

.method public setTextLevel_CVS(I)V
    .locals 1
    .parameter "level"

    .prologue
    .line 146
    iput p1, p0, Lcom/android/mms/util/TextSizeManager;->mTextLevel_CVS:I

    .line 147
    new-instance v0, Lcom/android/mms/util/TextSizeManager$2;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/util/TextSizeManager$2;-><init>(Lcom/android/mms/util/TextSizeManager;I)V

    invoke-virtual {v0}, Lcom/android/mms/util/TextSizeManager$2;->start()V

    .line 154
    return-void
.end method
