.class Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;
.super Ljava/lang/Object;
.source "MyAppsLibraryTab.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiChoiceListener"
.end annotation


# instance fields
.field private final mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;


# direct methods
.method private constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    iput-object p1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    return-object v0
.end method

.method private getCheckedDocuments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/api/model/Document;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 323
    .local v0, checkedItems:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-static {v4}, Lcom/google/android/finsky/utils/Lists;->newArrayList(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 324
    .local v1, docs:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/api/model/Document;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 325
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 326
    .local v3, position:I
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v4}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getAdapter()Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/google/android/finsky/activities/myapps/MyAppsListAdapter;->getDocument(I)Lcom/google/android/finsky/api/model/Document;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 330
    .end local v3           #position:I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "actionMode"
    .parameter "menuItem"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->getCheckedDocuments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->handleMenuItem(Ljava/util/List;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 288
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0f0004

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 289
    iget-object v1, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;
    invoke-static {v1, p1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$402(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 290
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .parameter "actionMode"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mCurrentActionMode:Landroid/view/ActionMode;
    invoke-static {v0, v1}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$402(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 312
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    invoke-virtual {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener$1;-><init>(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 319
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 3
    .parameter "actionMode"
    .parameter "position"
    .parameter "id"
    .parameter "checked"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->mTab:Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;

    #getter for: Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->mFragment:Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;
    invoke-static {v0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;->access$000(Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab;)Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/finsky/activities/myapps/MyAppsLibraryTab$MultiChoiceListener;->getCheckedDocuments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/activities/myapps/MyAppsTabbedFragment;->adjustMenu(Ljava/util/List;Landroid/view/Menu;)V

    .line 283
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 295
    const/4 v0, 0x0

    return v0
.end method
