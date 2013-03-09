.class Lcom/android/mms/ui/ComposeMessageActivity$97;
.super Lcom/android/mms/util/PresentReceiver;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 16805
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$97;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Lcom/android/mms/util/PresentReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionScreenOff(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 16809
    const-string v0, "ComposeMessageActivity"

    const-string v1, "on screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16811
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16812
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$97;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/category/CategorySelector;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16813
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$97;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCategorySelector:Lcom/android/mms/category/CategorySelector;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$16500(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/category/CategorySelector;

    move-result-object v0

    sget-object v1, Lcom/android/mms/category/Category;->GENERAL:Lcom/android/mms/category/Category;

    invoke-virtual {v0, v1}, Lcom/android/mms/category/CategorySelector;->switchTo(Lcom/android/mms/category/Category;)V

    .line 16817
    :cond_0
    const-wide/16 v0, -0x2

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$Utils;->updateCurrentThreadID(J)J

    .line 16818
    return-void
.end method
