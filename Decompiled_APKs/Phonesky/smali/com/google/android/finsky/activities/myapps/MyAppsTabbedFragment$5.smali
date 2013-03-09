.class Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;
.super Ljava/lang/Object;
.source "MyAppsTabbedFragment.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->archiveDocs(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 727
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 4
    .parameter "volleyError"

    .prologue
    .line 730
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->canChangeFragmentManagerState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    #calls: Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->dismissArchiveProgressDialog()V
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->access$900(Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;)V

    .line 732
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment$5;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/android/finsky/utils/ErrorStrings;->get(Landroid/content/Context;Lcom/android/volley/VolleyError;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/ErrorDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/finsky/activities/ErrorDialog;

    .line 735
    :cond_0
    return-void
.end method
