.class public Lcom/android/htccontacts/group/GroupDetailTabActivity;
.super Lcom/htc/widget/TabSwitchActivity;
.source "GroupDetailTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;
    }
.end annotation


# static fields
.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "GROUP_ID"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field private static final TAG:Ljava/lang/String; = "GroupDetailTabActivty"


# instance fields
.field private mAppContext:Landroid/content/Context;

.field mCacheCount:I

.field protected mGroupId:J

.field mGroupName:Ljava/lang/String;

.field private mHtcContext:Landroid/content/Context;

.field mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchActivity;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mHtcContext:Landroid/content/Context;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mCacheCount:I

    .line 146
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    invoke-direct {v0}, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    .line 264
    return-void
.end method

.method private resolveIntent()V
    .locals 4

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupId:J

    .line 191
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupName:Ljava/lang/String;

    .line 192
    const-string v1, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupName:Ljava/lang/String;

    .line 195
    :cond_0
    const-string v1, "summ_count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mCacheCount:I

    .line 196
    return-void
.end method

.method private setTabs()V
    .locals 12

    .prologue
    .line 202
    :try_start_0
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mHtcContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mHtcContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 209
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v8, 0x20900b2

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 213
    .local v7, vw:Landroid/view/View;
    invoke-virtual {p0, v7}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->setContentView(Landroid/view/View;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->getTabHost()Lcom/htc/widget/TabSwitchHost;

    move-result-object v3

    .line 216
    .local v3, mPanelHost:Lcom/htc/widget/TabSwitchHost;
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 218
    .local v4, r:Landroid/content/res/Resources;
    const v8, 0x7f0a01a1

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 219
    .local v6, tabSendGroup:Ljava/lang/String;
    const v8, 0x7f0a01a2

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 223
    .local v5, tabMemberView:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mAppContext:Landroid/content/Context;

    const-class v10, Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 224
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "GROUP_ID"

    iget-wide v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupId:J

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 225
    const-string v8, "GROUP_NAME"

    iget-object v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    invoke-virtual {v3, v5}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    const v9, 0x20802e5

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const v10, 0x20802e4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x2080398

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v5, v9, v10, v11}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 234
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mAppContext:Landroid/content/Context;

    const-class v10, Lcom/android/htccontacts/group/GroupDetailView;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 235
    const-string v8, "GROUP_ID"

    iget-wide v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupId:J

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 236
    const-string v8, "GROUP_NAME"

    iget-object v9, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {v3, v6}, Lcom/htc/widget/TabSwitchHost;->newTabSpec(Ljava/lang/String;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    const v9, 0x20802e3

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const v10, 0x20802e2

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const v11, 0x2080397

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v8, v6, v9, v10, v11}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/htc/widget/TabSwitchHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/htc/widget/TabSwitchHost$TabSpec;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/htc/widget/TabSwitchHost;->addTab(Lcom/htc/widget/TabSwitchHost$TabSpec;)V

    .line 245
    return-void

    .line 204
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mPanelHost:Lcom/htc/widget/TabSwitchHost;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #tabMemberView:Ljava/lang/String;
    .end local v6           #tabSendGroup:Ljava/lang/String;
    .end local v7           #vw:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 205
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "GroupDetailTabActivty"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public getCache()Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 150
    invoke-super {p0, p1}, Lcom/htc/widget/TabSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mAppContext:Landroid/content/Context;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->requestWindowFeature(I)Z

    .line 153
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->resolveIntent()V

    .line 154
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupDetailTabActivity;->setTabs()V

    .line 156
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onDestroy()V

    .line 180
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 186
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onPause()V

    .line 174
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 160
    invoke-super {p0}, Lcom/htc/widget/TabSwitchActivity;->onResume()V

    .line 165
    return-void
.end method

.method public setCache(ZLandroid/graphics/Bitmap;Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "hasPhoto"
    .parameter "b"
    .parameter "title"
    .parameter "count"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    invoke-direct {v0}, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iput-boolean p1, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->hasPhoto:Z

    .line 252
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iput-object p2, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iput-object p3, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->title:Ljava/lang/String;

    .line 254
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iput p4, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->count:I

    .line 255
    iput p4, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mCacheCount:I

    .line 256
    iput-object p3, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mGroupName:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupDetailTabActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;

    iput-object p5, v0, Lcom/android/htccontacts/group/GroupDetailTabActivity$GroupInfoCache;->memberlist:Ljava/util/ArrayList;

    .line 258
    return-void
.end method
