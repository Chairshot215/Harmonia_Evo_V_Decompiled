.class Lcom/htc/android/mail/MailAccountUI$22;
.super Ljava/lang/Object;
.source "MailAccountUI.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 2288
    iput-object p1, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2293
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    and-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/MailAccountUI;->VerifyAccount:I

    .line 2295
    if-eqz p2, :cond_0

    .line 2296
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2297
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2298
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPasswordLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2299
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2300
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 2309
    :goto_0
    return-void

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsernameLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2304
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutUsername:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2305
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPasswordLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2306
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 2307
    iget-object v0, p0, Lcom/htc/android/mail/MailAccountUI$22;->this$0:Lcom/htc/android/mail/MailAccountUI;

    iget-object v0, v0, Lcom/htc/android/mail/MailAccountUI;->mOutServer:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
