.class Lcom/android/camera/component/HandShakeUI$1;
.super Ljava/lang/Object;
.source "HandShakeUI.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HandShakeUI;-><init>(Lcom/android/camera/HTCCamera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HandShakeUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HandShakeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HandShakeUI$1;->this$0:Lcom/android/camera/component/HandShakeUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HandShakeUI$1;->this$0:Lcom/android/camera/component/HandShakeUI;

    invoke-virtual {v0}, Lcom/android/camera/component/HandShakeUI;->initialize()V

    return-void
.end method
