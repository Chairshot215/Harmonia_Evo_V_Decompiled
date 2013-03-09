.class Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;
.super Landroid/view/View$DragShadowBuilder;
.source "ShirtPocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/ShirtPocket;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/ShirtPocket;

.field final synthetic val$icon:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;->this$0:Lcom/android/systemui/statusbar/tablet/ShirtPocket;

    iput-object p3, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;->val$icon:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;->val$icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    iget v0, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method
