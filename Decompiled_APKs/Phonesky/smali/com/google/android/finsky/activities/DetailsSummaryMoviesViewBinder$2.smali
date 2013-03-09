.class Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;
.super Ljava/lang/Object;
.source "DetailsSummaryMoviesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->setupListOfferButton(Landroid/accounts/Account;Ljava/util/List;Landroid/widget/Button;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

.field final synthetic val$documents:Ljava/util/ArrayList;

.field final synthetic val$lowestOfferIndex:I

.field final synthetic val$offers:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$offers:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$documents:Ljava/util/ArrayList;

    iput p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$lowestOfferIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    invoke-virtual {v2}, Lcom/google/android/finsky/fragments/PageFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 180
    .local v1, fragmentManager:Landroid/support/v4/app/FragmentManager;
    const-string v2, "movie_offer_resolution_dialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$offers:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$documents:Ljava/util/ArrayList;

    const v4, 0x7f07012a

    iget v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->val$lowestOfferIndex:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->newInstance(Ljava/util/List;Ljava/util/ArrayList;II)Lcom/google/android/finsky/activities/OfferResolutionDialog;

    move-result-object v0

    .line 185
    .local v0, dialog:Lcom/google/android/finsky/activities/OfferResolutionDialog;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryMoviesViewBinder;->mContainerFragment:Lcom/google/android/finsky/fragments/PageFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 186
    const-string v2, "movie_offer_resolution_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/OfferResolutionDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
