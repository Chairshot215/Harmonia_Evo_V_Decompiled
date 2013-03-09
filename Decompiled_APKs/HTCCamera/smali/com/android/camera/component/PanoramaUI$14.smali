.class Lcom/android/camera/component/PanoramaUI$14;
.super Ljava/lang/Object;
.source "PanoramaUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/PanoramaUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PanoramaUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PanoramaUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    iget-object v1, p0, Lcom/android/camera/component/PanoramaUI$14;->this$0:Lcom/android/camera/component/PanoramaUI;

    check-cast p1, Lcom/android/camera/OneValueEvent;

    invoke-virtual {p1}, Lcom/android/camera/OneValueEvent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    #calls: Lcom/android/camera/component/PanoramaUI;->updateIndicatorLocation(Z)V
    invoke-static {v1, v0}, Lcom/android/camera/component/PanoramaUI;->access$2200(Lcom/android/camera/component/PanoramaUI;Z)V

    return-void
.end method
