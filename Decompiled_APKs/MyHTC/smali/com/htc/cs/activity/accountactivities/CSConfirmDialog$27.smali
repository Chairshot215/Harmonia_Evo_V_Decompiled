.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createTermDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 578
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 581
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    iget-object v0, v0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->webview:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 585
    :cond_0
    :goto_0
    return v1

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$27;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    goto :goto_0
.end method
