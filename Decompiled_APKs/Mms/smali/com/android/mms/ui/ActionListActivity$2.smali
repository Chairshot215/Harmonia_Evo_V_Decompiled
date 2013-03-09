.class Lcom/android/mms/ui/ActionListActivity$2;
.super Ljava/lang/Object;
.source "ActionListActivity.java"

# interfaces
.implements Lcom/android/mms/ui/HtcSaveToContactsDialogView$ICreateButtonOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ActionListActivity;->getSaveToContactDialogView()Lcom/android/mms/ui/HtcSaveToContactsDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ActionListActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ActionListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/android/mms/ui/ActionListActivity$2;->this$0:Lcom/android/mms/ui/ActionListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity$2;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #getter for: Lcom/android/mms/ui/ActionListActivity;->mContent:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/ActionListActivity;->access$300(Lcom/android/mms/ui/ActionListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ActionListActivity$2;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #getter for: Lcom/android/mms/ui/ActionListActivity;->mIsPhoneNumMode:Z
    invoke-static {v2}, Lcom/android/mms/ui/ActionListActivity;->access$400(Lcom/android/mms/ui/ActionListActivity;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity$2;->this$0:Lcom/android/mms/ui/ActionListActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/mms/ui/ActionListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    return-void
.end method
