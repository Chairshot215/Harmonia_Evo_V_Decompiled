.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->setupActionButtons(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 257
    const v1, 0x7f070109

    const v2, 0x7f07019f

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->newInstance(III)Lcom/google/android/finsky/activities/SimpleAlertDialog;

    move-result-object v0

    .line 259
    .local v0, dialog:Lcom/google/android/finsky/activities/SimpleAlertDialog;
    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$3;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v1}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/SimpleAlertDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 260
    return-void
.end method
