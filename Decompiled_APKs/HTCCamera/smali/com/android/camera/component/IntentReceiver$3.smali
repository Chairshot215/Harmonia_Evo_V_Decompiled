.class Lcom/android/camera/component/IntentReceiver$3;
.super Ljava/lang/Object;
.source "IntentReceiver.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/IntentReceiver;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/IntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/camera/component/IntentReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    #getter for: Lcom/android/camera/component/IntentReceiver;->m_IsReceiverRegistered:Z
    invoke-static {v0}, Lcom/android/camera/component/IntentReceiver;->access$200(Lcom/android/camera/component/IntentReceiver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/IntentReceiver$3;->this$0:Lcom/android/camera/component/IntentReceiver;

    invoke-virtual {v0}, Lcom/android/camera/component/IntentReceiver;->unregisterReceiver()V

    :cond_0
    return-void
.end method
