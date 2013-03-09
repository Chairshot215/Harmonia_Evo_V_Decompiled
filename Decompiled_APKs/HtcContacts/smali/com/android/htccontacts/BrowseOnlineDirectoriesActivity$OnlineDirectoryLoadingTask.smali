.class Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;
.super Landroid/os/AsyncTask;
.source "BrowseOnlineDirectoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnlineDirectoryLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilterIntent:Landroid/content/Intent;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private onlineDirectoryItemList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;)V
    .locals 4
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 163
    invoke-virtual {p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mFilterIntent:Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mFilterIntent:Landroid/content/Intent;

    const-string v1, "com.htc.intent.category.ONLINE_DIRECTORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    iget-object v0, p1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    #getter for: Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->access$000(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x2090071

    const v3, 0x2020010

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;-><init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Landroid/content/Context;II)V

    iput-object v0, p1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    .line 168
    iget-object v0, p1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->setNotifyOnChange(Z)V

    .line 170
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->onlineDirectoryItemList:Ljava/util/TreeSet;

    .line 171
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 174
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v6, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    invoke-virtual {v6}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->checkExchangeReady()Z

    move-result v6

    #setter for: Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mIsExchange:Z
    invoke-static {v5, v6}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->access$102(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Z)Z

    .line 175
    const-string v5, "BrowseOnlineDirectoriesActivity"

    const-string v6, "Looking for online directory plugins..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    const v6, 0x7f0a0039

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, defaultName:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->onlineDirectoryItemList:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->clear()V

    .line 178
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mFilterIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 179
    .local v4, resolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 180
    .local v2, info:Landroid/content/pm/ResolveInfo;
    new-instance v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    invoke-direct {v3, v9}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;-><init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$1;)V

    .line 181
    .local v3, item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->labelRes:I

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    .line 182
    iget-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->labelRes:I

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    .line 185
    iget-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    iput-object v0, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->label:Ljava/lang/CharSequence;

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 193
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->intent:Landroid/content/Intent;

    .line 194
    iget-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->intent:Landroid/content/Intent;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    iget-object v5, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;->intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->onlineDirectoryItemList:Ljava/util/TreeSet;

    invoke-virtual {v5, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v5, "BrowseOnlineDirectoriesActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Online directory plugin found ... <Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PackageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", labelRes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->labelRes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v7, v7, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 202
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    .end local v3           #item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    :cond_2
    return-object v9
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 6
    .parameter "result"

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->clear()V

    .line 207
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->onlineDirectoryItemList:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;

    .line 208
    .local v1, item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    invoke-virtual {v2, v1}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    .end local v1           #item:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryItem;
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    if-nez v2, :cond_1

    .line 211
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    new-instance v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineInsertNewListAdapter;

    iget-object v4, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v5, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v5, v5, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineInsertNewListAdapter;-><init>(Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;Lcom/htc/widget/InsertNewListAdapterInterface;)V

    iput-object v3, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 212
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v3, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v3, v3, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    :goto_1
    return-void

    .line 215
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryLoadingTask;->this$0:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;

    iget-object v2, v2, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity;->mOnlineDirectoryAdapter:Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/BrowseOnlineDirectoriesActivity$OnlineDirectoryAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
