.class Lcom/android/camera/effect/ColorEffectController$1;
.super Ljava/lang/Object;
.source "ColorEffectController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/ColorEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/ColorEffectController;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/ColorEffectController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/ColorEffectController$1;->this$0:Lcom/android/camera/effect/ColorEffectController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/ColorEffectController$1;->this$0:Lcom/android/camera/effect/ColorEffectController;

    const-string v1, "none"

    #setter for: Lcom/android/camera/effect/ColorEffectController;->m_CurrentColorEffect:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/effect/ColorEffectController;->access$002(Lcom/android/camera/effect/ColorEffectController;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
