.class Lcom/htc/android/epst/ListItemsActivity$22;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1793
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1796
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/android/epst/SettingItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1798
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/epst/SettingItem;->getTranslator()Lcom/htc/android/epst/translator/Translator;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/android/epst/translator/Translator;->getInputVerifier()Lcom/htc/android/epst/InputVerifier;

    move-result-object v1

    .line 1799
    .local v1, verifier:Lcom/htc/android/epst/InputVerifier;
    if-eqz v1, :cond_2

    .line 1800
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/android/epst/InputVerifier;->check(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1801
    invoke-interface {v1}, Lcom/htc/android/epst/InputVerifier;->getPrompt()Ljava/lang/String;

    move-result-object v0

    .line 1802
    .local v0, prompt:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1803
    :cond_0
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const v3, 0x7f04004d

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/ListItemsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1805
    :cond_1
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1815
    .end local v0           #prompt:Ljava/lang/String;
    .end local v1           #verifier:Lcom/htc/android/epst/InputVerifier;
    :goto_0
    return-void

    .line 1809
    .restart local v1       #verifier:Lcom/htc/android/epst/InputVerifier;
    :cond_2
    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v2

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$1800()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/android/epst/SettingItem;->setValue(Ljava/lang/String;)V

    .line 1810
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #calls: Lcom/htc/android/epst/ListItemsActivity;->showProgress()V
    invoke-static {v2}, Lcom/htc/android/epst/ListItemsActivity;->access$600(Lcom/htc/android/epst/ListItemsActivity;)V

    .line 1811
    iget-object v2, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    #getter for: Lcom/htc/android/epst/ListItemsActivity;->mUpdater:Lcom/htc/android/epst/SettingValueUpdater;
    invoke-static {v2}, Lcom/htc/android/epst/ListItemsActivity;->access$700(Lcom/htc/android/epst/ListItemsActivity;)Lcom/htc/android/epst/SettingValueUpdater;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/epst/ListItemsActivity$22;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/epst/ListItemsActivity;->access$800()Lcom/htc/android/epst/SettingItem;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/android/epst/SettingValueUpdater;->setSettingValue(Lcom/htc/android/epst/ListItemsActivity;Lcom/htc/android/epst/SettingItem;)V

    .line 1814
    .end local v1           #verifier:Lcom/htc/android/epst/InputVerifier;
    :cond_3
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
