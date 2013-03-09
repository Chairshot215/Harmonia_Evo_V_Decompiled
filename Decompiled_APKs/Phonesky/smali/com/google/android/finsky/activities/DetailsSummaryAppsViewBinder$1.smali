.class Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;
.super Ljava/lang/Object;
.source "DetailsSummaryAppsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->syncDynamicSection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    iput-object p2, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->this$0:Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;

    #getter for: Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->mInstaller:Lcom/google/android/finsky/receivers/Installer;
    invoke-static {v0}, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;->access$000(Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder;)Lcom/google/android/finsky/receivers/Installer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/DetailsSummaryAppsViewBinder$1;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/receivers/Installer;->cancel(Ljava/lang/String;)V

    .line 174
    return-void
.end method
