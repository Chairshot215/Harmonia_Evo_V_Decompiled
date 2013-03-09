.class Lcom/htc/android/mail/MailAccountUI$3;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/MailAccountUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailAccountUI;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$3;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 274
    if-eqz p2, :cond_0

    move-object v0, p1

    .line 276
    check-cast v0, Landroid/widget/EditText;

    .line 277
    .local v0, view:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 285
    .end local v0           #view:Landroid/widget/EditText;
    :cond_0
    :goto_0
    return-void

    .line 280
    .restart local v0       #view:Landroid/widget/EditText;
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$3;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$3;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 282
    .local v1, where:I
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$3;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v2, v2, Lcom/htc/android/mail/MailAccountUI;->mEmailAddress:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
