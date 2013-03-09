.class Lcom/htc/home/personalize/scene/NewSceneActivity$4;
.super Ljava/lang/Object;
.source "NewSceneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/scene/NewSceneActivity;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$4;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    iput-object p2, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$4;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/home/personalize/scene/NewSceneActivity$4;->this$0:Lcom/htc/home/personalize/scene/NewSceneActivity;

    #getter for: Lcom/htc/home/personalize/scene/NewSceneActivity;->mEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/home/personalize/scene/NewSceneActivity;->access$100(Lcom/htc/home/personalize/scene/NewSceneActivity;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
