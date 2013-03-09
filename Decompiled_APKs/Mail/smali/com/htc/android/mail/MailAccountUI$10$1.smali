.class Lcom/htc/android/mail/MailAccountUI$10$1;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailAccountUI$10;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/MailAccountUI$10;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailAccountUI$10;)V
    .locals 0
    .parameter

    .prologue
    .line 642
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$10$1;->this$1:Lcom/htc/android/mail/MailAccountUI$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 644
    if-eqz p2, :cond_0

    .line 645
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$10$1;->this$1:Lcom/htc/android/mail/MailAccountUI$10;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI$10;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mDesc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 647
    :cond_0
    return-void
.end method
