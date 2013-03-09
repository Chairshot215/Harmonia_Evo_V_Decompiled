.class public Lcom/htc/android/htcime/util/SIPUtils;
.super Ljava/lang/Object;
.source "SIPUtils.java"


# static fields
.field private static HW_LANG_SWITCHED:I = 0x0

.field private static MODE_MULTI_PROCESS:I = 0x0

.field private static PY_LANG_SWITCHED:I = 0x0

.field private static ST_LANG_SWITCHED:I = 0x0

.field public static final SU:Ljava/lang/String; = "/system/xbin/su"

.field public static final SUDO:Ljava/lang/String; = "/system/xbin/su 0 "

.field static final UDBGLog:Z = false

.field static final UDBGTAG:Ljava/lang/String; = "SIP Utility"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1090
    const/4 v0, 0x1

    sput v0, Lcom/htc/android/htcime/util/SIPUtils;->HW_LANG_SWITCHED:I

    .line 1091
    const/4 v0, 0x2

    sput v0, Lcom/htc/android/htcime/util/SIPUtils;->PY_LANG_SWITCHED:I

    .line 1092
    sput v1, Lcom/htc/android/htcime/util/SIPUtils;->ST_LANG_SWITCHED:I

    .line 1324
    sput v1, Lcom/htc/android/htcime/util/SIPUtils;->MODE_MULTI_PROCESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TouchDriverFileCheck()I
    .locals 7

    .prologue
    .line 76
    const/16 v2, 0x8

    .line 78
    .local v2, max_folder_count:I
    const-string v3, "/sys/class/input/input"

    .line 81
    .local v3, path:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ime_work_area"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, area:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ime_threshold"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, thre:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 90
    .end local v0           #area:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #thre:Ljava/lang/String;
    :goto_1
    return v1

    .line 81
    .restart local v0       #area:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #thre:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v0           #area:Ljava/lang/String;
    .end local v4           #thre:Ljava/lang/String;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static changeFileMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "file"
    .parameter "mode"

    .prologue
    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/xbin/su 0 /system/bin/chmod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/SIPUtils;->runCommand(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method static commitModifiedLevel(Landroid/content/SharedPreferences;I)V
    .locals 2
    .parameter "sp"
    .parameter "level"

    .prologue
    .line 1332
    if-lez p1, :cond_0

    const-string v0, "MODIFIED"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1333
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "MODIFIED"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1334
    :cond_0
    return-void
.end method

.method public static defaultHWKBSIPLoader(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMMData;)V
    .locals 6
    .parameter "context"
    .parameter "mData"

    .prologue
    const/4 v5, 0x0

    .line 667
    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-nez v4, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 670
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 671
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 675
    .local v2, r:Landroid/content/res/Resources;
    const v4, 0x7f0900eb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, mHWKBSIPSwitchKeyDef:Ljava/lang/String;
    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 679
    .local v0, defaultHWKBSIP:I
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_0

    .line 680
    const/4 v4, 0x3

    iput v4, p1, Lcom/htc/android/htcime/HTCIMMData;->mLandPrimarySIP:I

    .line 681
    sput-boolean v5, Lcom/htc/android/htcime/HTCIMMData;->mbUseHWkeyboard:Z

    goto :goto_0
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .parameter "strCmd"

    .prologue
    const/4 v2, 0x0

    .line 1204
    const-string v1, "SIP Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v1, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1211
    :goto_0
    return-object v1

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 1211
    goto :goto_0
.end method

.method public static getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 1316
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferencesMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultSharedPreferencesMode()I
    .locals 1

    .prologue
    .line 1326
    sget v0, Lcom/htc/android/htcime/util/SIPUtils;->MODE_MULTI_PROCESS:I

    or-int/lit8 v0, v0, 0x0

    return v0
.end method

.method private static getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static halfToFullWidthChar(I)I
    .locals 3
    .parameter "nCode"

    .prologue
    const/16 v1, 0x20

    .line 1282
    const/4 v0, 0x0

    .line 1284
    .local v0, nRet:I
    if-ne p0, v1, :cond_0

    .line 1285
    const/16 v0, 0x3000

    .line 1294
    :goto_0
    return v0

    .line 1286
    :cond_0
    if-le p0, v1, :cond_1

    const/16 v1, 0xff

    if-gt p0, v1, :cond_1

    .line 1287
    add-int/lit8 v1, p0, -0x20

    const v2, 0xff00

    or-int v0, v1, v2

    goto :goto_0

    .line 1289
    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static htcIMELocaleTranslator(Ljava/util/Locale;)I
    .locals 5
    .parameter "locale"

    .prologue
    const/4 v1, 0x0

    .line 403
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, localeLanguage:Ljava/lang/String;
    const-string v2, "en"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :goto_0
    return v1

    .line 407
    :cond_0
    const-string v2, "fr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    const/4 v1, 0x1

    goto :goto_0

    .line 409
    :cond_1
    const-string v2, "de"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 410
    const/4 v1, 0x2

    goto :goto_0

    .line 411
    :cond_2
    const-string v2, "it"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 412
    const/4 v1, 0x3

    goto :goto_0

    .line 413
    :cond_3
    const-string v2, "es"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 414
    const/4 v1, 0x4

    goto :goto_0

    .line 415
    :cond_4
    const-string v2, "ru"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 416
    const/4 v1, 0x6

    goto :goto_0

    .line 417
    :cond_5
    const-string v2, "cs"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 418
    const/4 v1, 0x7

    goto :goto_0

    .line 419
    :cond_6
    const-string v2, "da"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 420
    const/16 v1, 0x8

    goto :goto_0

    .line 421
    :cond_7
    const-string v2, "sv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 422
    const/16 v1, 0x9

    goto :goto_0

    .line 423
    :cond_8
    const-string v2, "nb"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 424
    const/16 v1, 0xa

    goto :goto_0

    .line 425
    :cond_9
    const-string v2, "nl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 426
    const/16 v1, 0xb

    goto :goto_0

    .line 427
    :cond_a
    const-string v2, "pl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 428
    const/16 v1, 0xd

    goto :goto_0

    .line 430
    :cond_b
    const-string v2, "pt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 431
    const/4 v1, 0x5

    goto :goto_0

    .line 432
    :cond_c
    const-string v2, "el"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 433
    const/16 v1, 0x11

    goto/16 :goto_0

    .line 434
    :cond_d
    const-string v2, "ar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 435
    const/16 v1, 0xe

    goto/16 :goto_0

    .line 436
    :cond_e
    const-string v2, "fi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 437
    const/16 v1, 0xc

    goto/16 :goto_0

    .line 438
    :cond_f
    const-string v2, "tr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 439
    const/16 v1, 0xf

    goto/16 :goto_0

    .line 440
    :cond_10
    const-string v2, "ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 441
    const/16 v1, 0x10

    goto/16 :goto_0

    .line 442
    :cond_11
    const-string v2, "hu"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 443
    const/16 v1, 0x12

    goto/16 :goto_0

    .line 444
    :cond_12
    const-string v2, "sk"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 445
    const/16 v1, 0x13

    goto/16 :goto_0

    .line 446
    :cond_13
    const-string v2, "fr_ca"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 447
    const/16 v1, 0x14

    goto/16 :goto_0

    .line 450
    :cond_14
    const-string v2, "hr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 451
    const/16 v1, 0x17

    goto/16 :goto_0

    .line 452
    :cond_15
    const-string v2, "sl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 453
    const/16 v1, 0x15

    goto/16 :goto_0

    .line 454
    :cond_16
    const-string v2, "sr"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 455
    const/16 v1, 0x16

    goto/16 :goto_0

    .line 457
    :cond_17
    const-string v2, "bg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 458
    const/16 v1, 0x18

    goto/16 :goto_0

    .line 459
    :cond_18
    const-string v2, "et"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 460
    const/16 v1, 0x19

    goto/16 :goto_0

    .line 461
    :cond_19
    const-string v2, "lv"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 462
    const/16 v1, 0x1a

    goto/16 :goto_0

    .line 463
    :cond_1a
    const-string v2, "lt"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 464
    const/16 v1, 0x1b

    goto/16 :goto_0

    .line 466
    :cond_1b
    const-string v2, "SIP Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error locale, failed to translate, use default locale - English, localeLanguage-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static isCJKCharacter(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1383
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 1384
    .local v0, ub:Ljava/lang/Character$UnicodeBlock;
    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_RADICALS_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->BOPOMOFO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HIRAGANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->KATAKANA_PHONETIC_EXTENSIONS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_SYLLABLES:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-eq v0, v1, :cond_0

    sget-object v1, Ljava/lang/Character$UnicodeBlock;->HANGUL_COMPATIBILITY_JAMO:Ljava/lang/Character$UnicodeBlock;

    if-ne v0, v1, :cond_1

    .line 1408
    :cond_0
    const/4 v1, 0x1

    .line 1410
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isHKBuild()Z
    .locals 2

    .prologue
    .line 1368
    const/16 v0, 0x32

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v0, v1, :cond_0

    const/16 v0, 0x12

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLanguageSupport(Landroid/content/Context;I)Z
    .locals 4
    .parameter "context"
    .parameter "l"

    .prologue
    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, lv:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 475
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 476
    const/4 v2, 0x1

    .line 479
    :goto_1
    return v2

    .line 474
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 479
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isOrangeSwissBuild()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1374
    const/16 v1, 0x71

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v1, v2, :cond_1

    .line 1377
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x9

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPSValidString(Ljava/lang/String;)Z
    .locals 2
    .parameter "s"

    .prologue
    .line 1414
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1415
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/htc/android/htcime/util/SIPUtils;->isCJKCharacter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    const/4 v1, 0x0

    .line 1419
    :goto_1
    return v1

    .line 1414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1419
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static playSoundEffect(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 1
    .parameter "context"
    .parameter "mAudioManager"

    .prologue
    .line 50
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    if-nez v0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    if-nez p1, :cond_2

    .line 54
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/media/AudioManager;

    .line 56
    .restart local p1
    :cond_2
    if-eqz p1, :cond_0

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public static playSoundEffect(Lcom/htc/android/htcime/util/AudioService;I)V
    .locals 1
    .parameter "mAudioService"
    .parameter "type"

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mSoundFlag:Z

    if-nez v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/util/AudioService;->playSoundEffect(I)V

    goto :goto_0
.end method

.method public static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1300
    if-eqz p1, :cond_0

    .line 1302
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1311
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 1303
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 1304
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1305
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1306
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 1308
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method public static runCommand(Ljava/lang/String;Z)I
    .locals 6
    .parameter "strCmd"
    .parameter "boolWait"

    .prologue
    .line 1177
    const/4 v0, -0x1

    .line 1180
    .local v0, code:I
    :try_start_0
    const-string v3, "SIP Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-=-= Exec command: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] =-=-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1184
    .local v2, process:Ljava/lang/Process;
    if-nez v2, :cond_0

    .line 1185
    const/4 v3, -0x1

    .line 1200
    .end local v2           #process:Ljava/lang/Process;
    :goto_0
    return v3

    .line 1187
    .restart local v2       #process:Ljava/lang/Process;
    :cond_0
    if-eqz p1, :cond_1

    .line 1188
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v0

    .line 1190
    const-string v3, "SIP Utility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "       Exit code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #process:Ljava/lang/Process;
    :goto_1
    move v3, v0

    .line 1200
    goto :goto_0

    .line 1194
    .restart local v2       #process:Ljava/lang/Process;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1196
    .end local v2           #process:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 1197
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "SIP Utility"

    const-string v4, "       Exec command FAILED!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setRoundedCorner(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 1338
    if-nez p0, :cond_0

    .line 1350
    :goto_0
    return-void

    .line 1341
    :cond_0
    sget-boolean v0, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v0, :cond_1

    .line 1344
    const/4 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->setRoundedCornerEnabled(Landroid/view/View;ZZ)V

    goto :goto_0

    .line 1348
    :cond_1
    invoke-static {p0, v1}, Lcom/htc/android/htcime/util/AppUnbundleUtil;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public static updateCIMEDefaultLanguage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "country"

    .prologue
    const v11, 0x7f0900fb

    const v10, 0x7f0900fa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v9, 0x7f0902a5

    .line 1096
    const/4 v1, 0x0

    .line 1097
    .local v1, bUpdateAll:Z
    const/4 v0, 0x0

    .line 1099
    .local v0, bTradChi:Z
    const-string v8, "TW"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "HK"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v0, v7

    .line 1101
    :goto_0
    invoke-static {p0}, Lcom/htc/android/htcime/util/SIPUtils;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1102
    .local v5, sp:Landroid/content/SharedPreferences;
    if-nez v5, :cond_2

    .line 1140
    :goto_1
    return-void

    .end local v5           #sp:Landroid/content/SharedPreferences;
    :cond_1
    move v0, v6

    .line 1099
    goto :goto_0

    .line 1106
    .restart local v5       #sp:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1107
    .local v4, r:Landroid/content/res/Resources;
    const v8, 0x7f09010e

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1109
    .local v3, lang_switched:I
    if-eqz v1, :cond_3

    .line 1110
    const/4 v3, 0x0

    .line 1112
    :cond_3
    sget v6, Lcom/htc/android/htcime/util/SIPUtils;->HW_LANG_SWITCHED:I

    and-int/2addr v6, v3

    if-nez v6, :cond_5

    .line 1113
    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "0"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1115
    .local v2, lang:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 1116
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1117
    :cond_4
    if-eqz v0, :cond_8

    .line 1118
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1125
    .end local v2           #lang:Ljava/lang/String;
    :cond_5
    :goto_2
    sget v6, Lcom/htc/android/htcime/util/SIPUtils;->PY_LANG_SWITCHED:I

    and-int/2addr v6, v3

    if-nez v6, :cond_6

    .line 1126
    if-eqz v0, :cond_9

    .line 1127
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1132
    :cond_6
    :goto_3
    sget v6, Lcom/htc/android/htcime/util/SIPUtils;->ST_LANG_SWITCHED:I

    and-int/2addr v6, v3

    if-nez v6, :cond_7

    .line 1133
    if-eqz v0, :cond_a

    .line 1134
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1139
    :cond_7
    :goto_4
    invoke-static {v5, v7}, Lcom/htc/android/htcime/util/SIPUtils;->commitModifiedLevel(Landroid/content/SharedPreferences;I)V

    goto :goto_1

    .line 1120
    .restart local v2       #lang:Ljava/lang/String;
    :cond_8
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_2

    .line 1129
    .end local v2           #lang:Ljava/lang/String;
    :cond_9
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_3

    .line 1136
    :cond_a
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_4
.end method

.method public static writeAttrFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 1150
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    .local v1, writer:Ljava/io/BufferedWriter;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1155
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 1160
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :goto_0
    return-void

    .line 1155
    .restart local v1       #writer:Ljava/io/BufferedWriter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1157
    .end local v1           #writer:Ljava/io/BufferedWriter;
    :catch_0
    move-exception v0

    .line 1158
    .local v0, e:Ljava/io/IOException;
    const-string v2, "SIP Utility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static writeTouchArea(IIIII)V
    .locals 8
    .parameter "X1"
    .parameter "X2"
    .parameter "Y1"
    .parameter "Y2"
    .parameter "dev"

    .prologue
    .line 131
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/sys/class/input/input"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/ime_work_area"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, path:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    .local v4, t:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 163
    :goto_0
    return-void

    .line 142
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 149
    .local v2, out:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v5, 0x80

    invoke-direct {v0, v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 151
    .local v0, bufWriter:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 158
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "SIP Utility"

    const-string v6, "writeTouchWorkArea() -> Close error! "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 144
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 145
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "SIP Utility"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeTouchWorkArea() -> FileWriter error! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #bufWriter:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 155
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v5, "SIP Utility"

    const-string v6, "writeTouchWorkArea() -> write error! "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static writeTouchThreshold(Ljava/lang/String;I)V
    .locals 6
    .parameter "t"
    .parameter "dev"

    .prologue
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/sys/class/input/input"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/ime_threshold"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 125
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 111
    .local v2, out:Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    const/16 v4, 0x80

    invoke-direct {v0, v2, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 113
    .local v0, bufWriter:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v1

    .line 123
    .local v1, ex:Ljava/io/IOException;
    const-string v4, "SIP Utility"

    const-string v5, "writeTouchThreshold() -> Close error! "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 106
    .end local v0           #bufWriter:Ljava/io/BufferedWriter;
    .end local v1           #ex:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v1

    .line 107
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v4, "SIP Utility"

    const-string v5, "writeTouchThreshold() -> FileWriter error! "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #bufWriter:Ljava/io/BufferedWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_2
    move-exception v1

    .line 117
    .restart local v1       #ex:Ljava/io/IOException;
    const-string v4, "SIP Utility"

    const-string v5, "writeTouchThreshold() -> write error! "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
