.class Ljava/text/Bidi$Run;
.super Ljava/lang/Object;
.source "Bidi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/Bidi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Run"
.end annotation


# instance fields
.field private final level:I

.field private final limit:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljava/text/Bidi$Run;->start:I

    iput p2, p0, Ljava/text/Bidi$Run;->limit:I

    iput p3, p0, Ljava/text/Bidi$Run;->level:I

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    iget v0, p0, Ljava/text/Bidi$Run;->level:I

    return v0
.end method

.method public getLimit()I
    .locals 1

    iget v0, p0, Ljava/text/Bidi$Run;->limit:I

    return v0
.end method

.method public getStart()I
    .locals 1

    iget v0, p0, Ljava/text/Bidi$Run;->start:I

    return v0
.end method
