.class public final Lcom/scalado/caps/filter/photoart/Scribble$Shape;
.super Ljava/lang/Object;
.source "Scribble.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Scribble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Shape"
.end annotation


# static fields
.field public static final CIRCLE:Lcom/scalado/caps/filter/photoart/Scribble$Shape;

.field public static final SQUARE:Lcom/scalado/caps/filter/photoart/Scribble$Shape;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Scribble$Shape;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->CIRCLE:Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    .line 69
    new-instance v0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Scribble$Shape;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->SQUARE:Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/photoart/Scribble$Shape;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Scribble$Shape;-><init>(I)V

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
    .line 50
    invoke-virtual {p0}, Lcom/scalado/caps/filter/photoart/Scribble$Shape;->clone()Lcom/scalado/caps/filter/photoart/Scribble$Shape;

    move-result-object v0

    return-object v0
.end method
