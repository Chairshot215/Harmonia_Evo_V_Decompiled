.class Lcom/htc/android/mail/MailAccountUI$2;
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
    .line 262
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$2;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 264
    if-nez p2, :cond_0

    move-object v1, p1

    .line 265
    check-cast v1, Landroid/widget/EditText;

    .line 266
    .local v1, view:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/mail/MailAccountUI$2;->this$0:Lcom/htc/android/mail/MailAccountUI;

    #calls: Lcom/htc/android/mail/MailAccountUI;->handleAppendDomain(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v0}, Lcom/htc/android/mail/MailAccountUI;->access$000(Lcom/htc/android/mail/MailAccountUI;Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    .end local v0           #value:Ljava/lang/String;
    .end local v1           #view:Landroid/widget/EditText;
    :cond_0
    return-void
.end method
