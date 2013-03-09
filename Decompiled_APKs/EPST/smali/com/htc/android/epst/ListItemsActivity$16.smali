.class Lcom/htc/android/epst/ListItemsActivity$16;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->makeEditingSidNidDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;ILandroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1632
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$16;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput p2, p0, Lcom/htc/android/epst/ListItemsActivity$16;->val$index:I

    iput-object p3, p0, Lcom/htc/android/epst/ListItemsActivity$16;->val$editText:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 1634
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$16;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity$16;->val$index:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/android/epst/ListItemsActivity;->modifySidNid(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/epst/ListItemsActivity;->access$1900(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/epst/translator/Translator;->getInputVerifier()Lcom/htc/android/epst/InputVerifier;

    move-result-object v0

    .line 1636
    .local v0, verifier:Lcom/htc/android/epst/InputVerifier;
    if-eqz v0, :cond_0

    .line 1637
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/ListItemsActivity$16;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/InputVerifier;->check(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$16;->val$editText:Landroid/widget/EditText;

    invoke-interface {v0}, Lcom/htc/android/epst/InputVerifier;->getPrompt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 1641
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
    .line 1646
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1651
    return-void
.end method
