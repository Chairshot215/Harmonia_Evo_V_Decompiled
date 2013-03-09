.class Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v3}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v2}, Lcom/google/android/finsky/api/model/Document;->getImages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v0, v0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;

    iget-object v1, v1, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToImagesLightbox(Lcom/google/android/finsky/api/model/Document;II)V

    goto :goto_0
.end method
