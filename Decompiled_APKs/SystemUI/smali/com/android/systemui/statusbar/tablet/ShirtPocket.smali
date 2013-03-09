.class public Lcom/android/systemui/statusbar/tablet/ShirtPocket;
.super Landroid/widget/ImageView;
.source "ShirtPocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBar/ShirtPocket"


# instance fields
.field mAnimHide:Landroid/animation/ObjectAnimator;

.field mAnimShow:Landroid/animation/ObjectAnimator;

.field private mClipping:Landroid/content/ClipData;

.field private mPreviewIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/content/ClipData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->stash(Landroid/content/ClipData;)V

    return-void
.end method

.method private stash(Landroid/content/ClipData;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public holding()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->mClipping:Landroid/content/ClipData;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v3, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;

    invoke-direct {v3, p0, p0, v2}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$1;-><init>(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v1, v3, v5, v4}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->stash(Landroid/content/ClipData;)V

    const/4 v4, 0x1

    :cond_0
    return v4

    :cond_1
    new-instance v3, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v3, p0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method
