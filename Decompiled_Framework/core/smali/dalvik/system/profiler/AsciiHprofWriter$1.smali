.class final Ldalvik/system/profiler/AsciiHprofWriter$1;
.super Ljava/lang/Object;
.source "AsciiHprofWriter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldalvik/system/profiler/AsciiHprofWriter;
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
        "Ldalvik/system/profiler/HprofData$Sample;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ldalvik/system/profiler/HprofData$Sample;Ldalvik/system/profiler/HprofData$Sample;)I
    .locals 2

    iget v0, p2, Ldalvik/system/profiler/HprofData$Sample;->count:I

    iget v1, p1, Ldalvik/system/profiler/HprofData$Sample;->count:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ldalvik/system/profiler/HprofData$Sample;

    check-cast p2, Ldalvik/system/profiler/HprofData$Sample;

    invoke-virtual {p0, p1, p2}, Ldalvik/system/profiler/AsciiHprofWriter$1;->compare(Ldalvik/system/profiler/HprofData$Sample;Ldalvik/system/profiler/HprofData$Sample;)I

    move-result v0

    return v0
.end method
