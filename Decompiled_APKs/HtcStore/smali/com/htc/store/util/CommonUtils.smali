.class public Lcom/htc/store/util/CommonUtils;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/htc/store/util/CommonUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDetailButtonCenterDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 265
    const v6, 0x10100a7

    .line 266
    .local v6, statePressed:I
    const v5, 0x101009c

    .line 267
    .local v5, stateFocused:I
    const-string v7, "common_detail_btn_center_pressed"

    const v8, 0x20807d8

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 268
    .local v3, resPressed:I
    const-string v7, "common_detail_btn_center_selected"

    const v8, 0x20807da

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, resFocused:I
    const-string v7, "common_detail_btn_center_rest"

    const v8, 0x20807d9

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 271
    .local v4, resRest:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 272
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 273
    .local v0, drawable:Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v10, [I

    aput v6, v7, v9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 274
    new-array v7, v10, [I

    aput v5, v7, v9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 275
    const/4 v7, 0x2

    new-array v7, v7, [I

    neg-int v8, v6

    aput v8, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 276
    return-object v0
.end method

.method public static getDetailButtonLeftDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 235
    const v6, 0x10100a7

    .line 236
    .local v6, statePressed:I
    const v5, 0x101009c

    .line 237
    .local v5, stateFocused:I
    const-string v7, "common_detail_btn_left_pressed"

    const v8, 0x20807db

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 238
    .local v3, resPressed:I
    const-string v7, "common_detail_btn_left_selected"

    const v8, 0x20807dd

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 239
    .local v2, resFocused:I
    const-string v7, "common_detail_btn_left_rest"

    const v8, 0x20807dc

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 241
    .local v4, resRest:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 242
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 243
    .local v0, drawable:Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v10, [I

    aput v6, v7, v9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 244
    new-array v7, v10, [I

    aput v5, v7, v9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 245
    const/4 v7, 0x2

    new-array v7, v7, [I

    neg-int v8, v6

    aput v8, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 246
    return-object v0
.end method

.method public static getDetailButtonRightDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 250
    const v6, 0x10100a7

    .line 251
    .local v6, statePressed:I
    const v5, 0x101009c

    .line 252
    .local v5, stateFocused:I
    const-string v7, "common_detail_btn_right_pressed"

    const v8, 0x20807e0

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 253
    .local v3, resPressed:I
    const-string v7, "common_detail_btn_right_selected"

    const v8, 0x20807e2

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 254
    .local v2, resFocused:I
    const-string v7, "common_detail_btn_right_rest"

    const v8, 0x20807e1

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 256
    .local v4, resRest:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 257
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 258
    .local v0, drawable:Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v10, [I

    aput v6, v7, v9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 259
    new-array v7, v10, [I

    aput v5, v7, v9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 260
    const/4 v7, 0x2

    new-array v7, v7, [I

    neg-int v8, v6

    aput v8, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 261
    return-object v0
.end method

.method public static getDetailButtonSingleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 280
    const v6, 0x10100a7

    .line 281
    .local v6, statePressed:I
    const v5, 0x101009c

    .line 282
    .local v5, stateFocused:I
    const-string v7, "common_detail_btn_pressed"

    const v8, 0x20807de

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 283
    .local v3, resPressed:I
    const-string v7, "common_detail_btn_selected"

    const v8, 0x20807e3

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 284
    .local v2, resFocused:I
    const-string v7, "common_detail_btn_rest"

    const v8, 0x20807df

    invoke-static {p0, v7, v8}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 286
    .local v4, resRest:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 287
    .local v1, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 288
    .local v0, drawable:Landroid/graphics/drawable/StateListDrawable;
    new-array v7, v10, [I

    aput v6, v7, v9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 289
    new-array v7, v10, [I

    aput v5, v7, v9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 290
    const/4 v7, 0x2

    new-array v7, v7, [I

    neg-int v8, v6

    aput v8, v7, v9

    neg-int v8, v5

    aput v8, v7, v10

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 291
    return-object v0
.end method

.method public static getDisplayedStringMatchAll(Ljava/lang/String;Ljava/lang/CharSequence;II)Landroid/text/SpannableString;
    .locals 8
    .parameter "target"
    .parameter "keyword"
    .parameter "foregroundColor"
    .parameter "backgroundColor"

    .prologue
    const/16 v7, 0x21

    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, targetLowerCase:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, keywordLowerCase:Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 41
    .local v3, length:I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .local v0, displayedString:Landroid/text/SpannableString;
    const/4 v1, -0x1

    .line 43
    .local v1, index:I
    :goto_0
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, -0x1

    if-le v1, v5, :cond_0

    .line 44
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    invoke-virtual {v0, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 46
    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v5, p3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    add-int v6, v3, v1

    invoke-virtual {v0, v5, v1, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public static getPriceString(Landroid/content/Context;F)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "cost"

    .prologue
    .line 101
    new-instance v0, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v0, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0, p1}, Lcom/htc/store/util/CommonUtils;->getPriceString(Landroid/content/Context;Lcom/htc/store/module/PreferenceManager;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPriceString(Landroid/content/Context;Lcom/htc/store/module/PreferenceManager;F)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "prefManager"
    .parameter "price"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, result:Ljava/lang/String;
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/store/module/PreferenceManager;->getCurrencyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/store/util/HSConstants;->DEFAULT_DECIMAL_FORMAT:Ljava/text/DecimalFormat;

    float-to-double v3, p2

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/htc/store/module/PreferenceManager;->getCurrencySuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    :goto_0
    return-object v0

    .line 109
    :cond_0
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSize(Ljava/lang/String;)I
    .locals 3
    .parameter "s"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, result:I
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, number:I
    const-string v2, "KB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    mul-int/lit16 v1, v0, 0x400

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 119
    :cond_1
    const-string v2, "MB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    mul-int/lit16 v2, v0, 0x400

    mul-int/lit16 v1, v2, 0x400

    goto :goto_0
.end method

.method public static getWindowBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/htc/util/res/HtcResUtil;->getBlurWallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v5, 0x0

    .line 89
    const/4 v2, 0x1

    .line 90
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 92
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    return v2

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    const/4 v5, 0x1

    const-string v6, " is not installed"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLocaleChanged(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 216
    const/4 v4, 0x0

    .line 217
    .local v4, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 218
    .local v1, locale:Ljava/util/Locale;
    new-instance v3, Lcom/htc/store/module/PreferenceManager;

    invoke-direct {v3, p0}, Lcom/htc/store/module/PreferenceManager;-><init>(Landroid/content/Context;)V

    .line 219
    .local v3, pManager:Lcom/htc/store/module/PreferenceManager;
    invoke-virtual {v3}, Lcom/htc/store/module/PreferenceManager;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, lastLocale:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, newLocale:Ljava/lang/String;
    sget-object v5, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "lastLocale: "

    aput-object v7, v6, v8

    aput-object v0, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    sget-object v5, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "newLocale: "

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 226
    const/4 v4, 0x1

    .line 231
    :cond_0
    :goto_0
    return v4

    .line 229
    :cond_1
    invoke-virtual {v3, v2}, Lcom/htc/store/module/PreferenceManager;->setLocale(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 53
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 55
    sget-object v4, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "couldn\'t get connectivity manager"

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v2, v3

    .line 64
    :goto_0
    return v2

    .line 57
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 58
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    goto :goto_0
.end method

.method public static isSystemPrebuiltPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "packageName"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 68
    const/4 v3, 0x0

    .line 69
    .local v3, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 71
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v9, :cond_1

    .line 73
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    .line 74
    sget-object v4, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, " is system pre-built, and updated"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v3

    .line 76
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    :cond_0
    sget-object v4, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, " is system pre-built"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v3, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object v4, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, " is NOT system pre-built"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static isVersion2LargerThanVersion1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "version1"
    .parameter "version2"

    .prologue
    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, result:Z
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 130
    const-string v8, "\\."

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, strArray1:[Ljava/lang/String;
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, strArray2:[Ljava/lang/String;
    array-length v5, v4

    .line 133
    .local v5, strArray1Length:I
    array-length v7, v6

    .line 136
    .local v7, strArray2Length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 137
    if-ge v2, v7, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    .local v0, diff:I
    :try_start_0
    aget-object v8, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aget-object v9, v4, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    sub-int v0, v8, v9

    .line 148
    if-lez v0, :cond_1

    .line 150
    const/4 v3, 0x1

    .line 174
    .end local v0           #diff:I
    .end local v2           #i:I
    .end local v4           #strArray1:[Ljava/lang/String;
    .end local v5           #strArray1Length:I
    .end local v6           #strArray2:[Ljava/lang/String;
    .end local v7           #strArray2Length:I
    :cond_0
    :goto_1
    return v3

    .line 141
    .restart local v0       #diff:I
    .restart local v2       #i:I
    .restart local v4       #strArray1:[Ljava/lang/String;
    .restart local v5       #strArray1Length:I
    .restart local v6       #strArray2:[Ljava/lang/String;
    .restart local v7       #strArray2Length:I
    :catch_0
    move-exception v1

    .line 142
    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 144
    const/4 v3, 0x1

    goto :goto_1

    .line 152
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    if-ltz v0, :cond_0

    .line 157
    add-int/lit8 v8, v5, -0x1

    if-ne v2, v8, :cond_2

    .line 158
    if-le v7, v5, :cond_2

    .line 159
    const/4 v3, 0x1

    .line 160
    goto :goto_1

    .line 136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    .end local v0           #diff:I
    .end local v2           #i:I
    .end local v4           #strArray1:[Ljava/lang/String;
    .end local v5           #strArray1Length:I
    .end local v6           #strArray2:[Ljava/lang/String;
    .end local v7           #strArray2Length:I
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 171
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static removeRecordFromHashMapByValue(Ljava/util/HashMap;Ljava/lang/String;)I
    .locals 9
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 193
    const/4 v0, 0x0

    .line 195
    .local v0, count:I
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 196
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 197
    .local v2, keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 199
    .local v1, key:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "removeRecordFromHashMapByValue()"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #key:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 203
    .restart local v1       #key:Ljava/lang/String;
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "map size before "

    aput-object v5, v4, v6

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 206
    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_0
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "map size after "

    aput-object v5, v4, v6

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 212
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    return v0
.end method


# virtual methods
.method public transferVersionNameToVersionCode(Ljava/lang/String;)I
    .locals 8
    .parameter "versionName"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 178
    const/4 v2, -0x1

    .line 180
    .local v2, versionCode:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 189
    :goto_0
    return v2

    .line 181
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 187
    :goto_1
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "versionName is not number."

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 184
    :catch_1
    move-exception v0

    .line 185
    .local v0, ae:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/store/util/CommonUtils;->TAG:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "first digit of versionName is not number."

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method
