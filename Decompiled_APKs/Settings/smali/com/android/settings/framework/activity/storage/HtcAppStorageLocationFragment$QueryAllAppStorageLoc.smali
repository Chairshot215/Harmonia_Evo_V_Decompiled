.class Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;
.super Ljava/lang/Object;
.source "HtcAppStorageLocationFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QueryAllAppStorageLoc"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 97
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    invoke-virtual {v5}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 98
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.settings.category.APP_STORAGE_SETTINGS"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const/16 v5, 0x80

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 107
    .local v3, resolveInfos:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v0, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 120
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    const/4 v4, 0x0

    .line 122
    .local v4, title:Ljava/lang/String;
    iget v5, v0, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 132
    :goto_1
    iget-object v5, p0, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment$QueryAllAppStorageLoc;->this$0:Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->plugInAppStorageLocation(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v4}, Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;->access$000(Lcom/android/settings/framework/activity/storage/HtcAppStorageLocationFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 128
    :cond_1
    iget-object v4, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    .line 134
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    return-void
.end method
