.class Lcom/google/android/finsky/layout/EpisodeList$1;
.super Ljava/lang/Object;
.source "EpisodeList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/EpisodeList;->updateSeasonBuyButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/EpisodeList;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/EpisodeList;)V
    .locals 0
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/google/android/finsky/layout/EpisodeList$1;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/google/android/finsky/layout/EpisodeList$1;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    #getter for: Lcom/google/android/finsky/layout/EpisodeList;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/layout/EpisodeList;->access$200(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/EpisodeList$1;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    #getter for: Lcom/google/android/finsky/layout/EpisodeList;->mSelectedSeason:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/layout/EpisodeList;->access$100(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/EpisodeList$1;->this$0:Lcom/google/android/finsky/layout/EpisodeList;

    #getter for: Lcom/google/android/finsky/layout/EpisodeList;->mPageFragment:Lcom/google/android/finsky/fragments/PageFragment;
    invoke-static {v2}, Lcom/google/android/finsky/layout/EpisodeList;->access$300(Lcom/google/android/finsky/layout/EpisodeList;)Lcom/google/android/finsky/fragments/PageFragment;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/layout/EpisodeSnippet;->handleBuyButtonClick(Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/fragments/PageFragment;)V

    .line 424
    return-void
.end method
