.class Lcom/google/android/finsky/activities/FlagItemFragment$3;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$3;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "error"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$3;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/activities/FlagItemFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, message:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$3;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    #getter for: Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;
    invoke-static {v1}, Lcom/google/android/finsky/activities/FlagItemFragment;->access$200(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/finsky/fragments/PageFragmentHost;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$3;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment;

    #getter for: Lcom/google/android/finsky/activities/FlagItemFragment;->mPageFragmentHost:Lcom/google/android/finsky/fragments/PageFragmentHost;
    invoke-static {v1}, Lcom/google/android/finsky/activities/FlagItemFragment;->access$300(Lcom/google/android/finsky/activities/FlagItemFragment;)Lcom/google/android/finsky/fragments/PageFragmentHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/finsky/fragments/PageFragmentHost;->goBack()V

    goto :goto_0
.end method
