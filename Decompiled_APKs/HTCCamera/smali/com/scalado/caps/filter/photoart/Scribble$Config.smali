.class public Lcom/scalado/caps/filter/photoart/Scribble$Config;
.super Ljava/lang/Object;
.source "Scribble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Scribble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# static fields
.field public static final COLOR_1_ALFA:Lcom/scalado/caps/filter/photoart/Scribble$Config;

.field public static final RGB565_G0:Lcom/scalado/caps/filter/photoart/Scribble$Config;


# instance fields
.field private colormode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/filter/photoart/Scribble$Config;

    const/16 v1, 0x1800

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Scribble$Config;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Scribble$Config;->RGB565_G0:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    new-instance v0, Lcom/scalado/caps/filter/photoart/Scribble$Config;

    const/16 v1, 0x1007

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Scribble$Config;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Scribble$Config;->COLOR_1_ALFA:Lcom/scalado/caps/filter/photoart/Scribble$Config;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble$Config;->colormode:I

    return-void
.end method

.method static synthetic access$000(Lcom/scalado/caps/filter/photoart/Scribble$Config;)I
    .locals 1

    iget v0, p0, Lcom/scalado/caps/filter/photoart/Scribble$Config;->colormode:I

    return v0
.end method
