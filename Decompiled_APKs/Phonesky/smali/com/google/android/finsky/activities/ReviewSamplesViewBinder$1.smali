.class Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;
.super Ljava/lang/Object;
.source "ReviewSamplesViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->onDataChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    #getter for: Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;
    invoke-static {v0}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->access$100(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder$1;->this$0:Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;

    #getter for: Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;
    invoke-static {v1}, Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;->access$000(Lcom/google/android/finsky/activities/ReviewSamplesViewBinder;)Lcom/google/android/finsky/api/model/Document;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAllReviews(Lcom/google/android/finsky/api/model/Document;)V

    .line 116
    return-void
.end method
