.class public Lcom/htc/android/htcime/util/APKResTool;
.super Ljava/lang/Object;
.source "APKResTool.java"


# static fields
.field static final DEBUG:Z = false

.field public static final RESSTR_ARRAY_TYPE:Ljava/lang/String; = "array/"

.field public static final RESSTR_DIMEN_TYPE:Ljava/lang/String; = "dimen"

.field public static final RESSTR_DRAWABLE_TYPE:Ljava/lang/String; = "drawable/"

.field public static final RESSTR_ID_TYPE:Ljava/lang/String; = "id/"

.field public static final RESSTR_LAYOUT_TYPE:Ljava/lang/String; = "layout/"

.field public static final RESSTR_RAW_TYPE:Ljava/lang/String; = "raw/"

.field public static final RESSTR_RES_FIRST_SPLIT:Ljava/lang/String; = "@"

.field public static final RESSTR_STRING_TYPE:Ljava/lang/String; = "string/"

.field public static final RESSTR_XML_TYPE:Ljava/lang/String; = "xml/"

.field static final TAG:Ljava/lang/String; = "APKResTool"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mPak:Landroid/content/res/Resources;

.field private mPakContext:Landroid/content/Context;

.field public mPakName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    .line 51
    iput-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    .line 52
    iput-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    .line 54
    iput-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    .line 58
    iput-object p1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    .line 61
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    iput-object p2, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    .line 70
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "APKResTool"

    const-string v2, "can\'t find package"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 2
    .parameter "packageName"
    .parameter "resources"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    .line 52
    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    .line 74
    iput-object p1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    .line 76
    return-void
.end method

.method private classLoad()V
    .locals 9

    .prologue
    .line 375
    :try_start_0
    const-string v5, "APKResTool"

    const-string v6, "1  "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    const-string v6, "com.htc.android.inputset"

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .line 377
    .local v4, mPakContext:Landroid/content/Context;
    const-string v5, "APKResTool"

    const-string v6, "2"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 379
    .local v3, mClassLoader:Ljava/lang/ClassLoader;
    const-string v5, "APKResTool"

    const-string v6, "3"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v5, "com.htc.android.inputset.XT9EEU"

    const/4 v6, 0x1

    invoke-static {v5, v6, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 381
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "APKResTool"

    const-string v6, "4"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v5, "getInputSet"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 388
    .local v2, m:Ljava/lang/reflect/Method;
    const-string v5, "APKResTool"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "5"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v5, "APKResTool"

    const-string v6, "6"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #mClassLoader:Ljava/lang/ClassLoader;
    .end local v4           #mPakContext:Landroid/content/Context;
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    const-string v5, "APKResTool"

    const-string v6, "Can\'t create package context"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isPackageExist(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "packageName"
    .parameter "context"

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 296
    .local v1, ret:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    const/4 v1, 0x1

    .line 302
    :goto_0
    return v1

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private testResources()V
    .locals 1

    .prologue
    .line 341
    const-string v0, "qwerty"

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/APKResTool;->getXMLByName(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    .line 362
    return-void
.end method


# virtual methods
.method public findViewByName(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .parameter "sender"
    .parameter "viewName"

    .prologue
    .line 165
    invoke-virtual {p0, p2}, Lcom/htc/android/htcime/util/APKResTool;->getIdByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, ret:Landroid/view/View;
    return-object v0
.end method

.method public getArrayByName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "stringName"

    .prologue
    .line 207
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 208
    const/4 v0, 0x0

    .line 211
    .local v0, ret:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 210
    .end local v0           #ret:[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getArrayIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ret:[Ljava/lang/String;
    goto :goto_0
.end method

.method public getArrayIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "stringName"

    .prologue
    .line 196
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 197
    const/4 v0, -0x1

    .line 201
    .local v0, ret:I
    :goto_0
    return v0

    .line 199
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@array/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "array/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getAsset()Landroid/content/res/AssetManager;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 277
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 284
    const-string v1, "RRRLOG"

    const-string v2, "get Asset"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 288
    :goto_1
    return-object v1

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "APKResTool"

    const-string v3, "Can\'t create context"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    goto :goto_0

    .line 287
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "RRRLOG"

    const-string v3, "getAsset null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDimensionByName(Ljava/lang/String;)F
    .locals 6
    .parameter "stringName"

    .prologue
    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, ret:F
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 248
    const/4 v1, 0x0

    .line 258
    :goto_0
    return v1

    .line 251
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    const-string v4, "dimen"

    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "APKResTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dimen name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawableById(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "drawableId"

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, ret:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v2, :cond_0

    .line 231
    const/4 v1, 0x0

    .line 240
    :goto_0
    return-object v1

    .line 234
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "APKResTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawableByName(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "drawableName"

    .prologue
    .line 119
    const/4 v1, 0x0

    .line 120
    .local v1, ret:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, resID:I
    if-lez v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getDrawableIdByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 124
    :cond_0
    const-string v2, "APKResTool"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drawable resource not found, name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrawableIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "drawableIdName"

    .prologue
    .line 98
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 99
    const/4 v0, -0x1

    .line 103
    .local v0, ret:I
    :goto_0
    return v0

    .line 101
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "drawable/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "idName"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 88
    const/4 v0, -0x1

    .line 91
    .local v0, ret:I
    :goto_0
    return v0

    .line 90
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@id/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "id/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getLayoutIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "layoutIdName"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 111
    const/4 v0, -0x1

    .line 114
    .local v0, ret:I
    :goto_0
    return v0

    .line 113
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@layout/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "layout/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getLayoutXMLByName(Ljava/lang/String;)Lorg/xmlpull/v1/XmlPullParser;
    .locals 3
    .parameter "layoutXMLName"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 137
    .local v0, ret:Lorg/xmlpull/v1/XmlPullParser;
    :goto_0
    return-object v0

    .line 135
    .end local v0           #ret:Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getLayoutIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .restart local v0       #ret:Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_0
.end method

.method public getPackageContext()Landroid/content/Context;
    .locals 4

    .prologue
    .line 262
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    return-object v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "APKResTool"

    const-string v2, "Can\'t create context"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getRawIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "stringName"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 219
    const/4 v0, -0x1

    .line 223
    .local v0, ret:I
    :goto_0
    return v0

    .line 221
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@raw/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "raw/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getResource()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getStringByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "stringName"

    .prologue
    .line 185
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 189
    .local v0, ret:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 188
    .end local v0           #ret:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getStringIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getStringIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "stringName"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 175
    const/4 v0, -0x1

    .line 179
    .local v0, ret:I
    :goto_0
    return v0

    .line 177
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@string/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public getXMLByName(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .parameter "layoutXMLName"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 160
    .local v0, ret:Landroid/content/res/XmlResourceParser;
    :goto_0
    return-object v0

    .line 158
    .end local v0           #ret:Landroid/content/res/XmlResourceParser;
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/APKResTool;->getXmlIdByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .restart local v0       #ret:Landroid/content/res/XmlResourceParser;
    goto :goto_0
.end method

.method public getXmlIdByName(Ljava/lang/String;)I
    .locals 5
    .parameter "layoutIdName"

    .prologue
    .line 144
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 145
    const/4 v0, -0x1

    .line 148
    .local v0, ret:I
    :goto_0
    return v0

    .line 147
    .end local v0           #ret:I
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/util/APKResTool;->mPak:Landroid/content/res/Resources;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "xml/"

    iget-object v4, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public testAsset()V
    .locals 8

    .prologue
    .line 308
    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 310
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    if-eqz v5, :cond_1

    .line 318
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "xt9_raw/mdb_normal"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    check-cast v3, Landroid/content/res/AssetManager$AssetInputStream;

    .line 319
    .local v3, pfd:Landroid/content/res/AssetManager$AssetInputStream;
    const/16 v5, 0x80

    new-array v0, v5, [B

    .line 320
    .local v0, b:[B
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager$AssetInputStream;->read([B)I

    move-result v2

    .line 321
    .local v2, len:I
    if-lez v2, :cond_2

    .line 322
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 323
    .local v4, s:Ljava/lang/String;
    const-string v5, "RRRLOG"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "s - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 333
    .end local v0           #b:[B
    .end local v2           #len:I
    .end local v3           #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "APKResTool"

    const-string v6, "Can\'t create context"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/htc/android/htcime/util/APKResTool;->mPakContext:Landroid/content/Context;

    goto :goto_0

    .line 325
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #b:[B
    .restart local v2       #len:I
    .restart local v3       #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    :cond_2
    :try_start_2
    const-string v5, "RRRLOG"

    const-string v6, "s len = 0"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 328
    .end local v0           #b:[B
    .end local v2           #len:I
    .end local v3           #pfd:Landroid/content/res/AssetManager$AssetInputStream;
    :catch_1
    move-exception v1

    .line 329
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "RRRLOG"

    const-string v6, "open asset fail"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
