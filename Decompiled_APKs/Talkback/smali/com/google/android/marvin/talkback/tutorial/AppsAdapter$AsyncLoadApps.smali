.class Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;
.super Landroid/os/AsyncTask;
.source "AppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoadApps"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;


# direct methods
.method private constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->this$0:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;-><init>(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->doInBackground([Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/util/List;
    .locals 6
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    array-length v4, p1

    move v2, v3

    :goto_0
    if-lt v2, v4, :cond_0

    .line 103
    return-object v1

    .line 99
    :cond_0
    aget-object v0, p1, v2

    .line 100
    .local v0, param:Landroid/content/Intent;
    iget-object v5, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->this$0:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    #getter for: Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->access$0(Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter$AsyncLoadApps;->this$0:Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;

    invoke-virtual {v0, p1}, Lcom/google/android/marvin/talkback/tutorial/AppsAdapter;->addAll(Ljava/util/Collection;)V

    .line 109
    return-void
.end method
