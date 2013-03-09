.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;
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

.field final synthetic val$appHasSubscriptions:Z

.field final synthetic val$appPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;Lcom/google/android/finsky/activities/AppActionAnalyzer;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$appPackageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iput-boolean p4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$appHasSubscriptions:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$appPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-boolean v2, v2, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isRefundable:Z

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-object v3, v3, Lcom/google/android/finsky/activities/AppActionAnalyzer;->refundAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-boolean v4, v4, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledSystemApp:Z

    iget-object v5, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$actions:Lcom/google/android/finsky/activities/AppActionAnalyzer;

    iget-boolean v5, v5, Lcom/google/android/finsky/activities/AppActionAnalyzer;->isInstalledOwnedPackage:Z

    iget-boolean v6, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$2;->val$appHasSubscriptions:Z

    #calls: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->refundAndUninstallAsset(Ljava/lang/String;ZLjava/lang/String;ZZZ)V
    invoke-static/range {v0 .. v6}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$100(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;ZLjava/lang/String;ZZZ)V

    .line 246
    return-void
.end method
