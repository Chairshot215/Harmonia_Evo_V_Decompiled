.class public Lcom/google/android/finsky/activities/ReviewDialogListener;
.super Ljava/lang/Object;
.source "ReviewDialogListener.java"

# interfaces
.implements Lcom/google/android/finsky/activities/RateReviewDialog$Listener;
.implements Lcom/google/android/finsky/activities/ReviewDialog$Listener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

.field private final mDoc:Lcom/google/android/finsky/api/model/Document;

.field private final mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

.field private final mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

.field private final mParentFragment:Landroid/support/v4/app/Fragment;

.field private final mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;Lcom/google/android/finsky/layout/OwnedActions;)V
    .locals 0
    .parameter "context"
    .parameter "navManager"
    .parameter "parentFragment"
    .parameter "document"
    .parameter "detailsData"
    .parameter "reviewBinder"
    .parameter "ownedActions"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    .line 46
    iput-object p3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mParentFragment:Landroid/support/v4/app/Fragment;

    .line 47
    iput-object p4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 48
    iput-object p6, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    .line 49
    iput-object p5, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    .line 50
    iput-object p7, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/finsky/activities/ReviewDialogListener;->updateUserReview(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/activities/ReviewDialogListener;)Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    return-object v0
.end method

.method private updateUserReview(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V
    .locals 8
    .parameter "rating"
    .parameter "title"
    .parameter "comment"
    .parameter "userProfile"

    .prologue
    const/4 v5, 0x1

    .line 99
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    if-eqz v0, :cond_2

    .line 100
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/google/android/finsky/api/DfeApi;->invalidateDetailsCache(Ljava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->invalidateCurrentReviewUrl()V

    .line 103
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mReviewSamplesViewBinder:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->refresh()V

    .line 104
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    invoke-virtual {v0, p1}, Lcom/google/android/finsky/layout/OwnedActions;->updateRating(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->getUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v6

    .line 111
    .local v6, review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    if-nez v6, :cond_1

    .line 114
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/DfeDetails;->initializeUserReview()Lcom/google/android/finsky/remoting/protos/Rev$Review;

    move-result-object v6

    .line 115
    if-eqz p4, :cond_1

    .line 116
    invoke-virtual {v6, p4}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setPlusProfile(Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 120
    :cond_1
    invoke-virtual {v6, p1}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setStarRating(I)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 121
    invoke-virtual {v6, p2}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 122
    invoke-virtual {v6, p3}, Lcom/google/android/finsky/remoting/protos/Rev$Review;->setComment(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Rev$Review;

    .line 124
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mOwnedActions:Lcom/google/android/finsky/layout/OwnedActions;

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDoc:Lcom/google/android/finsky/api/model/Document;

    iget-object v2, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    iget-object v3, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v4, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mParentFragment:Landroid/support/v4/app/Fragment;

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mDetailsData:Lcom/google/android/finsky/api/model/DfeDetails;

    invoke-virtual {v7}, Lcom/google/android/finsky/api/model/DfeDetails;->isReady()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/layout/OwnedActions;->setDocument(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/api/model/DfeDetails;Lcom/google/android/finsky/navigationmanager/NavigationManager;Landroid/support/v4/app/Fragment;Z)V

    .line 129
    .end local v6           #review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_2
    return-void

    .line 125
    .restart local v6       #review:Lcom/google/android/finsky/remoting/protos/Rev$Review;
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onDeleteReview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "docId"
    .parameter "commentId"

    .prologue
    .line 81
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$3;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$3;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    new-instance v2, Lcom/google/android/finsky/activities/ReviewDialogListener$4;

    invoke-direct {v2, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$4;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->deleteReview(Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 92
    return-void
.end method

.method public onRateReview(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V
    .locals 3
    .parameter "docId"
    .parameter "reviewId"
    .parameter "newRating"

    .prologue
    .line 138
    new-instance v0, Lcom/google/android/finsky/api/model/DfeRateReview;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v1

    invoke-virtual {p3}, Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;->getRpcId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/google/android/finsky/api/model/DfeRateReview;-><init>(Lcom/google/android/finsky/api/DfeApi;Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    .local v0, request:Lcom/google/android/finsky/api/model/DfeRateReview;
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$5;

    invoke-direct {v1, p0, p3}, Lcom/google/android/finsky/activities/ReviewDialogListener$5;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;Lcom/google/android/finsky/activities/RateReviewDialog$CommentRating;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addDataChangedListener(Lcom/google/android/finsky/api/model/OnDataChangedListener;)V

    .line 149
    new-instance v1, Lcom/google/android/finsky/activities/ReviewDialogListener$6;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$6;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/api/model/DfeRateReview;->addErrorListener(Lcom/android/volley/Response$ErrorListener;)V

    .line 155
    return-void
.end method

.method public onSaveReview(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;Z)V
    .locals 9
    .parameter "docId"
    .parameter "rating"
    .parameter "title"
    .parameter "comment"
    .parameter "userProfile"
    .parameter "isPublic"

    .prologue
    .line 60
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v6

    new-instance v0, Lcom/google/android/finsky/activities/ReviewDialogListener$1;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/finsky/activities/ReviewDialogListener$1;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/finsky/remoting/protos/DocAnnotations$PlusProfile;)V

    new-instance v8, Lcom/google/android/finsky/activities/ReviewDialogListener$2;

    invoke-direct {v8, p0}, Lcom/google/android/finsky/activities/ReviewDialogListener$2;-><init>(Lcom/google/android/finsky/activities/ReviewDialogListener;)V

    move-object v1, v6

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move v6, p6

    move-object v7, v0

    invoke-interface/range {v1 .. v8}, Lcom/google/android/finsky/api/DfeApi;->addReview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 72
    return-void
.end method

.method protected toast(II)V
    .locals 1
    .parameter "resourceId"
    .parameter "duration"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewDialogListener;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    return-void
.end method
