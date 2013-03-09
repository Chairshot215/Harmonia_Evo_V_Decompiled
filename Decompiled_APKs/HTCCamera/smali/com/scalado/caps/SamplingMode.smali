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

    new-instance v0, Lcom/scalado/caps/SamplingMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/SamplingMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/SamplingMode;->BOX:Lcom/scalado/caps/SamplingMode;

    new-instance v0, Lcom/scalado/caps/SamplingMode;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/SamplingMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/SamplingMode;->BILINEAR:Lcom/scalado/caps/SamplingMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/SamplingMode;->value:I

    return-void
.end method


# virtual methods
.method getValue()I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/SamplingMode;->value:I

    return v0
.end method
