.class public final Lcom/scalado/caps/filter/photoart/Lomo$Style;
.super Ljava/lang/Object;
.source "Lomo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Lomo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Style"
.end annotation


# static fields
.field public static final BLUE:Lcom/scalado/caps/filter/photoart/Lomo$Style;

.field public static final GREEN:Lcom/scalado/caps/filter/photoart/Lomo$Style;

.field public static final NEUTRAL:Lcom/scalado/caps/filter/photoart/Lomo$Style;

.field public static final RED:Lcom/scalado/caps/filter/photoart/Lomo$Style;

.field public static final YELLOW:Lcom/scalado/caps/filter/photoart/Lomo$Style;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->NEUTRAL:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    .line 33
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->RED:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    .line 38
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->GREEN:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    .line 43
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->BLUE:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    .line 48
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->YELLOW:Lcom/scalado/caps/filter/photoart/Lomo$Style;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->value:I

    .line 19
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/photoart/Lomo$Style;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/scalado/caps/filter/photoart/Lomo$Style;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Lomo$Style;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Lomo$Style;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/scalado/caps/filter/photoart/Lomo$Style;->clone()Lcom/scalado/caps/filter/photoart/Lomo$Style;

    move-result-object v0

    return-object v0
.end method
