.class public final Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
.super Ljava/lang/Object;
.source "Rotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScaleMode"
.end annotation


# static fields
.field public static final FIT_INSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

.field public static final FIT_OUTSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

.field public static final IGNORE_SCALE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->IGNORE_SCALE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    .line 35
    new-instance v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->FIT_INSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    .line 42
    new-instance v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->FIT_OUTSIDE:Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    .line 19
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;-><init>(I)V

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
    .line 14
    invoke-virtual {p0}, Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;->clone()Lcom/scalado/caps/filter/photoart/Rotation$ScaleMode;

    move-result-object v0

    return-object v0
.end method
