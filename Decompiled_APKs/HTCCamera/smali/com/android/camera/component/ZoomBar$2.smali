.class Lcom/android/camera/component/ZoomBar$2;
.super Ljava/lang/Object;
.source "ZoomBar.java"

# interfaces
.implements Lcom/android/camera/IEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/component/ZoomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ZoomBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ZoomBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/android/camera/Event;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v8, p1

    check-cast v8, Lcom/android/camera/KeyEvent;

    invoke-virtual {v8}, Lcom/android/camera/KeyEvent;->getKeyCode()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    const/4 v3, -0x1

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    :goto_1
    invoke-virtual {v8}, Lcom/android/camera/KeyEvent;->setHandled()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    iget-object v1, p0, Lcom/android/camera/component/ZoomBar$2;->this$0:Lcom/android/camera/component/ZoomBar;

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/component/ZoomBar;->sendMessage(Lcom/android/camera/component/Component;IIILjava/lang/Object;Z)Z

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
