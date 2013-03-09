.class Lcom/android/mms/ui/ConversationListBaseActivity$3;
.super Ljava/lang/Object;
.source "ConversationListBaseActivity.java"

# interfaces
.implements Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;->newCreateButtonClickListener(Ljava/lang/String;Z)Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;
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
    .line 1437
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->val$add:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->val$isPhoneNumber:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .prologue
    .line 1439
    const/4 v1, 0x0

    .line 1440
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->val$add:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->val$isPhoneNumber:Z

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1443
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1450
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListBaseActivity$3;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListBaseActivity;->dismissDialog(I)V

    .line 1451
    return-void

    .line 1444
    :catch_0
    move-exception v0

    .line 1445
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1446
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 1447
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0
.end method
