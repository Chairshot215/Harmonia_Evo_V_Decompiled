.class public final Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
.super Ljava/lang/Object;
.source "Exposure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/clearshot/Exposure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExposureMode"
.end annotation


# static fields
.field public static final GAMMA:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

.field public static final NATURAL:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->GAMMA:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    .line 39
    new-instance v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->NATURAL:Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    .line 23
    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    iget v1, p0, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;-><init>(I)V

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
    .line 18
    invoke-virtual {p0}, Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;->clone()Lcom/scalado/caps/filter/clearshot/Exposure$ExposureMode;

    move-result-object v0

    return-object v0
.end method
