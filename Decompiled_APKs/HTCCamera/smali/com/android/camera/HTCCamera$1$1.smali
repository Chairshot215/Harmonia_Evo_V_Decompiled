.class Lcom/android/camera/HTCCamera$1$1;
.super Ljava/lang/Object;
.source "HTCCamera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/HTCCamera$1;->onEvent(Lcom/android/camera/Event;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/HTCCamera$1;

.field final synthetic val$event:Lcom/android/camera/Event;


# direct methods
.method constructor <init>(Lcom/android/camera/HTCCamera$1;Lcom/android/camera/Event;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/HTCCamera$1$1;->this$1:Lcom/android/camera/HTCCamera$1;

    iput-object p2, p0, Lcom/android/camera/HTCCamera$1$1;->val$event:Lcom/android/camera/Event;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/HTCCamera$1$1;->this$1:Lcom/android/camera/HTCCamera$1;

    iget-object v0, v0, Lcom/android/camera/HTCCamera$1;->this$0:Lcom/android/camera/HTCCamera;

    iget-object v1, p0, Lcom/android/camera/HTCCamera$1$1;->val$event:Lcom/android/camera/Event;

    invoke-virtual {v0, v1}, Lcom/android/camera/HTCCamera;->onEvent(Lcom/android/camera/Event;)V

    return-void
.end method
