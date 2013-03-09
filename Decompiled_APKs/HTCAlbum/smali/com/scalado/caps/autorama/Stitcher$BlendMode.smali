.class public final Lcom/scalado/caps/autorama/Stitcher$BlendMode;
.super Ljava/lang/Object;
.source "Stitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/Stitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BlendMode"
.end annotation


# static fields
.field public static final BLEND_MODE_STEREO:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field public static final LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field public static final MULTILEVEL_BEST:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field public static final MULTILEVEL_HIGH:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

.field public static final MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Stitcher$BlendMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->LINEAR:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 51
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Stitcher$BlendMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_NORMAL:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 61
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Stitcher$BlendMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_HIGH:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 70
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Stitcher$BlendMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->MULTILEVEL_BEST:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    .line 77
    new-instance v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/Stitcher$BlendMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->BLEND_MODE_STEREO:Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/scalado/caps/autorama/Stitcher$BlendMode;->value:I

    .line 38
    return-void
.end method
