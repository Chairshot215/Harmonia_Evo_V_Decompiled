.class Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;
.super Ljava/lang/Object;
.source "FxScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/home/fxcontrol/FxScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveSceneInfo"
.end annotation


# instance fields
.field duration:F

.field rect:Landroid/graphics/Rect;

.field scene:Lcom/htc/fusion/fx/FxScene;

.field final synthetic this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;


# direct methods
.method public constructor <init>(Lcom/htc/android/rosie/home/fxcontrol/FxScreen;Lcom/htc/fusion/fx/FxScene;Landroid/graphics/Rect;F)V
    .locals 0
    .parameter
    .parameter "s"
    .parameter "r"
    .parameter "d"

    .prologue
    .line 732
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->this$0:Lcom/htc/android/rosie/home/fxcontrol/FxScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->scene:Lcom/htc/fusion/fx/FxScene;

    .line 734
    iput-object p3, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->rect:Landroid/graphics/Rect;

    .line 735
    iput p4, p0, Lcom/htc/android/rosie/home/fxcontrol/FxScreen$MoveSceneInfo;->duration:F

    .line 736
    return-void
.end method
