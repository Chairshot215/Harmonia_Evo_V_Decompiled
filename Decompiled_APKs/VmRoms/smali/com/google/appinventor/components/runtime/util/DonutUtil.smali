.class public Lcom/google/appinventor/components/runtime/util/DonutUtil;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDrawingCache(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->buildDrawingCache(Z)V

    return-void
.end method

.method public static getDrawingCache(Landroid/view/View;Z)Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
