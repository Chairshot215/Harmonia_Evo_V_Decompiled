.class public Lcom/android/htccontacts/group/GroupPeopleView;
.super Lcom/android/htccontacts/app/ContactsListActivity;
.source "GroupPeopleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;,
        Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;,
        Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;,
        Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;,
        Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;
    }
.end annotation


# static fields
.field protected static final CONTEXT_MENU_REARRANGE:I = 0xff001

.field protected static final DELETE_TOKEN:I = 0x2

.field protected static final DELETE_TOKEN_LIST_BY_PERSON_ID:I = 0x70

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "GROUP_ID"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field protected static final INSERT_TOKEN_LIST_BY_PERSON_ID:I = 0x6f

.field private static final MENU_ADD_GROUP_MEMBER:I = 0x3

.field private static final MENU_DELETE_GROUP:I = 0x2

.field private static final MENU_DELETE_GROUP_MEMBER:I = 0x4

.field private static final MENU_EDIT_GROUP:I = 0x1

.field private static final MENU_EDIT_SMART_GROUP:I = 0x5

.field private static final MENU_REARRANGE_MEMBERS:I = 0x6

.field protected static final QUERY_TOKEN_LIST:I = 0x0

.field protected static final QUERY_TOKEN_NAME:I = 0x1

.field protected static final RESULT_ADD_MEMBER_PICKED:I = 0xd05

.field protected static final RESULT_EDIT_SMART_GROUP:I = 0x270f

.field protected static final RESULT_REANRRAGE:I = 0x18a92

.field protected static final RESULT_REMOVE_MEMBER_PICKED:I = 0x1a0a

.field protected static final START_INDICATOR_MSG:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "HtcGroupPeopleView"

.field protected static final TOKEN_QUERY_PHOTO:I = 0x3

.field protected static mStatusIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MemberProjection:[Ljava/lang/String;

.field private MemberTimesProjection:[Ljava/lang/String;

.field protected final REQUEST_EDIT_GROUP:I

.field private isFirstCreate:Z

.field private mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

.field protected mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

.field protected mContactListHandler:Landroid/os/Handler;

.field protected mContextMenuBundle:Landroid/os/Bundle;

.field private mCursor:Landroid/database/Cursor;

.field private mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

.field protected mGroupDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field protected mGroupId:J

.field protected mGroupIsReadOnly:I

.field protected mGroupName:Ljava/lang/String;

.field protected mGroupPhotoBitmap:Landroid/graphics/Bitmap;

.field protected mGroupSyncId:Ljava/lang/String;

.field private mGroupSystemId:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

.field mIndicatorReqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/PersonIndicatorRequest;",
            ">;"
        }
    .end annotation
.end field

.field mIsDirty:Z

.field mIsSmartGroup:Z

.field mIsSyncable:Z

.field protected mPersonDefaultDrawable:Landroid/graphics/drawable/Drawable;

.field protected mPersonIdIdx:I

.field protected mPersonNameIdx:I

.field protected mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;

.field mRunningProgress:Lcom/htc/app/HtcProgressDialog;

.field private final sGroupBySortKey:Z

.field private final sOrderBySortKey:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;-><init>()V

    .line 104
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->REQUEST_EDIT_GROUP:I

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mHandler:Landroid/os/Handler;

    .line 125
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 128
    iput-boolean v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    .line 129
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->isFirstCreate:Z

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicatorReqList:Ljava/util/ArrayList;

    .line 143
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->sGroupBySortKey:Z

    .line 144
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->sOrderBySortKey:Z

    .line 151
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "lookup"

    aput-object v1, v0, v6

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->MemberProjection:[Ljava/lang/String;

    .line 186
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isSIMSDNEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "lookup"

    aput-object v1, v0, v6

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ext_account_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    :goto_1
    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->MemberTimesProjection:[Ljava/lang/String;

    .line 222
    iput-boolean v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    .line 225
    new-instance v0, Lcom/android/htccontacts/group/GroupPeopleView$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupPeopleView$1;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContactListHandler:Landroid/os/Handler;

    .line 1379
    return-void

    .line 151
    :cond_0
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "lookup"

    aput-object v1, v0, v6

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    goto/16 :goto_0

    .line 186
    :cond_1
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "photo_id"

    aput-object v1, v0, v5

    const-string v1, "lookup"

    aput-object v1, v0, v6

    const-string v1, "ext_account_Type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ext_photo_url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "status_update_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "times"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sort_key"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sort_key_alt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_is_read_only"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "single_is_restricted"

    aput-object v2, v0, v1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/htccontacts/group/GroupPeopleView;)Lcom/android/htccontacts/indicator/IndicatorProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->launchSmartGroup()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/group/GroupPeopleView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/group/GroupPeopleView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParentCacheTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/group/GroupPeopleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->startQueryName()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/group/GroupPeopleView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupSystemId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/group/GroupPeopleView;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupPeopleView;->obtainProgressDialog(Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/group/GroupPeopleView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private clearCallbackOfCacheDrawable()V
    .locals 4

    .prologue
    .line 1391
    sget-object v3, Lcom/android/htccontacts/group/GroupPeopleView;->mStatusIconCache:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 1392
    sget-object v3, Lcom/android/htccontacts/group/GroupPeopleView;->mStatusIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1393
    .local v0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/drawable/Drawable;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 1394
    .local v1, d:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 1395
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 1399
    .end local v0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/drawable/Drawable;>;"
    .end local v1           #d:Landroid/graphics/drawable/Drawable;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private doOpenGroup(JLjava/lang/String;I)V
    .locals 4
    .parameter "groupId"
    .parameter "groupName"
    .parameter "groupIsReadOnly"

    .prologue
    .line 776
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 778
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 779
    const-string v1, "GROUP_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 780
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 783
    return-void
.end method

.method private getParentCacheCount()I
    .locals 2

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 1171
    .local v0, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    iget v1, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mCacheCount:I

    return v1
.end method

.method private getParentCacheTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 1166
    .local v0, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    iget-object v1, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    return-object v1
.end method

.method private handleReanrrage()V
    .locals 1

    .prologue
    .line 1351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1352
    return-void
.end method

.method private isHTCSystemGroup()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchRearrangeMembers()V
    .locals 3

    .prologue
    .line 1057
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.contacts.action.ArrangeOrder"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1058
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1059
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v1, "group_is_read_only"

    iget v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupIsReadOnly:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    const v1, 0x18a92

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1062
    return-void
.end method

.method private launchSmartGroup()V
    .locals 2

    .prologue
    .line 1051
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1052
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/htccontacts/group/SmartGroupConfigurationActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1053
    const/16 v1, 0x270f

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1054
    return-void
.end method

.method private obtainProgressDialog(Ljava/lang/CharSequence;)Ljava/lang/ref/WeakReference;
    .locals 3
    .parameter "message"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 1175
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1176
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1179
    :cond_0
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v0, progress:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, p1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1181
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 1182
    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1183
    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    .line 1184
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method private readParentCache()V
    .locals 6

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .line 492
    .local v2, parent:Lcom/android/htccontacts/group/GroupLayerCarouselActivity;
    invoke-virtual {v2}, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->getCache()Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;

    move-result-object v0

    .line 493
    .local v0, cache:Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;
    const v4, 0x7f070016

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/GroupPeopleView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 494
    .local v1, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    if-eqz v0, :cond_2

    .line 495
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    iget v5, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->count:I

    invoke-virtual {p0, v4, v5}, Lcom/android/htccontacts/group/GroupPeopleView;->initTitle(Ljava/lang/String;I)V

    .line 496
    iget-boolean v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->hasPhoto:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 497
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/provider/HtcContactsContract$Groups;->getDefaultGroupIconResource(Ljava/lang/String;)I

    move-result v3

    .line 498
    .local v3, resId:I
    invoke-virtual {v1, v3}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    .line 506
    .end local v3           #resId:I
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v4, v0, Lcom/android/htccontacts/group/GroupLayerCarouselActivity$GroupInfoCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 504
    :cond_2
    const v4, 0x2080251

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderImage(I)V

    goto :goto_0
.end method

.method private registerFrequencyObserver()V
    .locals 4

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1356
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1357
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 1358
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 1359
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    if-nez v3, :cond_0

    .line 1360
    new-instance v3, Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    .line 1361
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->registerObserver(Ljava/lang/Object;)V

    .line 1364
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method

.method private removeGroups(JZ)V
    .locals 4
    .parameter "id"
    .parameter "isSyncGroup"

    .prologue
    const/4 v3, 0x0

    .line 813
    const/4 v0, 0x0

    .line 814
    .local v0, deleteUri:Landroid/net/Uri;
    if-eqz p3, :cond_0

    .line 815
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 820
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 821
    return-void

    .line 818
    :cond_0
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Groups;->DELETE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private setGroupInfo()V
    .locals 3

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 513
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 516
    const-string v1, "group_is_read_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupIsReadOnly:I

    .line 518
    return-void
.end method

.method private startQueryName()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 825
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 826
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 827
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Groups;->CONTENT_NAME_SUMMARY_URI:Landroid/net/Uri;

    .line 828
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 829
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private unregisterFrequencyObserver()V
    .locals 4

    .prologue
    .line 1367
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    if-eqz v3, :cond_0

    .line 1368
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 1369
    .local v0, app:Landroid/app/Application;
    instance-of v3, v0, Lcom/android/htccontacts/PeopleApp;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 1370
    check-cast v2, Lcom/android/htccontacts/PeopleApp;

    .line 1371
    .local v2, peopleApp:Lcom/android/htccontacts/PeopleApp;
    invoke-virtual {v2}, Lcom/android/htccontacts/PeopleApp;->getFrequencyObservable()Lcom/android/htccontacts/group/FrequencyObservable;

    move-result-object v1

    .line 1373
    .local v1, observable:Lcom/android/htccontacts/group/FrequencyObservable;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/group/FrequencyObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 1374
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mFrequencyConfigObserver:Lcom/android/htccontacts/group/GroupPeopleView$FrequencyConfigObserver;

    .line 1377
    .end local v0           #app:Landroid/app/Application;
    .end local v1           #observable:Lcom/android/htccontacts/group/FrequencyObservable;
    .end local v2           #peopleApp:Lcom/android/htccontacts/PeopleApp;
    :cond_0
    return-void
.end method


# virtual methods
.method protected addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 476
    :cond_0
    return-void
.end method

.method protected doAddMember()V
    .locals 6

    .prologue
    .line 749
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.htccontacts.ACTION_PICK_CONTACT_ADD_MEMBER_WITH_GROUPS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 750
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "group_name"

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v1, idExcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 755
    .local v0, cursorIndex:I
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 756
    .local v2, idIdx:I
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 758
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 761
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-interface {v4, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 763
    const-string v4, "EXCLUDE_ID"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 764
    const/16 v4, 0xd05

    invoke-virtual {p0, v3, v4}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 765
    return-void

    .line 750
    .end local v0           #cursorIndex:I
    .end local v1           #idExcList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #idIdx:I
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected doDeleteGroup(JLjava/lang/String;)V
    .locals 3
    .parameter "groupId"
    .parameter "groupName"

    .prologue
    .line 794
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0199

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019c

    new-instance v2, Lcom/android/htccontacts/group/GroupPeopleView$4;

    invoke-direct {v2, p0, p3}, Lcom/android/htccontacts/group/GroupPeopleView$4;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a019d

    new-instance v2, Lcom/android/htccontacts/group/GroupPeopleView$3;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupPeopleView$3;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 810
    return-void
.end method

.method protected doOnResumeWithourRequery()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->updateIndicator()V

    .line 379
    :cond_0
    return-void
.end method

.method protected doOpenGroup()V
    .locals 4

    .prologue
    .line 787
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v3, Lcom/android/htccontacts/group/GroupEditActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 789
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 791
    return-void
.end method

.method protected doRemoveMember()V
    .locals 3

    .prologue
    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.htccontacts.ACTION_REMOVE_GROUP_MEMBER_CANDIDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "group_name"

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const-string v1, "DELETE_CONTACT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 771
    const/16 v1, 0x1a0a

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 772
    return-void

    .line 769
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected handleCallKey(I)Z
    .locals 9
    .parameter "itemPosition"

    .prologue
    .line 704
    const/4 v3, 0x0

    .line 706
    .local v3, dialIntent:Landroid/content/Intent;
    if-ltz p1, :cond_1

    .line 707
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    .line 709
    .local v5, obj:Ljava/lang/Object;
    instance-of v7, v5, Landroid/database/Cursor;

    if-eqz v7, :cond_1

    move-object v0, v5

    .line 710
    check-cast v0, Landroid/database/Cursor;

    .line 712
    .local v0, contactCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 713
    const-string v7, "_id"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 716
    .local v1, contactId:J
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lcom/android/htccontacts/util/PhoneUtils;->getPrimaryPhoneCursor(JLandroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v6

    .line 720
    .local v6, primaryCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 722
    invoke-static {v0, v6}, Lcom/android/htccontacts/util/PhoneUtils;->generateContactInfoWithNumber(Landroid/database/Cursor;Landroid/database/Cursor;)Landroid/provider/HtcUnionContact$SimpleContactInfo;

    move-result-object v4

    .line 726
    .local v4, info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    iget-object v7, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 727
    new-instance v3, Landroid/content/Intent;

    .end local v3           #dialIntent:Landroid/content/Intent;
    const-string v7, "android.intent.action.CALL_PRIVILEGED"

    iget-object v8, v4, Landroid/provider/HtcUnionContact$SimpleContactInfo;->number:Ljava/lang/String;

    invoke-static {v8}, Lcom/htc/util/phone/DialUtils;->makeDialUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 729
    .restart local v3       #dialIntent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 730
    invoke-static {v3, v4}, Lcom/htc/util/phone/DialUtils;->copyDialExtra(Landroid/content/Intent;Landroid/provider/HtcUnionContact$SimpleContactInfo;)V

    .line 732
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 738
    .end local v0           #contactCursor:Landroid/database/Cursor;
    .end local v1           #contactId:J
    .end local v4           #info:Landroid/provider/HtcUnionContact$SimpleContactInfo;
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #primaryCursor:Landroid/database/Cursor;
    :cond_1
    if-nez v3, :cond_2

    .line 739
    const/4 v7, 0x0

    .line 741
    :goto_0
    return v7

    :cond_2
    invoke-static {v3}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move-result v7

    goto :goto_0
.end method

.method public initTitle(Ljava/lang/String;I)V
    .locals 3
    .parameter "title"
    .parameter "count"

    .prologue
    .line 1044
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 1045
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupIsReadOnly:I

    invoke-static {v1, p1, v2}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1047
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderPrimaryText(Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method protected isFastScrollerEnabled()Z
    .locals 1

    .prologue
    .line 484
    const/4 v0, 0x0

    return v0
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1078
    const/4 v10, -0x1

    move/from16 v0, p2

    if-eq v0, v10, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return-void

    .line 1081
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1082
    .local v2, addedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .local v7, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v10, 0x64

    if-ne v10, p1, :cond_2

    .line 1085
    if-eqz p3, :cond_0

    .line 1086
    const-string v10, "title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1087
    .local v5, name:Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1088
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1089
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 1090
    .local v1, activity:Landroid/app/Activity;
    iput-object v5, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 1091
    instance-of v10, v1, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    if-eqz v10, :cond_0

    .line 1093
    check-cast v1, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;

    .end local v1           #activity:Landroid/app/Activity;
    iput-object v5, v1, Lcom/android/htccontacts/group/GroupLayerCarouselActivity;->mGroupName:Ljava/lang/String;

    goto :goto_0

    .line 1097
    .end local v5           #name:Ljava/lang/String;
    :cond_2
    const/16 v10, 0xd05

    if-ne v10, p1, :cond_5

    .line 1098
    const-string v10, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1099
    .local v8, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "GROUP_ID"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupId:J

    .line 1101
    if-eqz v8, :cond_0

    .line 1102
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1103
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1104
    .local v4, id:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1108
    .end local v4           #id:Ljava/lang/Integer;
    :cond_3
    const/4 v9, 0x0

    .line 1110
    .local v9, task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    iget-boolean v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-eqz v10, :cond_4

    .line 1117
    :goto_2
    if-eqz v9, :cond_0

    .line 1118
    new-instance v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;-><init>(Lcom/android/htccontacts/group/GroupPeopleView$1;)V

    .line 1119
    .local v6, pack:Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;
    iput-object v2, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->addedList:Ljava/util/ArrayList;

    .line 1120
    iput-object v7, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->removeList:Ljava/util/ArrayList;

    .line 1121
    iget-object v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->targetName:Ljava/lang/String;

    .line 1122
    const-string v10, "SELECTED_GROUP_TITLE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->addedtitleList:Ljava/util/ArrayList;

    .line 1123
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1114
    .end local v6           #pack:Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;
    :cond_4
    new-instance v9, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;

    .end local v9           #task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    invoke-direct {v9, p0}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    .restart local v9       #task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    goto :goto_2

    .line 1131
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    :cond_5
    const/16 v10, 0x1a0a

    if-ne v10, p1, :cond_7

    .line 1132
    const-string v10, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1133
    .restart local v8       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "GROUP_ID"

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupId:J

    .line 1135
    if-eqz v8, :cond_0

    .line 1136
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    .line 1137
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1138
    .restart local v4       #id:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1141
    .end local v4           #id:Ljava/lang/Integer;
    :cond_6
    new-instance v9, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;

    invoke-direct {v9, p0}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    .line 1142
    .restart local v9       #task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    new-instance v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;-><init>(Lcom/android/htccontacts/group/GroupPeopleView$1;)V

    .line 1143
    .restart local v6       #pack:Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;
    iput-object v2, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->addedList:Ljava/util/ArrayList;

    .line 1144
    iput-object v7, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->removeList:Ljava/util/ArrayList;

    .line 1145
    iget-object v10, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    iput-object v10, v6, Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;->targetName:Ljava/lang/String;

    .line 1146
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 1153
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #pack:Lcom/android/htccontacts/group/GroupPeopleView$GroupDataPack;
    .end local v8           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9           #task:Lcom/android/htccontacts/group/GroupPeopleView$UpdateFavoriteTask;
    :cond_7
    const/16 v10, 0x270f

    move/from16 v0, p2

    if-ne v10, v0, :cond_8

    .line 1155
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->startQueryName()V

    goto/16 :goto_0

    .line 1156
    :cond_8
    const v10, 0x18a92

    move/from16 v0, p2

    if-ne v10, v0, :cond_9

    .line 1157
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->handleReanrrage()V

    goto/16 :goto_0

    .line 1160
    :cond_9
    invoke-super/range {p0 .. p3}, Lcom/android/htccontacts/app/ContactsListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 661
    .local v0, result:Z
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContextMenuBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContextMenuBundle:Landroid/os/Bundle;

    invoke-static {p1, p0, v1}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->selectContextMenu(Landroid/view/MenuItem;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    .line 665
    :cond_0
    if-nez v0, :cond_1

    .line 666
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0xff001

    if-ne v1, v2, :cond_1

    .line 667
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->launchRearrangeMembers()V

    .line 668
    const/4 v0, 0x1

    .line 672
    :cond_1
    if-nez v0, :cond_2

    .line 673
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 676
    :cond_2
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 262
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->setContentView(I)V

    .line 263
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->setGroupInfo()V

    .line 267
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    .line 268
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0194

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080251

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 271
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080846

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mPersonDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 273
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mResolver:Landroid/content/ContentResolver;

    .line 274
    new-instance v0, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    .line 275
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->initTitle(Ljava/lang/String;I)V

    .line 277
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->readParentCache()V

    .line 279
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-nez v0, :cond_0

    .line 280
    new-instance v0, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->registerForContextMenu(Landroid/view/View;)V

    .line 286
    sget-object v0, Lcom/android/htccontacts/group/GroupPeopleView;->mStatusIconCache:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 287
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/htccontacts/group/GroupPeopleView;->mStatusIconCache:Ljava/util/HashMap;

    .line 294
    :cond_1
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 629
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 630
    .local v2, info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    iget-object v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    instance-of v5, v5, Lcom/htc/widget/HtcListView;

    if-eqz v5, :cond_0

    .line 631
    iget-object v5, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    check-cast v5, Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080700

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 640
    :cond_0
    iget v3, v2, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->position:I

    .line 641
    .local v3, itemPos:I
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 643
    .local v4, obj:Ljava/lang/Object;
    instance-of v5, v4, Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 644
    check-cast v4, Landroid/database/Cursor;

    .end local v4           #obj:Ljava/lang/Object;
    invoke-static {p1, p2, p3, v4, p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->createContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;Landroid/database/Cursor;Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContextMenuBundle:Landroid/os/Bundle;

    .line 654
    .end local v2           #info:Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;
    .end local v3           #itemPos:I
    :cond_1
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v1

    .line 636
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v5, "HtcGroupPeopleView"

    const-string v6, "bad menuInfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const v5, 0x2080324

    const v4, 0x2080323

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 526
    const/4 v0, 0x3

    const v1, 0x7f0a0106

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 528
    const/4 v0, 0x4

    const v1, 0x7f0a0105

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 530
    const v0, 0x7f0a01a6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 532
    const/4 v0, 0x2

    const v1, 0x7f0a01a8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 534
    const/4 v0, 0x5

    const v1, 0x7f0a0322

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 540
    return v3
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 398
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onDestroy()V

    .line 399
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupDefaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 401
    iput-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupDefaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 403
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 404
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 405
    iput-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupPhotoBitmap:Landroid/graphics/Bitmap;

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/group/GroupPeopleView;->unregisterForContextMenu(Landroid/view/View;)V

    .line 410
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    if-eqz v2, :cond_2

    .line 411
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->setActivity(Landroid/app/Activity;)V

    .line 412
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 413
    iput-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    .line 417
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isIndicatorEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v2}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->destroyProcess()V

    .line 421
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 422
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 423
    .local v1, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 421
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 427
    .end local v1           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->unregisterFrequencyObserver()V

    .line 429
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->clearCallbackOfCacheDrawable()V

    .line 430
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 694
    const/4 v0, 0x5

    if-ne v0, p1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->handleCallKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    const/4 v0, 0x1

    .line 700
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/ContactsListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 681
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v3, p3}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 682
    .local v1, item:Ljava/lang/Object;
    instance-of v3, v1, Landroid/database/Cursor;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 683
    check-cast v0, Landroid/database/Cursor;

    .line 684
    .local v0, c:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->getContactUri(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v2

    .line 685
    .local v2, uri:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->getOpenContactDetailIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/group/GroupPeopleView;->startActivity(Landroid/content/Intent;)V

    .line 690
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 688
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 616
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 586
    :pswitch_0
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Edit group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-wide v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupId:J

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    iget v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupIsReadOnly:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/htccontacts/group/GroupPeopleView;->doOpenGroup(JLjava/lang/String;I)V

    goto :goto_0

    .line 591
    :pswitch_1
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Delete group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-wide v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupId:J

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/htccontacts/group/GroupPeopleView;->doDeleteGroup(JLjava/lang/String;)V

    goto :goto_0

    .line 596
    :pswitch_2
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Add group member"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->doAddMember()V

    goto :goto_0

    .line 601
    :pswitch_3
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Remove group member"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->doRemoveMember()V

    goto :goto_0

    .line 606
    :pswitch_4
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Edit smart group"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->launchSmartGroup()V

    goto :goto_0

    .line 611
    :pswitch_5
    const-string v1, "ANALYTIC_HtcContacts"

    const-string v2, "[GroupPeopleView]Rearrange members"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->launchRearrangeMembers()V

    goto :goto_0

    .line 584
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 392
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onPause()V

    .line 393
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->pauseIndicator()V

    .line 394
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onPostResume()V

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->isFirstCreate:Z

    .line 387
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 545
    const/4 v6, 0x2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 546
    .local v4, item:Landroid/view/MenuItem;
    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 547
    .local v5, item2:Landroid/view/MenuItem;
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 548
    .local v2, editItem:Landroid/view/MenuItem;
    const/4 v6, 0x3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 549
    .local v0, addItem:Landroid/view/MenuItem;
    const/4 v6, 0x5

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 550
    .local v3, editsmartItem:Landroid/view/MenuItem;
    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 552
    .local v1, arrangeItem:Landroid/view/MenuItem;
    if-eqz v4, :cond_0

    .line 553
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupSystemId:Ljava/lang/String;

    if-nez v6, :cond_8

    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isHTCSystemGroup()Z

    move-result v6

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    if-eqz v6, :cond_8

    move v6, v7

    :goto_0
    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 555
    :cond_0
    if-eqz v5, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParentCacheCount()I

    move-result v6

    if-lez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-eqz v6, :cond_9

    :cond_1
    move v6, v7

    :goto_1
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 559
    :cond_2
    if-eqz v2, :cond_3

    .line 560
    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 562
    :cond_3
    if-eqz v0, :cond_4

    .line 563
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v6}, Lcom/htc/widget/HeaderBarImage;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 564
    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 570
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 571
    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 573
    :cond_5
    if-eqz v1, :cond_6

    .line 574
    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-nez v6, :cond_b

    move v6, v7

    :goto_3
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 576
    :cond_6
    iget-boolean v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-nez v6, :cond_7

    .line 577
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 579
    :cond_7
    return v7

    :cond_8
    move v6, v8

    .line 553
    goto :goto_0

    :cond_9
    move v6, v8

    .line 556
    goto :goto_1

    .line 566
    :cond_a
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_b
    move v6, v8

    .line 574
    goto :goto_3
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 328
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onResume()V

    .line 331
    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->isFirstCreate:Z

    if-nez v2, :cond_0

    .line 332
    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/android/htccontacts/group/GroupPeopleView;->startIndicator(J)V

    .line 336
    :cond_0
    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsDirty:Z

    if-eqz v2, :cond_6

    .line 337
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParentCacheTitle()Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, title:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 339
    iput-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    .line 341
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getParentCacheCount()I

    move-result v0

    .line 342
    .local v0, cachecount:I
    if-ltz v0, :cond_2

    iget-boolean v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->isFirstCreate:Z

    if-nez v2, :cond_4

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->startQueryName()V

    .line 344
    if-ltz v0, :cond_3

    .line 345
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->initTitle(Ljava/lang/String;I)V

    .line 352
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    const-string v3, "Frequent Contacts"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 354
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    .line 355
    iput-boolean v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSyncable:Z

    .line 361
    :goto_1
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->setTitleBar()V

    .line 363
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->startQuery()V

    .line 364
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->startQueryGroupPhoto()V

    .line 371
    .end local v0           #cachecount:I
    .end local v1           #title:Ljava/lang/String;
    :goto_2
    invoke-static {p0}, Lcom/android/htccontacts/ui/menu/context/PeopleListContextMenu;->queryIpDialCursor(Landroid/app/Activity;)V

    .line 373
    return-void

    .line 349
    .restart local v0       #cachecount:I
    .restart local v1       #title:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->initTitle(Ljava/lang/String;I)V

    goto :goto_0

    .line 358
    :cond_5
    iput-boolean v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    goto :goto_1

    .line 368
    .end local v0           #cachecount:I
    .end local v1           #title:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->setTitleBar()V

    .line 369
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->doOnResumeWithourRequery()V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1068
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onStop()V

    .line 1069
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1071
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    .line 1073
    :cond_0
    return-void
.end method

.method protected pauseIndicator()V
    .locals 2

    .prologue
    const/16 v1, 0x7d0

    .line 441
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContactListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContactListHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->pauseProcess()V

    .line 448
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorProcessor;->clearQueue()V

    .line 449
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->setDoAddIndicatorRequest(Z)V

    .line 453
    :cond_1
    return-void
.end method

.method protected removeGroups(Ljava/lang/String;)V
    .locals 7
    .parameter "title"

    .prologue
    const/4 v2, 0x0

    .line 853
    const v0, 0x7f0a0103

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 855
    .local v6, message:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 859
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v2, v6, v0, v1}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mRunningProgress:Lcom/htc/app/HtcProgressDialog;

    .line 861
    const-string v0, "title"

    invoke-static {v0, p1}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 864
    .local v4, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 865
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    const/4 v1, 0x2

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return-void
.end method

.method public setAdapter()V
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    .line 1034
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupPeopleView;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1035
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 1036
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 1040
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public setAddButtonVisiablity(Z)V
    .locals 2
    .parameter "setVisibility"

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setEmptyText()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->setEmptyText()V

    .line 253
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyTextView:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 254
    return-void
.end method

.method protected setTitleBar()V
    .locals 3

    .prologue
    .line 297
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 298
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    iget-boolean v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-eqz v1, :cond_0

    .line 299
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 303
    :goto_0
    const v1, 0x7f0a01a2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->setHeaderSecondaryLeftText(I)V

    .line 304
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderAddButton()Lcom/htc/widget/HeaderBarImage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

    .line 305
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAddHeaderBar:Lcom/htc/widget/HeaderBarImage;

    new-instance v2, Lcom/android/htccontacts/group/GroupPeopleView$2;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupPeopleView$2;-><init>(Lcom/android/htccontacts/group/GroupPeopleView;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    return-void

    .line 301
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    goto :goto_0
.end method

.method protected startIndicator()V
    .locals 2

    .prologue
    .line 469
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->startIndicator(J)V

    .line 470
    return-void
.end method

.method protected startIndicator(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mContactListHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 461
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIndicator:Lcom/android/htccontacts/indicator/IndicatorProcessor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupPeopleView;->isIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mAdapter:Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$GroupContactsItemListAdapter;->setDoAddIndicatorRequest(Z)V

    goto :goto_0
.end method

.method protected startQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 874
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 875
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 876
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupPeopleView;->setAddButtonVisiablity(Z)V

    .line 878
    :cond_0
    sget-object v3, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 880
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 881
    const/4 v4, 0x0

    .line 883
    .local v4, projection:[Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mIsSmartGroup:Z

    if-eqz v0, :cond_1

    .line 884
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->MemberTimesProjection:[Ljava/lang/String;

    .line 892
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    return-void

    .line 889
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupPeopleView;->MemberProjection:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected startQueryGroupPhoto()V
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    :goto_0
    return-void

    .line 839
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->cancelOperation(I)V

    .line 840
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 841
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    iget-object v6, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mGroupName:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 845
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupPeopleView;->mQueryHandler:Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v4, v6

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupPeopleView$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
