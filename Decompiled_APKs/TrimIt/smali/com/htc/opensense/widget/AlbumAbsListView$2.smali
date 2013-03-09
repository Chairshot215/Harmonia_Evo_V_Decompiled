.class Lcom/htc/opensense/widget/AlbumAbsListView$2;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "AlbumAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/AlbumAbsListView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/AlbumAbsListView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/AlbumAbsListView;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3002
    iput-object p1, p0, Lcom/htc/opensense/widget/AlbumAbsListView$2;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performEditorAction(I)Z
    .locals 4
    .parameter "editorAction"

    .prologue
    const/4 v1, 0x0

    .line 3014
    const/4 v2, 0x6

    if-ne p1, v2, :cond_1

    .line 3015
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$2;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 3018
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 3019
    iget-object v2, p0, Lcom/htc/opensense/widget/AlbumAbsListView$2;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/AlbumAbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3021
    :cond_0
    const/4 v1, 0x1

    .line 3023
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 3007
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$2;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1300(Lcom/htc/opensense/widget/AlbumAbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/htc/opensense/widget/AlbumAbsListView$2;->this$0:Lcom/htc/opensense/widget/AlbumAbsListView;

    #getter for: Lcom/htc/opensense/widget/AlbumAbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Lcom/htc/opensense/widget/AlbumAbsListView;->access$1300(Lcom/htc/opensense/widget/AlbumAbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
