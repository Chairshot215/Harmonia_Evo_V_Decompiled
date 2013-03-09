.class public Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;
.super Ljava/lang/Object;
.source "XT9ForProviderIMConf.java"


# static fields
.field public static final AutoAppendInList:I = 0x200

.field private static final DEBUG_DEBUG:I = 0x2

.field private static final DEBUG_DUMP:I = 0x0

.field private static final DEBUG_INFO:I = 0x3

.field private static final DEBUG_LEVEL:I = 0x1

.field private static final DEBUG_OFF:I = 0x9

.field private static final DEBUG_VERBOSE:I = 0x1

.field public static final DownshiftedInList:I = 0x400

.field public static final ExactInList:I = 0x100

.field public static final RegionalCorrection:I = 0x2

.field public static final SpellCorrection:I = 0x4

.field public static final WordCompletion:I = 0x1

.field public static final WordStemsInList:I = 0x800


# instance fields
.field final TAG:Ljava/lang/String;

.field private mFeatureMask:I

.field private mMDBType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->TAG:Ljava/lang/String;

    .line 22
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mFeatureMask:I

    .line 49
    iput v1, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mMDBType:I

    return-void
.end method


# virtual methods
.method public getFeatureMask()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mFeatureMask:I

    return v0
.end method

.method public getMDBType()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mMDBType:I

    return v0
.end method

.method public setFeatureMask(I)V
    .locals 0
    .parameter "featureMask"

    .prologue
    .line 38
    iput p1, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mFeatureMask:I

    .line 39
    return-void
.end method

.method public setMDBType(I)V
    .locals 0
    .parameter "mdbType"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/android/htcime/XT9IME/intf/XT9ForProviderIMConf;->mMDBType:I

    .line 55
    return-void
.end method
