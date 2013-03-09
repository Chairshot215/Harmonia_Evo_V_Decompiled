.class final Lcom/google/android/location/localizer/MaxLreLocalizer$1;
.super Ljava/lang/Object;
.source "MaxLreLocalizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/localizer/MaxLreLocalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/location/localizer/DistanceDist;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/location/localizer/DistanceDist;Lcom/google/android/location/localizer/DistanceDist;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 260
    iget v0, p1, Lcom/google/android/location/localizer/DistanceDist;->metricValue:I

    iget v1, p2, Lcom/google/android/location/localizer/DistanceDist;->metricValue:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    check-cast p1, Lcom/google/android/location/localizer/DistanceDist;

    .end local p1
    check-cast p2, Lcom/google/android/location/localizer/DistanceDist;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/location/localizer/MaxLreLocalizer$1;->compare(Lcom/google/android/location/localizer/DistanceDist;Lcom/google/android/location/localizer/DistanceDist;)I

    move-result v0

    return v0
.end method
