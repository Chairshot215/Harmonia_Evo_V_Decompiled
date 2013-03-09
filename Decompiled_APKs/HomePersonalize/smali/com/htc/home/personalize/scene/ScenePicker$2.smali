.class Lcom/htc/home/personalize/scene/ScenePicker$2;
.super Ljava/lang/Object;
.source "ScenePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/ScenePicker;->initButtonListener()V
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
    .line 266
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$2;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$2;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #getter for: Lcom/htc/home/personalize/scene/ScenePicker;->mCurrentMode:I
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$000(Lcom/htc/home/personalize/scene/ScenePicker;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 269
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$2;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    const/4 v1, 0x0

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->switchMode(I)V
    invoke-static {v0, v1}, Lcom/htc/home/personalize/scene/ScenePicker;->access$300(Lcom/htc/home/personalize/scene/ScenePicker;I)V

    .line 271
    :cond_0
    return-void
.end method
