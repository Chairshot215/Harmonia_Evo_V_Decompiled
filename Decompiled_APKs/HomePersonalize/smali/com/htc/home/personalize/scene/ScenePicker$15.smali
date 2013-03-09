.class Lcom/htc/home/personalize/scene/ScenePicker$15;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->showUpdateCurrentSceneToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/ScenePicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/ScenePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1377
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$15;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$15;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/ScenePicker$15;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-virtual {v1}, Lcom/htc/home/personalize/scene/ScenePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1382
    return-void
.end method
