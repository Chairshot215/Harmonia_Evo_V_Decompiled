.class public Lcom/android/systemui/Nyandroid$Board$FlyingCat;
.super Landroid/widget/ImageView;
.source "Nyandroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/Nyandroid$Board;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlyingCat"
.end annotation


# static fields
.field public static final VMAX:F = 1000.0f

.field public static final VMIN:F = 100.0f


# instance fields
.field public component:Landroid/content/ComponentName;

.field public dist:F

.field final synthetic this$0:Lcom/android/systemui/Nyandroid$Board;

.field public v:F

.field public vr:F

.field public z:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/Nyandroid$Board;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-direct {p0, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0200e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 5

    const/4 v4, 0x0

    const v1, 0x3dcccccd

    const/high16 v2, 0x4000

    iget v3, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setScaleX(F)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setScaleY(F)V

    neg-float v1, v0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    iget-object v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->this$0:Lcom/android/systemui/Nyandroid$Board;

    invoke-virtual {v1}, Lcom/android/systemui/Nyandroid$Board;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Lcom/android/systemui/Nyandroid$Board;->randfrange(FF)F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setY(F)V

    const/high16 v1, 0x42c8

    const/high16 v2, 0x447a

    iget v3, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->z:F

    invoke-static {v1, v2, v3}, Lcom/android/systemui/Nyandroid$Board;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    iput v4, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "<cat (%.1f, %.1f) (%d x %d)>"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    iget v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->dist:F

    invoke-virtual {p0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->v:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/Nyandroid$Board$FlyingCat;->setX(F)V

    return-void
.end method
