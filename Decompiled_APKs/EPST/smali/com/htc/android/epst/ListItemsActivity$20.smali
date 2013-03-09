.class Lcom/htc/android/epst/ListItemsActivity$20;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->makeEditingIPDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1767
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$20;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput p2, p0, Lcom/htc/android/epst/ListItemsActivity$20;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 1769
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$20;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/htc/android/epst/ListItemsActivity$20;->val$index:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/htc/android/epst/ListItemsActivity;->modifyIPAddress(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/htc/android/epst/ListItemsActivity;->access$2000(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/android/epst/ListItemsActivity;->access$1802(Ljava/lang/String;)Ljava/lang/String;

    .line 1770
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/epst/translator/Translator;->getInputVerifier()Lcom/htc/android/epst/InputVerifier;

    move-result-object v0

    .line 1771
    .local v0, verifier:Lcom/htc/android/epst/InputVerifier;
    if-eqz v0, :cond_0

    .line 1772
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/android/epst/ListItemsActivity$20;->val$index:I

    invoke-interface {v0, v1, v2}, Lcom/htc/android/epst/InputVerifier;->check(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$20;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-interface {v0}, Lcom/htc/android/epst/InputVerifier;->getPrompt()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1776
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
    .line 1780
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1784
    return-void
.end method
