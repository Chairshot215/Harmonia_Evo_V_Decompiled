.class Lfr/clockwidget/lpsense/AppPickerActivity$2;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfr/clockwidget/lpsense/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfr/clockwidget/lpsense/AppPickerActivity;


# direct methods
.method constructor <init>(Lfr/clockwidget/lpsense/AppPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 931
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 933
    const/4 v3, 0x0

    .line 934
    .local v3, appFound:Z
    const/4 v2, 0x0

    .line 935
    .local v2, appActivity:Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 936
    .local v4, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 937
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$13(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 939
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 946
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 947
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v6, v6, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentAppName:Ljava/lang/String;

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    iget-object v6, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v6, v6, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    invoke-static {v5, v2}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #appActivity:Ljava/lang/String;
    .end local v3           #appFound:Z
    .end local v4           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    const-wide/16 v6, 0x0

    invoke-static {v5, v6, v7}, Lfr/clockwidget/lpsense/UpdateService;->scheduleUpdate(Landroid/content/Context;J)V

    .line 960
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-virtual {v5}, Lfr/clockwidget/lpsense/AppPickerActivity;->finish()V

    .line 961
    :goto_2
    return-void

    .line 939
    .restart local v0       #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2       #appActivity:Ljava/lang/String;
    .restart local v3       #appFound:Z
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 940
    .local v1, activity:Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v7, v7, Lfr/clockwidget/lpsense/AppPickerActivity;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 941
    const/4 v3, 0x1

    .line 942
    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 943
    goto :goto_0

    .line 951
    .end local v1           #activity:Landroid/content/pm/ResolveInfo;
    :cond_2
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    const v6, 0x7f08004e

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 955
    .end local v0           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #appActivity:Ljava/lang/String;
    .end local v3           #appFound:Z
    .end local v4           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapAppKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapPkgKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapPackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    iget-object v5, p0, Lfr/clockwidget/lpsense/AppPickerActivity$2;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    iget-object v5, v5, Lfr/clockwidget/lpsense/AppPickerActivity;->mTapActKey:Ljava/lang/String;

    invoke-static {v5, v6}, Lfr/clockwidget/lpsense/PreferencesActivity;->setTapActivity(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
