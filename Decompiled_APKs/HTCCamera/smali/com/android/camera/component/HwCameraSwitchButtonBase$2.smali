.class Lcom/android/camera/component/HwCameraSwitchButtonBase$2;
.super Ljava/lang/Object;
.source "HwCameraSwitchButtonBase.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/HwCameraSwitchButtonBase;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;


# direct methods
.method constructor <init>(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/HwCameraSwitchButtonBase$2;->this$0:Lcom/android/camera/component/HwCameraSwitchButtonBase;

    #calls: Lcom/android/camera/component/HwCameraSwitchButtonBase;->registerReceivers()V
    invoke-static {v0}, Lcom/android/camera/component/HwCameraSwitchButtonBase;->access$400(Lcom/android/camera/component/HwCameraSwitchButtonBase;)V

    return-void
.end method
