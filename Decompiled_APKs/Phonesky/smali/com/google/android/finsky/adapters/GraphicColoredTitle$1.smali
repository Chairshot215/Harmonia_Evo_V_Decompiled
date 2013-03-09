.class Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;
.super Ljava/lang/Object;
.source "GraphicColoredTitle.java"

# interfaces
.implements Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/adapters/GraphicColoredTitle;->bindPromoImageToBackground(Landroid/view/View;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/adapters/GraphicColoredTitle;

.field final synthetic val$content:Landroid/view/View;

.field final synthetic val$fadeInAnimation:Landroid/view/animation/Animation;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/adapters/GraphicColoredTitle;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->this$0:Lcom/google/android/finsky/adapters/GraphicColoredTitle;

    iput-object p2, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$imageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$content:Landroid/view/View;

    iput-object p4, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$content:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$fadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$content:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->val$content:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 159
    check-cast p1, Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/adapters/GraphicColoredTitle$1;->onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V

    return-void
.end method
