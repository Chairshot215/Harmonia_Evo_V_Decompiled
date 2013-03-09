.class public Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
.super Lcom/android/htccontacts/app/BaseCarouselActivity;
.source "GroupLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "GROUP_ID"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field private static final TAG:Ljava/lang/String; = "GroupLayerCarouselActivty"

.field private static final TAG_GROUP_INFO_AND_ACTION:Ljava/lang/String; = "GROUP_INFO_AND_ACTION"

.field private static final TAG_GROUP_MEMBER:Ljava/lang/String; = "GROUP_MEMBER"


# instance fields
.field mCacheCount:I

.field protected mGroupId:J

.field mGroupIsReadOnly:I

.field mGroupName:Ljava/lang/String;

.field mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isDebug()Z

    move-result v0

    sput-boolean v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mCacheCount:I

    .line 56
    new-instance v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    invoke-direct {v0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    .line 179
    return-void
.end method

.method private addGroupInfoAndActionTab(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 103
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "GROUP_INFO_AND_ACTION"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 104
    const v2, 0x7f0a01a1

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 105
    const v2, 0x20802e3

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 106
    const v2, 0x20802e2

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 107
    const v2, 0x2080397

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 108
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/group/GroupDetailView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "GROUP_ID"

    iget-wide v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 110
    const-string v2, "GROUP_NAME"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v2, "group_is_read_only"

    iget v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupIsReadOnly:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 114
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 115
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-void
.end method

.method private addGroupMemberTab(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, tabSpecList:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    new-instance v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;

    invoke-direct {v1}, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;-><init>()V

    .line 120
    .local v1, tabSpec:Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;
    const-string v2, "GROUP_MEMBER"

    iput-object v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->tag:Ljava/lang/String;

    .line 121
    const v2, 0x7f0a01a2

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->titleStringRes:I

    .line 122
    const v2, 0x20802e5

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->restDrawableRes:I

    .line 123
    const v2, 0x20802e4

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->onDrawableRes:I

    .line 124
    const v2, 0x2080398

    iput v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->overlayDrawableRes:I

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v3, Lcom/android/htccontacts/group/GroupPeopleView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 126
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "GROUP_ID"

    iget-wide v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupId:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const-string v2, "GROUP_NAME"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    const-string v2, "group_is_read_only"

    iget v3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupIsReadOnly:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 130
    iput-object v0, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->launchIntent:Landroid/content/Intent;

    .line 131
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;->removable:Z

    .line 132
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private resolveIntent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupId:J

    .line 91
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    .line 92
    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupIsReadOnly:I

    .line 94
    const-string v1, "com.android.contacts.action.LIST_STARRED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "Favorite_8656150684447252476_6727701920173350445"

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    .line 96
    iput v4, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupIsReadOnly:I

    .line 98
    :cond_0
    const-string v1, "summ_count"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mCacheCount:I

    .line 99
    return-void
.end method


# virtual methods
.method public getCache()Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    return-object v0
.end method

.method protected getLocalTabSpec()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 143
    .local v0, tabSpecList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/htccontacts/app/BaseCarouselActivity$TabSpec;>;"
    invoke-direct {p0, v0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->addGroupMemberTab(Ljava/util/List;)V

    .line 144
    invoke-direct {p0, v0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->addGroupInfoAndActionTab(Ljava/util/List;)V

    .line 145
    return-object v0
.end method

.method protected getPluginFeature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, "AddPeopleGroupLayerTab"

    return-object v0
.end method

.method protected getUniqueCarouselId()I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->requestWindowFeature(I)Z

    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->resolveIntent()V

    .line 62
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onPause()V

    .line 73
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseCarouselActivity;->onResume()V

    .line 68
    return-void
.end method

.method protected processPluginIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .parameter "intent"

    .prologue
    .line 172
    const-string v0, "GROUP_ID"

    iget-wide v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 173
    const-string v0, "GROUP_NAME"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    sget-boolean v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "GroupLayerCarouselActivty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processPluginIntent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") - GROUP_ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", GROUP_NAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-object p1
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
    .line 149
    .local p5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    invoke-direct {v0}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iput-boolean p1, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->hasPhoto:Z

    .line 153
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iput-object p2, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    .line 154
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iput-object p3, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->title:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iput p4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->count:I

    .line 156
    iput p4, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mCacheCount:I

    .line 157
    iput-object p3, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mInfoCache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    iput-object p5, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->memberlist:Ljava/util/ArrayList;

    .line 159
    return-void
.end method
