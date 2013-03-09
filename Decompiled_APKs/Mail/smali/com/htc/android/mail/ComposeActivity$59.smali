.class Lcom/htc/android/mail/ComposeActivity$59;
.super Ljava/lang/Object;
.source "ComposeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ComposeActivity;
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
    .line 7920
    iput-object p1, p0, Lcom/htc/android/mail/ComposeActivity$59;->this$0:Lcom/htc/android/mail/ComposeActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 7922
    iget-object v0, p0, Lcom/htc/android/mail/ComposeActivity$59;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, p0, Lcom/htc/android/mail/ComposeActivity$59;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v1, v1, Lcom/htc/android/mail/ComposeActivity;->addContactName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/android/mail/ComposeActivity$59;->this$0:Lcom/htc/android/mail/ComposeActivity;

    iget-object v2, v2, Lcom/htc/android/mail/ComposeActivity;->addContactAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/htc/android/mail/ComposeActivity;->InsertContactProcess(Ljava/lang/String;Ljava/lang/String;)V

    .line 7923
    return-void
.end method
