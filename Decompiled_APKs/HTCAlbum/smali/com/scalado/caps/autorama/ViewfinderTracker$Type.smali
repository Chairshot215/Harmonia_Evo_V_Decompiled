.class public final Lcom/scalado/caps/autorama/ViewfinderTracker$Type;
.super Ljava/lang/Object;
.source "ViewfinderTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/autorama/ViewfinderTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final VFTRACKERTYPE_FAST:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

.field public static final VFTRACKERTYPE_MULTIREGION:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

.field public static final VFTRACKERTYPE_SIDES:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->VFTRACKERTYPE_FAST:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    .line 31
    new-instance v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->VFTRACKERTYPE_MULTIREGION:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    .line 35
    new-instance v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->VFTRACKERTYPE_SIDES:Lcom/scalado/caps/autorama/ViewfinderTracker$Type;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/scalado/caps/autorama/ViewfinderTracker$Type;->type:I

    .line 22
    return-void
.end method
