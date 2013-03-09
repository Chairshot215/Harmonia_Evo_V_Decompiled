.class Lcom/google/appinventor/components/runtime/Form$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Form;

.field final synthetic val$newOrientation:I


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    iput p2, p0, Lcom/google/appinventor/components/runtime/Form$1;->val$newOrientation:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->val$newOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    move v0, v3

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/Form;->ScreenOrientationChanged()V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->frameLayout:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/google/appinventor/components/runtime/Form;->access$000(Lcom/google/appinventor/components/runtime/Form;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Form$1;->this$0:Lcom/google/appinventor/components/runtime/Form;

    #getter for: Lcom/google/appinventor/components/runtime/Form;->androidUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/Form;->access$100(Lcom/google/appinventor/components/runtime/Form;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
