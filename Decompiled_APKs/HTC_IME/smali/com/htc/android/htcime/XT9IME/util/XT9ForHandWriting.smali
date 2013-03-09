.class public Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;
.super Ljava/lang/Object;
.source "XT9ForHandWriting.java"


# static fields
.field static final ContinuousWriting_AllowedSymbol:[C = null

.field private static final DEBUG:Z = true

.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field private static final DUMP:Z = false

.field private static final INFO:Z = true

.field public static final INVALIDKEYCODE:I = -0x1

.field private static sAPPContext:Landroid/content/Context;

.field private static final sCharMAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final TAG:Ljava/lang/String;

.field private mCandidateCount:I

.field private mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

.field private mIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mIMMData:Lcom/htc/android/htcime/HTCIMMData;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    const/4 v1, 0x0

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sAPPContext:Landroid/content/Context;

    .line 261
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    .line 262
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x61

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x62

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x63

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x69

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6c

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6d

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x6f

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x70

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x71

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x72

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x73

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x74

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x75

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x76

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x77

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x17

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x79

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    const/16 v2, 0x7a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/16 v3, 0x19

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    new-array v1, v4, [C

    sput-object v1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->ContinuousWriting_AllowedSymbol:[C

    .line 392
    :try_start_0
    const-string v1, "t9"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 393
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 395
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: XT9ForProvider could not load libt9.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/android/htcime/HTCIMEService;)V
    .locals 4
    .parameter "context"
    .parameter "imm"

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 40
    iput-object v3, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 43
    new-instance v2, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-direct {v2}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;-><init>()V

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    .line 45
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mCandidateCount:I

    .line 49
    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v3, "Do constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iput-object p2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 52
    invoke-virtual {p2}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 55
    const/4 v1, 0x1

    .line 56
    .local v1, doNotRun:Z
    if-nez v1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->dummyRunForFroyo()V

    .line 59
    :cond_0
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sAPPContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 60
    sput-object p1, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sAPPContext:Landroid/content/Context;

    .line 61
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sAPPContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 62
    .local v0, am:Landroid/content/res/AssetManager;
    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeInitial(Landroid/content/res/AssetManager;)I

    .line 64
    .end local v0           #am:Landroid/content/res/AssetManager;
    :cond_1
    return-void
.end method

.method private calibrate(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 12
    .parameter "exactWord"
    .parameter "allowedSymbol"

    .prologue
    const/4 v11, -0x1

    .line 97
    invoke-direct {p0, p1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->calibrateRequirementCheck(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 157
    .end local p1
    :goto_0
    return-object p1

    .line 101
    .restart local p1
    :cond_0
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[calibrate] received exactWord = ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object v7, p1

    .line 104
    .local v7, typoWord:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v8, 0x100

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v1, canidateSB:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeClearAllSymb()V

    .line 109
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 111
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 112
    .local v2, ch:C
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->getSIPKeyCode(C)I

    move-result v6

    .line 114
    .local v6, keyID:I
    if-ne v6, v11, :cond_2

    .line 116
    invoke-direct {p0, v2, p2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->isAllowedSymbol(C[C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 118
    invoke-static {v2, v11}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeAddSymbolOnly(II)V

    .line 109
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 122
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Ignore unknown symbol. ch="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 128
    :cond_2
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 129
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetShiftMode(I)V

    .line 133
    :goto_3
    invoke-static {v6}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessKeyOnly(I)I

    goto :goto_2

    .line 131
    :cond_3
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetShiftMode(I)V

    goto :goto_3

    .line 136
    .end local v2           #ch:C
    .end local v6           #keyID:I
    :cond_4
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeBuildCandList()I

    .line 140
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetCandCount()I

    move-result v0

    .line 141
    .local v0, cand_count:I
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "typoWord="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v5, 0x0

    .local v5, index:I
    :goto_4
    if-ge v5, v0, :cond_5

    .line 144
    invoke-static {v5}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetCandString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/android/htcime/XT9IME/XT9IME;->pureCandStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    .local v3, correctWord:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "correctWord#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\t"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 149
    .end local v3           #correctWord:Ljava/lang/String;
    :cond_5
    iput v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mCandidateCount:I

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method private calibrateRequirementCheck(Ljava/lang/String;)Z
    .locals 3
    .parameter "exactWord"

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-static {}, Lcom/htc/android/htcime/HTCIMMView;->getIMMViewVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v2, "[calibrateReqirementCheck] Illegal! SIP is hidden."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return v0

    .line 226
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->isHandWritingSip()Z

    move-result v1

    if-nez v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v2, "[calibrateReqirementCheck] Illegal! Not hand writing SIP."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_1
    if-nez p1, :cond_2

    .line 231
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v2, "[calibrateReqirementCheck] Illegal! Request\'s argument is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSIPKeyCode(C)I
    .locals 4
    .parameter "ch"

    .prologue
    .line 297
    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 299
    .local v1, lch:C
    sget-object v2, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->sCharMAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 301
    .local v0, keyID:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method private hanldeDBContentSensitive(I)V
    .locals 0
    .parameter "mdb_type"

    .prologue
    .line 204
    invoke-static {p1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetMDB(I)V

    .line 205
    return-void
.end method

.method private initEngine()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-static {v3}, Lcom/htc/android/htcime/ezsip/EZSIPView;->GetSysLocale(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetLanguage(II)V

    .line 167
    const v1, 0xf009

    invoke-static {v1, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetKdb(II)I

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->getMDBType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->hanldeDBContentSensitive(I)V

    .line 173
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-virtual {v1}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->getFeatureMask()I

    move-result v0

    .line 174
    .local v0, fMask:I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordComplete(I)V

    .line 175
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetExactInList(I)V

    .line 176
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAutoAppend(I)V

    .line 177
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableAutoDownshift(I)V

    .line 178
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableWordStem(I)V

    .line 181
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableSpellCheck(Z)V

    .line 182
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordPredict(I)V

    .line 183
    const/16 v1, 0x11

    invoke-static {v2, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAutoSubstitute(II)I

    .line 184
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetBigramEnabled(Z)I

    .line 186
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordCompletePoint(I)V

    .line 187
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetSelLstMode(I)V

    .line 190
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAmbigiousMode()V

    .line 193
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetKdbPage(I)V

    .line 196
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetInputMode(I)V

    .line 197
    return-void

    :cond_0
    move v1, v3

    .line 174
    goto :goto_0

    :cond_1
    move v1, v3

    .line 175
    goto :goto_1

    :cond_2
    move v1, v3

    .line 176
    goto :goto_2

    :cond_3
    move v1, v3

    .line 177
    goto :goto_3

    :cond_4
    move v1, v3

    .line 178
    goto :goto_4
.end method

.method private initRequirementCheck()Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->isHandWritingSip()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v1, "[initRequirementCheck] Illegal! Not hand writing SIP."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isAllowedSymbol(C[C)Z
    .locals 2
    .parameter "c"
    .parameter "allowedSymbols"

    .prologue
    .line 308
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 309
    aget-char v1, p2, v0

    if-ne p1, v1, :cond_0

    .line 310
    const/4 v1, 0x1

    .line 312
    :goto_1
    return v1

    .line 308
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static native nativeASDBAddWord([C[C)I
.end method

.method private static native nativeAddSymbol(I)V
.end method

.method private static native nativeAddSymbolOnly(II)V
.end method

.method private static native nativeBuildCandList()I
.end method

.method private static native nativeClearAllSymb()V
.end method

.method private static native nativeClearOneSymb()V
.end method

.method private static native nativeClearOneSymbOnly()V
.end method

.method private static native nativeContextBreak()I
.end method

.method private static native nativeContextFill(Ljava/lang/String;)I
.end method

.method private static native nativeDisableSubstituteString(I)V
.end method

.method private static native nativeDumpUDB()I
.end method

.method private static native nativeEnableAutoDownshift(I)V
.end method

.method private static native nativeEnableMDB(Z)I
.end method

.method private static native nativeEnableSpellCheck(Z)V
.end method

.method private static native nativeEnableWordStem(I)V
.end method

.method private static native nativeExportUDB(Ljava/lang/String;)I
.end method

.method private static native nativeGetActiveWordIndex()I
.end method

.method private static native nativeGetCandCount()I
.end method

.method private static native nativeGetCandString(I)Ljava/lang/String;
.end method

.method private static native nativeGetSubstituteString(I)Ljava/lang/String;
.end method

.method private static native nativeGetWCLString()Ljava/lang/String;
.end method

.method private static native nativeGetWordSrcType(I)I
.end method

.method private static native nativeImportUDB(Ljava/lang/String;)I
.end method

.method private static native nativeInitial(Landroid/content/res/AssetManager;)I
.end method

.method private static native nativeIsKnownWord([CI)I
.end method

.method private static native nativeIsMDBEnabled()Z
.end method

.method private static native nativeIsSCWord(I)Z
.end method

.method private static native nativeLockWord(I)I
.end method

.method private static native nativeNoteCandAccept(I)I
.end method

.method private static native nativeNoteWordCommit(Ljava/lang/String;)I
.end method

.method private static native nativePreRegCorrect(II)I
.end method

.method private static native nativePreRegCorrectDone()V
.end method

.method private static native nativeProcessKey(I)I
.end method

.method private static native nativeProcessKeyBySymbol(CZI)I
.end method

.method private static native nativeProcessKeyOnly(I)I
.end method

.method private static native nativeProcessTap(III)I
.end method

.method private static native nativeProcessTapOnly(III)I
.end method

.method private static native nativeProcessTrace([I)I
.end method

.method private static native nativeReselectWord([CI)I
.end method

.method private static native nativeResetUDB()I
.end method

.method private static native nativeScanArticleForCustomWord([C)I
.end method

.method private static native nativeSetAmbigiousMode()V
.end method

.method private static native nativeSetAutoAppend(I)V
.end method

.method private static native nativeSetAutoSubstitute(II)I
.end method

.method private static native nativeSetBigramEnabled(Z)I
.end method

.method private static native nativeSetExactInList(I)V
.end method

.method private static native nativeSetInputMode(I)V
.end method

.method private static native nativeSetKdb(II)I
.end method

.method private static native nativeSetKdbPage(I)V
.end method

.method private static native nativeSetLanguage(II)V
.end method

.method private static native nativeSetMDB(I)V
.end method

.method private static native nativeSetMultiTapDone()V
.end method

.method private static native nativeSetMultiTapMode()V
.end method

.method private static native nativeSetSelLstMode(I)V
.end method

.method private static native nativeSetShiftMode(I)V
.end method

.method private static native nativeSetWordComplete(I)V
.end method

.method private static native nativeSetWordCompletePoint(I)V
.end method

.method private static native nativeSetWordPredict(I)V
.end method

.method private static native nativeUDBReload()V
.end method


# virtual methods
.method public calibrateContinuousWriting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "exactWord"

    .prologue
    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mCandidateCount:I

    .line 92
    sget-object v0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->ContinuousWriting_AllowedSymbol:[C

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->calibrate(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dummyRunForFroyo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 400
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeBuildCandList()I

    .line 401
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetWCLString()Ljava/lang/String;

    .line 402
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetSubstituteString(I)Ljava/lang/String;

    .line 403
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeDisableSubstituteString(I)V

    .line 404
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetCandCount()I

    .line 405
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableSpellCheck(Z)V

    .line 406
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessKey(I)I

    .line 407
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessKeyOnly(I)I

    .line 408
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessTap(III)I

    .line 409
    invoke-static {v2, v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessTapOnly(III)I

    .line 410
    new-array v0, v2, [I

    aput v2, v0, v3

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeProcessTrace([I)I

    .line 411
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetCandString(I)Ljava/lang/String;

    .line 412
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeClearOneSymb()V

    .line 413
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeClearOneSymbOnly()V

    .line 414
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeClearAllSymb()V

    .line 415
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetMultiTapMode()V

    .line 416
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAmbigiousMode()V

    .line 417
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetMultiTapDone()V

    .line 418
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetShiftMode(I)V

    .line 419
    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetKdb(II)I

    .line 420
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetKdbPage(I)V

    .line 422
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeAddSymbol(I)V

    .line 423
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeAddSymbolOnly(II)V

    .line 424
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordComplete(I)V

    .line 425
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAutoAppend(I)V

    .line 426
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordPredict(I)V

    .line 427
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetAutoSubstitute(II)I

    .line 428
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetInputMode(I)V

    .line 430
    invoke-static {v2, v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetLanguage(II)V

    .line 431
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetActiveWordIndex()I

    .line 432
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetWordCompletePoint(I)V

    .line 433
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeLockWord(I)I

    .line 435
    invoke-static {v2, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativePreRegCorrect(II)I

    .line 436
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativePreRegCorrectDone()V

    .line 438
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetExactInList(I)V

    .line 439
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetSelLstMode(I)V

    .line 440
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeIsKnownWord([CI)I

    .line 441
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeIsSCWord(I)Z

    .line 442
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeIsMDBEnabled()Z

    .line 443
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeASDBAddWord([C[C)I

    .line 444
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeScanArticleForCustomWord([C)I

    .line 445
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0, v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeReselectWord([CI)I

    .line 446
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeExportUDB(Ljava/lang/String;)I

    .line 447
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeImportUDB(Ljava/lang/String;)I

    .line 448
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeResetUDB()I

    .line 449
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeDumpUDB()I

    .line 450
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetMDB(I)V

    .line 451
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeGetWordSrcType(I)I

    .line 452
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableWordStem(I)V

    .line 453
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableAutoDownshift(I)V

    .line 454
    invoke-static {v2}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeEnableMDB(Z)I

    .line 456
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeSetBigramEnabled(Z)I

    .line 457
    invoke-static {v3}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeNoteCandAccept(I)I

    .line 458
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeNoteWordCommit(Ljava/lang/String;)I

    .line 459
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeContextBreak()I

    .line 460
    const-string v0, ""

    invoke-static {v0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeContextFill(Ljava/lang/String;)I

    .line 462
    invoke-static {}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->nativeUDBReload()V

    .line 463
    return-void
.end method

.method public finishInput()Z
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public getCandCount()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mCandidateCount:I

    return v0
.end method

.method public isHandWritingSip()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 240
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mPortSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v3, 0x11

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    .line 246
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    .line 249
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    if-eq v1, v2, :cond_0

    .line 252
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startInput()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 69
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->initRequirementCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    const/16 v2, 0x103

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setFeatureMask(I)V

    .line 73
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->mIMConf:Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;

    invoke-virtual {v1, v0}, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->setMDBType(I)V

    .line 75
    invoke-direct {p0}, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->initEngine()V

    .line 77
    iget-object v1, p0, Lcom/htc/android/htcime/XT9IME/util/XT9ForHandWriting;->TAG:Ljava/lang/String;

    const-string v2, "[startInput] done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
