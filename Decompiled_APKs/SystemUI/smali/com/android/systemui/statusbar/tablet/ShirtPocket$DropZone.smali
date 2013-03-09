.class public Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;
.super Landroid/view/View;
.source "ShirtPocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/ShirtPocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropZone"
.end annotation


# instance fields
.field mPocket:Lcom/android/systemui/statusbar/tablet/ShirtPocket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private hide(Z)V
    .locals 6

    new-instance v1, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone$1;-><init>(Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;)V

    if-eqz p1, :cond_0

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone$1;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method private show(Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->setTranslationY(F)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->setAlpha(F)V

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->setAlpha(F)V

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->mPocket:Lcom/android/systemui/statusbar/tablet/ShirtPocket;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->holding()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->show(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->hide(Z)V

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->show(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->mPocket:Lcom/android/systemui/statusbar/tablet/ShirtPocket;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    #calls: Lcom/android/systemui/statusbar/tablet/ShirtPocket;->stash(Landroid/content/ClipData;)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/tablet/ShirtPocket;->access$000(Lcom/android/systemui/statusbar/tablet/ShirtPocket;Landroid/content/ClipData;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->hide(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPocket(Lcom/android/systemui/statusbar/tablet/ShirtPocket;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/ShirtPocket$DropZone;->mPocket:Lcom/android/systemui/statusbar/tablet/ShirtPocket;

    return-void
.end method
