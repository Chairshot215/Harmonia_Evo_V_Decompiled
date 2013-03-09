.class Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;
.super Ljava/lang/Object;
.source "FreeSongOfTheDayAlbumViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->prepareAndPopulateContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

.field final synthetic val$doc:Lcom/google/android/finsky/api/model/Document;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;Lcom/google/android/finsky/api/model/Document;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    .line 150
    iget-object v0, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    #getter for: Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->access$300(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->val$doc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    #getter for: Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mCookie:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->access$100(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder$2;->this$0:Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;

    #getter for: Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->mReferrerUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;->access$200(Lcom/google/android/finsky/activities/FreeSongOfTheDayAlbumViewBinder;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method
