.class Lcom/htc/home/personalize/scene/ScenePicker$3;
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
    .line 277
    iput-object p1, p0, Lcom/htc/home/personalize/scene/ScenePicker$3;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/htc/home/personalize/scene/ScenePicker$3;->this$0:Lcom/htc/home/personalize/scene/ScenePicker;

    #calls: Lcom/htc/home/personalize/scene/ScenePicker;->startBrowserHtcDirect()V
    invoke-static {v0}, Lcom/htc/home/personalize/scene/ScenePicker;->access$400(Lcom/htc/home/personalize/scene/ScenePicker;)V

    .line 280
    return-void
.end method
