.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;
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

.field final synthetic val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

.field final synthetic val$appPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$appPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$appPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$4;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v2, v2, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    const/4 v3, 0x0

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->confirmRefundApp(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$200(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 271
    return-void
.end method
