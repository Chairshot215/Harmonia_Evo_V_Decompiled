.class Lcom/htc/android/epst/ListItemsActivity$24;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->makeEditingStringDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$value:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1856
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$24;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput-object p2, p0, Lcom/htc/android/epst/ListItemsActivity$24;->val$value:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1858
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 1859
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/epst/translator/Translator;->getInputVerifier()Lcom/htc/android/epst/InputVerifier;

    move-result-object v0

    .line 1860
    .local v0, verifier:Lcom/htc/android/epst/InputVerifier;
    if-eqz v0, :cond_0

    .line 1861
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/htc/android/epst/InputVerifier;->check(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$24;->val$value:Landroid/widget/EditText;

    invoke-interface {v0}, Lcom/htc/android/epst/InputVerifier;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1865
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1870
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1875
    return-void
.end method
