.class public final Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
.super Ljava/lang/Object;
.source "Blur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/caps/filter/photoart/Blur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RegionMode"
.end annotation


# static fields
.field public static final CIRCULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

.field public static final RECTANGULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->RECTANGULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;-><init>(I)V

    sput-object v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->CIRCULAR:Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;
    .locals 2

    new-instance v0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    iget v1, p0, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->value:I

    invoke-direct {v0, v1}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;-><init>(I)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/scalado/caps/filter/photoart/Blur$RegionMode;->clone()Lcom/scalado/caps/filter/photoart/Blur$RegionMode;

    move-result-object v0

    return-object v0
.end method
