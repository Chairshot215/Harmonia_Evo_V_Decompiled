.class Lcom/android/camera/component/NewMediaBroadcaster$3;
.super Ljava/lang/Object;
.source "NewMediaBroadcaster.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/NewMediaBroadcaster;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/NewMediaBroadcaster;


# direct methods
.method constructor <init>(Lcom/android/camera/component/NewMediaBroadcaster;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/NewMediaBroadcaster$3;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 2

    check-cast p1, Lcom/android/camera/actionscreen/ActionScreenEvent;

    invoke-virtual {p1}, Lcom/android/camera/actionscreen/ActionScreenEvent;->getCloseReason()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/NewMediaBroadcaster$3;->this$0:Lcom/android/camera/component/NewMediaBroadcaster;

    #calls: Lcom/android/camera/component/NewMediaBroadcaster;->checkAndBroadcastIntent()V
    invoke-static {v0}, Lcom/android/camera/component/NewMediaBroadcaster;->access$100(Lcom/android/camera/component/NewMediaBroadcaster;)V

    :cond_0
    return-void
.end method
