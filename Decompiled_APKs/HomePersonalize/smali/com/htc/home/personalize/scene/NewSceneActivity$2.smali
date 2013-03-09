.class Lcom/htc/home/personalize/scene/NewSceneActivity$2;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/scene/NewSceneActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/NewSceneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$2;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$2;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    invoke-virtual {v0}, Lcom/htc/home/personalize/scene/NewSceneActivity;->finish()V

    .line 231
    return-void
.end method
