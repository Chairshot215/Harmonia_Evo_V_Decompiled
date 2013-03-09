.class public Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;
.super Ljava/lang/Object;
.source "NowPlayingArranger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
    }
.end annotation


# static fields
.field private static final PERMUTATIONS:[[[I

.field private static sBottomAffinity:Landroid/util/SparseIntArray;

.field private static sCachedArrangements:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;"
        }
    .end annotation
.end field

.field private static sInitialized:Z

.field private static sLeftAffinity:Landroid/util/SparseIntArray;

.field private static sRightAffinity:Landroid/util/SparseIntArray;

.field private static sTopAffinity:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [[[I

    new-array v1, v5, [[I

    aput-object v1, v0, v5

    new-array v1, v6, [[I

    new-array v2, v6, [I

    aput v5, v2, v5

    aput-object v2, v1, v5

    aput-object v1, v0, v6

    new-array v1, v7, [[I

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v7, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v5

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    const/16 v1, 0x18

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v3

    new-array v2, v4, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v4

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-array v3, v4, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    const/16 v2, 0xb

    new-array v3, v4, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    const/16 v2, 0xc

    new-array v3, v4, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    const/16 v2, 0xd

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/16 v2, 0xe

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/16 v2, 0xf

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x10

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x11

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    const/16 v2, 0x12

    new-array v3, v4, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    const/16 v2, 0x13

    new-array v3, v4, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    const/16 v2, 0x14

    new-array v3, v4, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    const/16 v2, 0x15

    new-array v3, v4, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    const/16 v2, 0x16

    new-array v3, v4, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    const/16 v2, 0x17

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->PERMUTATIONS:[[[I

    .line 165
    sput-boolean v5, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z

    .line 170
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    return-void

    .line 23
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static arrange(Ljava/util/List;I)Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
    .locals 14
    .parameter
    .parameter "layoutVariant"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;",
            ">;I)",
            "Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, scoredBackends:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;>;"
    invoke-static {}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->initialize()V

    .line 213
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 214
    .local v6, numQuadrants:I
    new-array v1, v6, [I

    .line 215
    .local v1, backends:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v10, v1

    if-ge v4, v10, :cond_0

    .line 216
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-virtual {v10}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v10

    aput v10, v1, v4

    .line 215
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 218
    :cond_0
    if-nez v6, :cond_1

    .line 219
    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v10, v11, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    .line 256
    :goto_1
    return-object v10

    .line 220
    :cond_1
    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    .line 221
    new-instance v11, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-interface {p0, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    invoke-direct {v11, v10, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    move-object v10, v11

    goto :goto_1

    .line 225
    :cond_2
    invoke-static {v1, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCachedCandidate([II)[I

    move-result-object v8

    .line 226
    .local v8, result:[I
    if-eqz v8, :cond_8

    const/4 v2, 0x1

    .line 227
    .local v2, cacheHit:Z
    :goto_2
    if-nez v2, :cond_4

    .line 228
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_3

    .line 229
    const-string v10, "Arrangement cache miss, computing from scratch."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_3
    invoke-static {v1, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->computeBestCandidate([II)[I

    move-result-object v8

    .line 234
    :cond_4
    const/4 v10, 0x3

    if-ne v6, v10, :cond_9

    invoke-static {v1, v8}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->determineLayoutVariant3([I[I)I

    move-result v3

    .line 236
    .local v3, effectiveLayoutVariant:I
    :goto_3
    if-nez v2, :cond_5

    .line 237
    invoke-static {v1, p1, v8, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->putCachedCandidate([II[II)V

    .line 241
    :cond_5
    new-array v7, v6, [Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 242
    .local v7, quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    const/4 v4, 0x0

    :goto_4
    array-length v10, v8

    if-ge v4, v10, :cond_a

    .line 243
    aget v0, v8, v4

    .line 245
    .local v0, backend:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 246
    .local v9, scoredBackend:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    invoke-virtual {v9}, Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;->getBackend()I

    move-result v10

    if-ne v10, v0, :cond_6

    .line 247
    aput-object v9, v7, v4

    .line 242
    .end local v9           #scoredBackend:Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 226
    .end local v0           #backend:I
    .end local v2           #cacheHit:Z
    .end local v3           #effectiveLayoutVariant:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_8
    const/4 v2, 0x0

    goto :goto_2

    .restart local v2       #cacheHit:Z
    :cond_9
    move v3, p1

    .line 234
    goto :goto_3

    .line 252
    .restart local v3       #effectiveLayoutVariant:I
    .restart local v7       #quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;
    :cond_a
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_b

    .line 253
    const-string v10, "Widget arrangement: quadrants=%s, layoutVariant=%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_b
    new-instance v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;

    invoke-direct {v10, v7, v3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;-><init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V

    goto :goto_1
.end method

.method private static computeBestCandidate([II)[I
    .locals 14
    .parameter "backends"
    .parameter "layoutVariant"

    .prologue
    .line 263
    const/4 v5, -0x1

    .line 264
    .local v5, maxScore:I
    array-length v6, p0

    .line 265
    .local v6, numQuadrants:I
    new-array v1, v6, [I

    .line 266
    .local v1, candidate:[I
    new-array v8, v6, [I

    .line 267
    .local v8, result:[I
    sget-object v10, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->PERMUTATIONS:[[[I

    aget-object v0, v10, v6

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 268
    .local v7, permutation:[I
    invoke-static {p0, v7, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->permute([I[I[I)V

    .line 269
    move v2, p1

    .line 270
    .local v2, candidateLayoutVariant:I
    const/4 v10, 0x3

    if-ne v6, v10, :cond_0

    .line 271
    invoke-static {p0, v1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->determineLayoutVariant3([I[I)I

    move-result v2

    .line 273
    :cond_0
    invoke-static {v1, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getScore([II)I

    move-result v9

    .line 274
    .local v9, score:I
    sget-boolean v10, Lcom/google/android/finsky/utils/FinskyLog;->DEBUG:Z

    if-eqz v10, :cond_1

    .line 275
    const-string v10, "Score for candidate %s: %d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/finsky/utils/FinskyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    :cond_1
    if-le v9, v5, :cond_2

    .line 278
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v1, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    move v5, v9

    .line 267
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 282
    .end local v2           #candidateLayoutVariant:I
    .end local v7           #permutation:[I
    .end local v9           #score:I
    :cond_3
    return-object v8
.end method

.method private static determineLayoutVariant3([I[I)I
    .locals 3
    .parameter "backends"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 286
    aget v1, p0, v0

    aget v2, p1, v0

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCacheKey([II)Ljava/lang/String;
    .locals 2
    .parameter "backends"
    .parameter "layoutVariant"

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getCachedCandidate([II)[I
    .locals 3
    .parameter "backends"
    .parameter "layoutVariant"

    .prologue
    .line 292
    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCacheKey([II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getScore(II)I
    .locals 4
    .parameter "backend"
    .parameter "location"

    .prologue
    .line 320
    const-class v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v2

    const/4 v0, 0x0

    .line 321
    .local v0, score:I
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_0

    .line 322
    :try_start_0
    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 324
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1

    .line 325
    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_1
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 328
    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 331
    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    .line 333
    :cond_3
    monitor-exit v2

    return v0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getScore([II)I
    .locals 5
    .parameter "backends"
    .parameter "layoutVariant"

    .prologue
    .line 311
    const/4 v1, 0x0

    .line 312
    .local v1, score:I
    array-length v2, p0

    .line 313
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 314
    aget v3, p0, v0

    invoke-static {v2, v0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v4

    invoke-static {v3, v4}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getScore(II)I

    move-result v3

    add-int/2addr v1, v3

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return v1
.end method

.method private static increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V
    .locals 3
    .parameter "increase"
    .parameter "decrease"
    .parameter "backend"

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-virtual {p0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 354
    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 355
    return-void
.end method

.method private static declared-synchronized initialize()V
    .locals 2

    .prologue
    .line 177
    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    .line 181
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    .line 183
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    .line 185
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/finsky/widget/WidgetUtils;->parseSparseIntArray(Ljava/lang/String;)Landroid/util/SparseIntArray;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    :cond_0
    monitor-exit v1

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static permute([I[I[I)V
    .locals 3
    .parameter "original"
    .parameter "permutation"
    .parameter "target"

    .prologue
    .line 358
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 359
    aget v1, p1, v0

    .line 360
    .local v1, index:I
    aget v2, p0, v1

    aput v2, p2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 362
    .end local v1           #index:I
    :cond_0
    return-void
.end method

.method private static declared-synchronized putCachedCandidate([II[II)V
    .locals 6
    .parameter "backends"
    .parameter "requestedLayoutVariant"
    .parameter "candidate"
    .parameter "candidateLayoutVariant"

    .prologue
    .line 297
    const-class v4, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sCachedArrangements:Ljava/util/Map;

    invoke-static {p0, p1}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->getCacheKey([II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_0

    .line 299
    aget v0, p2, v1

    .line 300
    .local v0, backend:I
    array-length v3, p0

    invoke-static {v3, v1, p3}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->getLocation(III)B

    move-result v2

    .line 301
    .local v2, location:I
    invoke-static {v0, v2}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->updateAffinity(II)V

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v0           #backend:I
    .end local v2           #location:I
    :cond_0
    invoke-static {}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->writeAffinities()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    monitor-exit v4

    return-void

    .line 297
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized updateAffinity(II)V
    .locals 3
    .parameter "backend"
    .parameter "location"

    .prologue
    .line 337
    const-class v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;

    monitor-enter v1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 338
    :try_start_0
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    .line 340
    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 341
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    .line 343
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    .line 344
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V

    .line 346
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 347
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    invoke-static {v0, v2, p0}, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->increaseAndDecrease(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :cond_3
    monitor-exit v1

    return-void

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static writeAffinities()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetTopAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sTopAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 195
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetBottomAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sBottomAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 197
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetLeftAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sLeftAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 199
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->myLibraryWidgetRightAffinity:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v1, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;->sRightAffinity:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/google/android/finsky/widget/WidgetUtils;->serializeSparseIntArray(Landroid/util/SparseIntArray;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 201
    return-void
.end method
