.class Lcom/android/mms/ui/ConversationListBaseActivity$10;
.super Lcom/android/mms/util/PresentReceiver;
.source "ConversationListBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2952
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListBaseActivity$10;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    invoke-direct {p0}, Lcom/android/mms/util/PresentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionScreenOff(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2956
    const-string v0, "ConversationListBaseActivity"

    const-string v1, "on screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2959
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBlocklist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2960
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$10;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListBaseActivity;->finishActivity(I)V

    .line 2961
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$10;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    if-eqz v0, :cond_1

    .line 2962
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListBaseActivity$10;->this$0:Lcom/android/mms/ui/ConversationListBaseActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationListBaseActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    .line 2966
    :cond_1
    return-void
.end method
