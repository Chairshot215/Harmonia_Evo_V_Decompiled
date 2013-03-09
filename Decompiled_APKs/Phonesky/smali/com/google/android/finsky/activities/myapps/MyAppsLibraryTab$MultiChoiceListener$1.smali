.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->onDestroyActionMode(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;->this$0:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->access$500(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 316
    return-void
.end method
