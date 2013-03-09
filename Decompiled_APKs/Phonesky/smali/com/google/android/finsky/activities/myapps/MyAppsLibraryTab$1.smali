.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Lcom/google/android/finsky/layout/OverviewBucketEntry$OnActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;-><init>(Landroid/content/Context;Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;Lcom/google/android/finsky/navigationmanager/NavigationManager;Lcom/google/android/finsky/utils/BitmapLoader;Lcom/google/android/finsky/api/DfeApi;Lcom/google/android/finsky/activities/myapps/OpenDetailsHandler;Lcom/google/android/finsky/api/model/DfeToc;Lcom/google/android/finsky/library/AccountLibrary;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/google/android/finsky/api/model/Document;)V
    .locals 3
    .parameter "doc"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/finsky/api/model/Document;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/google/android/finsky/utils/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->confirmArchiveDocs(Ljava/util/List;)V

    .line 81
    return-void
.end method
