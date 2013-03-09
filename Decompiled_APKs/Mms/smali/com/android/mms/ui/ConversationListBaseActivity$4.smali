.class Lcom/android/mms/ui/ConversationListBaseActivity$4;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->newSaveButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

.field final synthetic val$add:Ljava/lang/String;

.field final synthetic val$isPhoneNumber:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->val$add:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->val$isPhoneNumber:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 1461
    const/4 v0, 0x0

    .line 1462
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->val$add:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->val$isPhoneNumber:Z

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 1464
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1465
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$4;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissDialog(I)V

    .line 1466
    return-void
.end method
