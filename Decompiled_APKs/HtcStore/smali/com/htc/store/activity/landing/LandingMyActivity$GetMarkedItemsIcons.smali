.class Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;
.super Landroid/os/AsyncTask;
.source "LandingMyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/activity/landing/LandingMyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetMarkedItemsIcons"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mDownloading:Z

.field private mIconWidthHeight:I

.field private mImageTTL:J

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/store/module/vo/MyActivityItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/store/activity/landing/LandingMyActivity;


# direct methods
.method private constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 833
    iput-object p1, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/store/activity/landing/LandingMyActivity;Lcom/htc/store/activity/landing/LandingMyActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 833
    invoke-direct {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;-><init>(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 850
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "doInBackground: GetMarkedItemsIconsTask"

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 851
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 852
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v4, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/store/module/vo/MyActivityItem;

    .line 854
    .local v1, item:Lcom/htc/store/module/vo/MyActivityItem;
    invoke-virtual {v1}, Lcom/htc/store/module/vo/MyActivityItem;->getItemIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 855
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 856
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 859
    .end local v1           #item:Lcom/htc/store/module/vo/MyActivityItem;
    .end local v3           #url:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 860
    .restart local v3       #url:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    iget v6, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mIconWidthHeight:I

    iget-wide v7, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mImageTTL:J

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->downloadIcon(Ljava/lang/String;IJ)Z
    invoke-static {v5, v3, v6, v7, v8}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3300(Lcom/htc/store/activity/landing/LandingMyActivity;Ljava/lang/String;IJ)Z

    move-result v2

    .line 861
    .local v2, publishProgress:Z
    if-eqz v2, :cond_3

    .line 862
    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->publishProgress([Ljava/lang/Object;)V

    .line 864
    :cond_3
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v5}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3400(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 865
    :cond_4
    iput-boolean v9, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mDownloading:Z

    .line 866
    iget-object v5, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v6, 0x4

    invoke-static {v5, v6}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    .line 871
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #publishProgress:Z
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 902
    iget-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mDownloading:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4
    .parameter "result"

    .prologue
    const/4 v3, 0x0

    .line 890
    invoke-static {}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onPostExecute: GetMarkedItemsIconsTask"

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 891
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3800(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3900(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$4000(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    iput-boolean v3, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mDownloading:Z

    .line 894
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #calls: Lcom/htc/store/activity/landing/LandingMyActivity;->updateProgress()V
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2700(Lcom/htc/store/activity/landing/LandingMyActivity;)V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 833
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 842
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAccessHelper:Lcom/htc/store/provider/AccessHelper;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$1500(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/provider/AccessHelper;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/htc/store/provider/AccessHelper;->getMyActivityItemsByStatus(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mItems:Ljava/util/ArrayList;

    .line 843
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mDownloading:Z

    .line 844
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    invoke-virtual {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mIconWidthHeight:I

    .line 845
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mPreferenceManager:Lcom/htc/store/module/PreferenceManager;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3200(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/PreferenceManager;->getImageTTL()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->mImageTTL:J

    .line 846
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnDestroy:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3500(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnBackPressed:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3600(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/BaseActivity;->mOnPause:Z
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$3700(Lcom/htc/store/activity/landing/LandingMyActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    #getter for: Lcom/htc/store/activity/landing/LandingMyActivity;->mAdapter:Lcom/htc/store/module/adapter/MyActivityAdapter;
    invoke-static {v0}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2300(Lcom/htc/store/activity/landing/LandingMyActivity;)Lcom/htc/store/module/adapter/MyActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/store/module/adapter/MyActivityAdapter;->notifyDataSetChanged()V

    .line 886
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v0, p0, Lcom/htc/store/activity/landing/LandingMyActivity$GetMarkedItemsIcons;->this$0:Lcom/htc/store/activity/landing/LandingMyActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/htc/store/activity/landing/LandingMyActivity;->access$2676(Lcom/htc/store/activity/landing/LandingMyActivity;I)I

    goto :goto_0
.end method
