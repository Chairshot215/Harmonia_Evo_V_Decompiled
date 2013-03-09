.class Lcom/android/ex/carousel/CarouselView$1;
.super Ljava/lang/Object;
.source "CarouselView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/ex/carousel/CarouselController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/ex/carousel/CarouselView;


# direct methods
.method constructor <init>(Lcom/android/ex/carousel/CarouselView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/ex/carousel/CarouselView$1;->this$0:Lcom/android/ex/carousel/CarouselView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView$1;->this$0:Lcom/android/ex/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselView;->interpretLongPressEvents()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ex/carousel/CarouselView$1;->this$0:Lcom/android/ex/carousel/CarouselView;

    iget-object v0, v0, Lcom/android/ex/carousel/CarouselView;->mController:Lcom/android/ex/carousel/CarouselController;

    invoke-virtual {v0}, Lcom/android/ex/carousel/CarouselController;->onLongPress()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
