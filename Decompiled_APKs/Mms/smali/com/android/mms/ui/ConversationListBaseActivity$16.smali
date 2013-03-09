.class Lcom/android/mms/ui/ConversationListBaseActivity$16;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->getSelectPhoneNumberDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

.field final synthetic val$bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3766
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$16;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$16;->val$bundle:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$16;->val$bundle:Landroid/os/Bundle;

    const-string v1, "selected"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3777
    return-void
.end method
