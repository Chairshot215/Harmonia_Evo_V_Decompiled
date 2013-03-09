.class public final Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;
.super Ljava/lang/Object;
.source "Stitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/Stitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlendModeOptions"
.end annotation


# static fields
.field private static final OPT_NO_COLOR_COMP:I = 0x20

.field private static final OPT_NO_INTENSITY_COMP:I = 0x10


# instance fields
.field value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    if-nez p1, :cond_0

    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    iget v3, v0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    iget v4, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->value:I

    return v0
.end method
