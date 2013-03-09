.class Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;
.super Ljava/lang/Object;
.source "SceneMenuAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/SceneMenuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemViewInfo"
.end annotation


# instance fields
.field public iconView:Landroid/widget/ImageView;

.field public radioButton:Landroid/widget/RadioButton;

.field public scene:Lcom/android/camera/effect/EffectBase;

.field public textView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/effect/SceneMenuAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/effect/SceneMenuAdapter$ItemViewInfo;-><init>()V

    return-void
.end method
