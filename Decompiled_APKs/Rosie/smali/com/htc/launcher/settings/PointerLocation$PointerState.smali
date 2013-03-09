.class public Lcom/htc/launcher/settings/PointerLocation$PointerState;
.super Ljava/lang/Object;
.source "PointerLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/launcher/settings/PointerLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mCurDown:Z

.field private mCurPressure:F

.field private mCurSize:F

.field private mCurWidth:I

.field private mCurX:I

.field private mCurY:I

.field private mVelocity:Landroid/view/VelocityTracker;

.field private final mXs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mYs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 189
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Landroid/view/VelocityTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/launcher/settings/PointerLocation$PointerState;Landroid/view/VelocityTracker;)Landroid/view/VelocityTracker;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mVelocity:Landroid/view/VelocityTracker;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/launcher/settings/PointerLocation$PointerState;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurDown:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurY:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurX:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/launcher/settings/PointerLocation$PointerState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurPressure:F

    return v0
.end method

.method static synthetic access$402(Lcom/htc/launcher/settings/PointerLocation$PointerState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurPressure:F

    return p1
.end method

.method static synthetic access$500(Lcom/htc/launcher/settings/PointerLocation$PointerState;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/htc/launcher/settings/PointerLocation$PointerState;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mXs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/launcher/settings/PointerLocation$PointerState;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mYs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/launcher/settings/PointerLocation$PointerState;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 189
    iget v0, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurSize:F

    return v0
.end method

.method static synthetic access$802(Lcom/htc/launcher/settings/PointerLocation$PointerState;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    iput p1, p0, Lcom/htc/launcher/settings/PointerLocation$PointerState;->mCurSize:F

    return p1
.end method
