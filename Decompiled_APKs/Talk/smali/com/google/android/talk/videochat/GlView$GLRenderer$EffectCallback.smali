.class Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;
.super Ljava/lang/Object;
.source "GlView.java"

# interfaces
.implements Landroid/media/effect/EffectUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlView$GLRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EffectCallback"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/GlView$GLRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEffectUpdated(Landroid/media/effect/Effect;Ljava/lang/Object;)V
    .locals 2
    .parameter "effect"
    .parameter "info"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    #getter for: Lcom/google/android/talk/videochat/GlView$GLRenderer;->mCurrentEffectId:I
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->access$1100(Lcom/google/android/talk/videochat/GlView$GLRenderer;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 522
    const-string v0, "Talk:GlView"

    const-string v1, "Effect callback fired when not using background replacement!"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->Logwtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    const-string v0, "Talk:GlView"

    const-string v1, "Background learning complete, locking AE/AWB"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGI(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mGLRenderer:Lcom/google/android/talk/videochat/GlView$GLRenderer;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$000(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/GlView$GLRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/GlView$GLRenderer;->getSelfRenderer()Lcom/google/android/videochat/SelfRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/videochat/SelfRenderer;->getCamera()Lcom/google/android/videochat/CameraInterface;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/videochat/CameraInterface;->setPreview3ALocks(Z)V

    .line 530
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mEffectsStateCallback:Lcom/google/android/talk/videochat/EffectsController$StateCallback;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$1200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/EffectsController$StateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlView$GLRenderer$EffectCallback;->this$1:Lcom/google/android/talk/videochat/GlView$GLRenderer;

    iget-object v0, v0, Lcom/google/android/talk/videochat/GlView$GLRenderer;->this$0:Lcom/google/android/talk/videochat/GlView;

    #getter for: Lcom/google/android/talk/videochat/GlView;->mEffectsStateCallback:Lcom/google/android/talk/videochat/EffectsController$StateCallback;
    invoke-static {v0}, Lcom/google/android/talk/videochat/GlView;->access$1200(Lcom/google/android/talk/videochat/GlView;)Lcom/google/android/talk/videochat/EffectsController$StateCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/videochat/EffectsController$StateCallback;->onBackgroundReplacementTraningSuccess()V

    goto :goto_0
.end method
