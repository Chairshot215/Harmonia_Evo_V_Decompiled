.class Lcom/htc/android/mail/ComposeActivity$90;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/ComposeActivity;->loadUI(Landroid/database/Cursor;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ComposeActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/ComposeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10978
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$90;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10981
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$90;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->subjectText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$12100(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 10982
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$90;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->subjectText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$12100(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 10985
    :goto_0
    return-void

    .line 10984
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$90;->this$0:Lcom/htc/android/mail/ComposeActivity;

    #getter for: Lcom/htc/android/mail/ComposeActivity;->bodyText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/htc/android/mail/ComposeActivity;->access$7600(Lcom/htc/android/mail/ComposeActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0
.end method
