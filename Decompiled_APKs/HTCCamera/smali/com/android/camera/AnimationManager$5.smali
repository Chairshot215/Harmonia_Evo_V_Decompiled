.class final Lcom/android/camera/AnimationManager$5;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Lcom/android/camera/AnimationManager$AlphaRotateAnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/AnimationManager;->showAlphaRotateAnimation(Lcom/android/camera/rotate/RotateRelativeLayout;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateOrientation(Landroid/view/View;I)V
    .locals 0

    check-cast p1, Lcom/android/camera/rotate/RotateRelativeLayout;

    invoke-virtual {p1, p2}, Lcom/android/camera/rotate/RotateRelativeLayout;->setOrientation(I)V

    return-void
.end method
