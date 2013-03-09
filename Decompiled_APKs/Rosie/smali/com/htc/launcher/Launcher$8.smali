.class Lcom/htc/launcher/Launcher$8;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/Launcher;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/Launcher;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$searchBar:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/htc/launcher/Launcher;Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1973
    iput-object p1, p0, Lcom/htc/launcher/Launcher$8;->this$0:Lcom/htc/launcher/Launcher;

    iput-object p2, p0, Lcom/htc/launcher/Launcher$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iput-object p3, p0, Lcom/htc/launcher/Launcher$8;->val$searchBar:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/htc/launcher/Launcher$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/launcher/Launcher$8;->val$searchBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1979
    iget-object v0, p0, Lcom/htc/launcher/Launcher$8;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/htc/launcher/Launcher$8;->val$searchBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1981
    :cond_0
    return-void
.end method
