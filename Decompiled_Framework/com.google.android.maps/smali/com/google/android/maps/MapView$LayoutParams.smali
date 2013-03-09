.class public Lcom/google/android/maps/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final BOTTOM:I = 0x50

.field public static final BOTTOM_CENTER:I = 0x51

.field public static final CENTER:I = 0x11

.field public static final CENTER_HORIZONTAL:I = 0x1

.field public static final CENTER_VERTICAL:I = 0x10

.field public static final LEFT:I = 0x3

.field public static final MODE_MAP:I = 0x0

.field public static final MODE_VIEW:I = 0x1

.field public static final RIGHT:I = 0x5

.field public static final TOP:I = 0x30

.field public static final TOP_LEFT:I = 0x33


# instance fields
.field public alignment:I

.field public mode:I

.field public point:Lcom/google/android/maps/GeoPoint;

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    iput p3, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    iput p4, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    iput p5, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    return-void
.end method

.method public constructor <init>(IILcom/google/android/maps/GeoPoint;I)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v4

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/MapView$LayoutParams;-><init>(IILcom/google/android/maps/GeoPoint;III)V

    return-void
.end method

.method public constructor <init>(IILcom/google/android/maps/GeoPoint;III)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    iput-object p3, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    iput p4, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    iput p5, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    iput p6, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    const/16 v0, 0x33

    iput v0, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MapView.LayoutParams={width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->width:I

    invoke-static {v1}, Lcom/google/android/maps/MapView$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->height:I

    invoke-static {v1}, Lcom/google/android/maps/MapView$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->point:Lcom/google/android/maps/GeoPoint;

    invoke-virtual {v1}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/MapView$LayoutParams;->alignment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
