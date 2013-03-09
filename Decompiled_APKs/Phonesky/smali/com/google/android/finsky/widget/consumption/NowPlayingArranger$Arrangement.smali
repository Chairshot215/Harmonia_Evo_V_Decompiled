.class public Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;
.super Ljava/lang/Object;
.source "NowPlayingArranger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/widget/consumption/NowPlayingArranger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Arrangement"
.end annotation


# static fields
.field private static final LOCATION_FLAGS_2_HORIZONTAL:[B

.field private static final LOCATION_FLAGS_2_VERTICAL:[B

.field private static final LOCATION_FLAGS_3_STRETCH_FIRST:[B

.field private static final LOCATION_FLAGS_3_STRETCH_SECOND:[B

.field private static final LOCATION_FLAGS_4:[B


# instance fields
.field public layoutVariant:I

.field public final quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 87
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_VERTICAL:[B

    .line 90
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_HORIZONTAL:[B

    .line 93
    new-array v0, v2, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_FIRST:[B

    .line 98
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_SECOND:[B

    .line 103
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_4:[B

    return-void

    .line 87
    nop

    :array_0
    .array-data 0x1
        0x4t
        0x8t
    .end array-data

    .line 90
    nop

    :array_1
    .array-data 0x1
        0x1t
        0x2t
    .end array-data

    .line 93
    nop

    :array_2
    .array-data 0x1
        0x1t
        0x6t
        0xat
    .end array-data

    .line 98
    :array_3
    .array-data 0x1
        0x5t
        0x2t
        0x9t
    .end array-data

    .line 103
    :array_4
    .array-data 0x1
        0x5t
        0x6t
        0x9t
        0xat
    .end array-data
.end method

.method public constructor <init>([Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;I)V
    .locals 0
    .parameter "quadrantToData"
    .parameter "layoutVariant"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->quadrantToData:[Lcom/google/android/finsky/widget/consumption/ConsumptionAppDocList;

    .line 124
    iput p2, p0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->layoutVariant:I

    .line 125
    return-void
.end method

.method public static getLocation(III)B
    .locals 4
    .parameter "numQuadrants"
    .parameter "quadrant"
    .parameter "layoutVariant"

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 146
    if-ne p0, v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    if-ne p0, v2, :cond_2

    if-nez p2, :cond_2

    .line 149
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_HORIZONTAL:[B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 150
    :cond_2
    if-ne p0, v2, :cond_3

    if-ne p2, v1, :cond_3

    .line 151
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_2_VERTICAL:[B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 152
    :cond_3
    if-ne p0, v3, :cond_4

    if-nez p2, :cond_4

    .line 153
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_FIRST:[B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 154
    :cond_4
    if-ne p0, v3, :cond_5

    if-ne p2, v1, :cond_5

    .line 155
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_3_STRETCH_SECOND:[B

    aget-byte v0, v0, p1

    goto :goto_0

    .line 156
    :cond_5
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 157
    sget-object v0, Lcom/google/android/finsky/widget/consumption/NowPlayingArranger$Arrangement;->LOCATION_FLAGS_4:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method
