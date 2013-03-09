.class public final enum Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
.super Ljava/lang/Enum;
.source "CachingPromoter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/CachingPromoter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

.field public static final enum ALL_RESULTS:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

.field public static final enum SUMMONS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

.field public static final enum WEB_RESULTS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    const-string v1, "WEB_RESULTS_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->WEB_RESULTS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    .line 54
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    const-string v1, "SUMMONS_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->SUMMONS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    .line 55
    new-instance v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    const-string v1, "ALL_RESULTS"

    invoke-direct {v0, v1, v4}, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->ALL_RESULTS:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    sget-object v1, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->WEB_RESULTS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->SUMMONS_ONLY:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->ALL_RESULTS:Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->$VALUES:[Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
    .locals 1
    .parameter

    .prologue
    .line 52
    const-class v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    return-object v0
.end method

.method public static values()[Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->$VALUES:[Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    invoke-virtual {v0}, [Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/googlequicksearchbox/CachingPromoter$CacheType;

    return-object v0
.end method
