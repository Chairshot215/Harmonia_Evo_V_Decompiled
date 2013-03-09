.class Lcom/android/mms/ui/ComposeMessageActivity$8;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Lcom/android/mms/ui/HtcSaveToContactsDialogView$ISaveButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setContactDialogView(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$isPhoneNum:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3669
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$address:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$isPhoneNum:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 3671
    const/4 v0, 0x0

    .line 3672
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$address:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->val$isPhoneNum:Z

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 3676
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 3678
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$8;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->dismissDialog(I)V

    .line 3679
    return-void
.end method
