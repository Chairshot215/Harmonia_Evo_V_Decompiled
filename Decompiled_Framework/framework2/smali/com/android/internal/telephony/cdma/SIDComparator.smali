.class public Lcom/android/internal/telephony/cdma/SIDComparator;
.super Ljava/lang/Object;
.source "SIDComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SIDComparator"

.field private static sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cdma/SIDComparator;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/cdma/SIDComparator;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SIDComparator;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cdma/SIDComparator;->sidComparator:Lcom/android/internal/telephony/cdma/SIDComparator;

    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I
    .locals 4

    const/4 v3, -0x1

    iget v0, p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    iget v1, p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mEnd:I

    iget v2, p2, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;->mBegin:I

    if-le v0, v2, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :cond_1
    if-gt v2, v1, :cond_0

    if-lt v2, v0, :cond_0

    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    check-cast p2, Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SIDComparator;->compare(Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;Lcom/android/internal/telephony/cdma/SIDTable$SIDEntry;)I

    move-result v0

    return v0
.end method
