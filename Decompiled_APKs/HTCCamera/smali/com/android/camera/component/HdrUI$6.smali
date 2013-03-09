.class Lcom/android/camera/component/HdrUI$6;
.super Ljava/lang/Object;
.source "HdrUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HdrUI;->registerListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HdrUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HdrUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HdrUI$6;->this$0:Lcom/android/camera/component/HdrUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HdrUI$6;->this$0:Lcom/android/camera/component/HdrUI;

    #calls: Lcom/android/camera/component/HdrUI;->openCaptureUI()V
    invoke-static {v0}, Lcom/android/camera/component/HdrUI;->access$400(Lcom/android/camera/component/HdrUI;)V

    return-void
.end method
