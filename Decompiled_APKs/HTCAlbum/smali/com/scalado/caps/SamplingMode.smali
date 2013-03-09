.class public final Lcom/scalado/caps/SamplingMode;
.super Ljava/lang/Object;
.source "SamplingMode.java"


# static fields
.field public static BILINEAR:Lcom/scalado/caps/SamplingMode;

.field public static BOX:Lcom/scalado/caps/SamplingMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/scalado/caps/SamplingMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/SamplingMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/SamplingMode;->BOX:Lcom/scalado/caps/SamplingMode;

    .line 30
    new-instance v0, Lcom/scalado/caps/SamplingMode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/SamplingMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/SamplingMode;->BILINEAR:Lcom/scalado/caps/SamplingMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/scalado/caps/SamplingMode;->value:I

    .line 41
    return-void
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/scalado/caps/SamplingMode;->value:I

    return v0
.end method
