.class Lfr/clockwidget/lpsense/AppPickerActivity$1;
.super Landroid/os/Handler;
.source "AppPickerActivity.java"


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
    iput-object p1, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    .line 124
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 127
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 173
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 129
    :pswitch_1
    const/4 v2, 0x0

    .line 130
    .local v2, newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mJustCreated:Z
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$0(Lfr/clockwidget/lpsense/AppPickerActivity;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 132
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    invoke-virtual {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->getInstalledApps()Ljava/util/List;

    move-result-object v2

    .line 133
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->updateAppList(Ljava/util/List;)Z
    invoke-static {v3, v2}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$1(Lfr/clockwidget/lpsense/AppPickerActivity;Ljava/util/List;)Z

    .line 136
    :cond_1
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->initAppList(Ljava/util/List;)V
    invoke-static {v3, v2}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$2(Lfr/clockwidget/lpsense/AppPickerActivity;Ljava/util/List;)V

    .line 137
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 140
    .end local v2           #newList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    .line 141
    .local v1, labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;>;"
    if-eqz v1, :cond_0

    .line 142
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$4(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->bulkUpdateLabels(Ljava/util/Map;)V

    goto :goto_0

    .line 146
    .end local v1           #labelMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lfr/clockwidget/lpsense/AppPickerActivity$AppLabel;>;"
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    .line 147
    .local v0, iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 148
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mAppInfoAdapter:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$4(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoAdapter;->bulkUpdateIcons(Ljava/util/Map;)V

    goto :goto_0

    .line 152
    .end local v0           #iconMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    :pswitch_4
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    const/4 v4, 0x1

    #setter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z
    invoke-static {v3, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$5(Lfr/clockwidget/lpsense/AppPickerActivity;Z)V

    .line 153
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$3(Lfr/clockwidget/lpsense/AppPickerActivity;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 156
    :pswitch_5
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mCache:Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$6(Lfr/clockwidget/lpsense/AppPickerActivity;)Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;

    move-result-object v3

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->isEmpty()Z
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;->access$0(Lfr/clockwidget/lpsense/AppPickerActivity$AppInfoCache;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$7(Lfr/clockwidget/lpsense/AppPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 157
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->initListView()V
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$8(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    .line 158
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #setter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z
    invoke-static {v3, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$9(Lfr/clockwidget/lpsense/AppPickerActivity;Z)V

    .line 160
    :cond_2
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mLoadLabels:Z
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$10(Lfr/clockwidget/lpsense/AppPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 161
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #getter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$7(Lfr/clockwidget/lpsense/AppPickerActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->initListView()V
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$8(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    .line 163
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #setter for: Lfr/clockwidget/lpsense/AppPickerActivity;->mSetListViewLater:Z
    invoke-static {v3, v4}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$9(Lfr/clockwidget/lpsense/AppPickerActivity;Z)V

    .line 165
    :cond_3
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->doneLoadingData()V
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$11(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    goto/16 :goto_0

    .line 167
    :cond_4
    iget-object v3, p0, Lfr/clockwidget/lpsense/AppPickerActivity$1;->this$0:Lfr/clockwidget/lpsense/AppPickerActivity;

    #calls: Lfr/clockwidget/lpsense/AppPickerActivity;->initResourceThread()V
    invoke-static {v3}, Lfr/clockwidget/lpsense/AppPickerActivity;->access$12(Lfr/clockwidget/lpsense/AppPickerActivity;)V

    goto/16 :goto_0

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
