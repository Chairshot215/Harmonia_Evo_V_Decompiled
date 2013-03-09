.class Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;
.super Ljava/lang/Object;
.source "MyAppsInstalledAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$SectionAdapter;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

.field final synthetic val$sectionAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iput-object p2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;->val$sectionAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;->val$sectionAction:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;

    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    iget-object v1, v1, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$2;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter$DocumentBulkAction;->run(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsInstalledAdapter;)V

    .line 489
    return-void
.end method
