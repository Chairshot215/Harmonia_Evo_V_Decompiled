.class Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;
.super Ljava/lang/Object;
.source "EffectPanelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/EffectPanelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewInfo"
.end annotation


# instance fields
.field public containerView:Lcom/android/camera/rotate/RotateLinearLayout;

.field public effect:Lcom/android/camera/effect/EffectBase;

.field public imageCoverView:Landroid/widget/ImageView;

.field public imageView:Landroid/widget/ImageView;

.field public textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/effect/EffectPanelAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/EffectPanelAdapter$ItemViewInfo;-><init>()V

    return-void
.end method
