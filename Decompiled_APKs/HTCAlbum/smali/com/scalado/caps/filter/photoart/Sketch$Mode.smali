.class public final Lcom/scalado/caps/filter/photoart/Sketch$Mode;
.super Ljava/lang/Object;
.source "Sketch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Sketch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mode"
.end annotation


# static fields
.field public static final COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

.field public static final GRAY:Lcom/scalado/caps/filter/photoart/Sketch$Mode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->GRAY:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    .line 34
    new-instance v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch$Mode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->COLOR:Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    .line 20
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/photoart/Sketch$Mode;
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Sketch$Mode;-><init>(I)V

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
    invoke-virtual {p0}, Lcom/scalado/caps/filter/photoart/Sketch$Mode;->clone()Lcom/scalado/caps/filter/photoart/Sketch$Mode;

    move-result-object v0

    return-object v0
.end method
