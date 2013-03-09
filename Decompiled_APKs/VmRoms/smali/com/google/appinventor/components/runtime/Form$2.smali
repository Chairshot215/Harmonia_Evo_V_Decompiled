.class Lcom/google/appinventor/components/runtime/Form$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->Initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const-string v1, "Initialize"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    const/4 v1, 0x1

    #setter for: Lcom/google/appinventor/components/runtime/Form;->screenInitialized:Z
    invoke-static {v0, v1}, Lcom/google/appinventor/components/runtime/Form;->access$202(Lcom/google/appinventor/components/runtime/Form;Z)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$2;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
