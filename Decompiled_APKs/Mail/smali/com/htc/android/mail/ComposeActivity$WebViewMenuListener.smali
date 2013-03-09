.class Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebViewMenuListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 11723
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ComposeActivity;Lcom/htc/android/mail/ComposeActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11723
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;-><init>(Lcom/htc/android/mail/ComposeActivity;)V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 11725
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-virtual {v1}, Lcom/htc/android/mail/ComposeActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 11726
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0e0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 11727
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->subjectText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$12100(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 11728
    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$WebViewMenuListener;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->subjectText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/htc/android/mail/ComposeActivity;->access$12100(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 11730
    :cond_0
    return-void
.end method
