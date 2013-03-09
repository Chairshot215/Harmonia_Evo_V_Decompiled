.class Lcom/htc/launcher/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->enableAppsSearch(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$edit:Landroid/widget/EditText;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3982
    iput-object p1, p0, Lcom/htc/launcher/Launcher$11;->this$0:Lcom/htc/launcher/Launcher;

    iput-object p2, p0, Lcom/htc/launcher/Launcher$11;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/htc/launcher/Launcher$11;->val$edit:Landroid/widget/EditText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3985
    iget-object v0, p0, Lcom/htc/launcher/Launcher$11;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 3986
    iget-object v0, p0, Lcom/htc/launcher/Launcher$11;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$11;->val$edit:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3987
    :cond_0
    return-void
.end method
