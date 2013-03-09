.class Lcom/htc/android/mail/MailListTab$15;
.super Ljava/lang/Object;
.source "MailListTab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailListTab;->initSearchBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailListTab;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailListTab;)V
    .locals 0
    .parameter

    .prologue
    .line 1205
    iput-object p1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1207
    invoke-static {}, Lcom/htc/android/mail/MailListTab;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MailListTab"

    const-string v2, "press ClearIcon"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchBox:Lcom/htc/widget/HeaderBarInput;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1209
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 1210
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    invoke-virtual {v1}, Lcom/htc/android/mail/MailListTab;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1211
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1212
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->focusIn(Landroid/view/View;)V

    .line 1213
    iget-object v1, p0, Lcom/htc/android/mail/MailListTab$15;->this$0:Lcom/htc/android/mail/MailListTab;

    iget-object v1, v1, Lcom/htc/android/mail/MailListTab;->mMailListSearchBar:Lcom/htc/android/mail/widget/MailSearchBar;

    iget-object v1, v1, Lcom/htc/android/mail/widget/MailSearchBar;->mSearchField:Landroid/widget/AutoCompleteTextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1214
    return-void
.end method
