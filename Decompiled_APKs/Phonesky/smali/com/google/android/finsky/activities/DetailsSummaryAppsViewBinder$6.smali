.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;
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
    .line 321
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 324
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v2}, Lcom/google/android/finsky/api/model/Document;->getDocId()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, packageName:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$6;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iget-object v2, v2, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 327
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 329
    return-void
.end method
