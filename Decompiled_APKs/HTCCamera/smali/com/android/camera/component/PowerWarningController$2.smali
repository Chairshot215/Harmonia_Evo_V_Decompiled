.class Lcom/android/camera/component/PowerWarningController$2;
.super Ljava/lang/Object;
.source "PowerWarningController.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/PowerWarningController;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/PowerWarningController;


# direct methods
.method constructor <init>(Lcom/android/camera/component/PowerWarningController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/PowerWarningController$2;->this$0:Lcom/android/camera/component/PowerWarningController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/PowerWarningController$2;->this$0:Lcom/android/camera/component/PowerWarningController;

    #calls: Lcom/android/camera/component/PowerWarningController;->sendPowerRecWarning()V
    invoke-static {v0}, Lcom/android/camera/component/PowerWarningController;->access$100(Lcom/android/camera/component/PowerWarningController;)V

    return-void
.end method
