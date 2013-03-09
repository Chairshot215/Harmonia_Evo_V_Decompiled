.class public Lcom/android/htccontacts/group/GroupEditActivity;
.super Lcom/android/htccontacts/app/BaseListActivity;
.source "GroupEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;,
        Lcom/android/htccontacts/group/GroupEditActivity$ReturnResult;,
        Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;,
        Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;,
        Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;,
        Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;,
        Lcom/android/htccontacts/group/GroupEditActivity$MemberListItemAdapter;,
        Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCache;,
        Lcom/android/htccontacts/group/GroupEditActivity$OnRemoveClickListener;,
        Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;,
        Lcom/android/htccontacts/group/GroupEditActivity$SavingThread;
    }
.end annotation


# static fields
.field protected static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field protected static final DELETE_TOKEN_LIST_BY_PERSON_ID:I = 0x3

.field private static final DISMISS_PROGRESS:I = 0x1002

.field private static final EVENT_SAVE_GROUP:I = 0x1001

.field public static final EXTRA_GROUP_ID:Ljava/lang/String; = "GROUP_ID"

.field public static final EXTRA_GROUP_NAME:Ljava/lang/String; = "GROUP_NAME"

.field public static final ExTRA_GROUP_IS_READ_ONLY:Ljava/lang/String; = "GROUP_IS_READ_ONLY"

.field protected static final INSERT_TOKEN_LIST_BY_PERSON_ID:I = 0x2

.field private static final MAX_APPLY_BATCH:I = 0x1c2

.field private static final MENU_ADD_MEMBER:I = 0x1

.field static final MSG_FINISH_SELF:I = 0x1001

.field static final MSG_SHOW_TOAST:I = 0x1000

.field private static final QUERY_ENTITY:I = 0x1003

.field protected static final QUERY_TOKEN_LIST_BY_GROUP_NAME:I = 0x1

.field protected static final QUERY_TOKEN_LIST_BY_PERSON_ID:I = 0x0

.field protected static final RESULT_MEMBER_PICKED:I = 0xbd0

.field protected static final RESULT_PHOTO_PICKED:I = 0xbd1

.field protected static final RESULT_TAKE_PICTURE_PICKED:I = 0xbd2

.field private static final TAG:Ljava/lang/String; = "HtcGroupEditActivity"

.field protected static final TOKEN_QUERY_PHOTO:I = 0x5

.field public static final VODA360_ACCOUNT_TYPE:Ljava/lang/String; = "com.vodafone.people"


# instance fields
.field protected idExcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected idIncList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isHTCSystem:Z

.field private volatile isSaving:Z

.field protected mAction:Ljava/lang/String;

.field protected mCancelButton:Lcom/htc/widget/HtcFooterButton;

.field protected mCheckRemoved:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

.field private mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

.field private mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

.field protected mEditPhotoView1:Landroid/widget/ImageView;

.field protected mEditPhotoView2:Landroid/widget/ImageView;

.field protected mGroupId:Ljava/lang/Long;

.field protected mGroupIsReadOnly:I

.field protected mGroupMemberId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mGroupName:Ljava/lang/String;

.field protected mGroupNameEdit:Landroid/widget/EditText;

.field protected mHasPhotoChanged:Z

.field protected mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

.field protected mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field protected mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mInnerLayout:Landroid/widget/LinearLayout;

.field public mInputTextWatcher:Landroid/text/TextWatcher;

.field protected mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

.field protected mIsLoading:Z

.field private mIsSaving:Z

.field protected mListView:Lcom/htc/widget/HtcReorderListView;

.field private mOriginalName:Ljava/lang/String;

.field protected mPersonIdIdx:I

.field protected mPersonNameIdx:I

.field protected mPhoto:Landroid/graphics/Bitmap;

.field protected mPhotoIdx:I

.field private mPool:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

.field protected mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field protected mSeparaterView:Landroid/view/View;

.field protected mToBeAddedId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mToBeRemovedId:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUIHandler:Landroid/os/Handler;

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 190
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "starred"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/group/GroupEditActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseListActivity;-><init>()V

    .line 167
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsLoading:Z

    .line 176
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;-><init>(Lcom/android/htccontacts/group/GroupEditActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPool:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

    .line 186
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z

    .line 312
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupEditActivity$2;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    .line 332
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    .line 1152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    .line 2087
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$10;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupEditActivity$10;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    .line 2093
    new-instance v0, Lcom/android/htccontacts/group/GroupEditActivity$11;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/GroupEditActivity$11;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/group/GroupEditActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->doPickPhotoAction()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->doPickPhotoCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/group/GroupEditActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isSaving:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->insertTobeAdded()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->deleteToBeRemoved()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->updatePhoto()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/group/GroupEditActivity;Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/group/GroupEditActivity;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/group/GroupEditActivity;)Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPool:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/htccontacts/group/GroupEditActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/htccontacts/group/GroupEditActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htccontacts/group/GroupEditActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/group/GroupEditActivity;->is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->show360GroupWarnningDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/group/GroupEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->showProgressDialog()V

    return-void
.end method

.method private adjustButtonEnabled()V
    .locals 2

    .prologue
    .line 776
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->saveButtonCheck()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 777
    .local v0, enable:Z
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcFooterButton;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 778
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 779
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 781
    :cond_0
    return-void

    .line 776
    .end local v0           #enable:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkGroupName(Ljava/lang/String;)Z
    .locals 5
    .parameter "group_name"

    .prologue
    const/4 v3, 0x0

    .line 1330
    const/4 v2, 0x1

    .line 1332
    .local v2, result:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1335
    :cond_0
    const/4 v2, 0x0

    .line 1338
    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-nez v4, :cond_2

    .line 1339
    invoke-static {p1}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;)Z

    move-result v0

    .line 1340
    .local v0, isDefault:Z
    if-eqz v0, :cond_3

    move v2, v3

    .line 1351
    .end local v0           #isDefault:Z
    .end local v2           #result:Z
    :cond_2
    :goto_0
    return v2

    .line 1344
    .restart local v0       #isDefault:Z
    .restart local v2       #result:Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupEditActivity;->isConflictGroup(Ljava/lang/String;)Z

    move-result v1

    .line 1346
    .local v1, isRestricted:Z
    if-eqz v1, :cond_2

    move v2, v3

    .line 1347
    goto :goto_0
.end method

.method private deleteToBeRemoved()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1128
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1131
    .local v6, i:Ljava/lang/Integer;
    sget-object v0, Lcom/htc/provider/HtcContactsContract$Groups;->MEMBER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1133
    .local v3, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v1, 0x3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    .end local v3           #deleteUri:Landroid/net/Uri;
    .end local v6           #i:Ljava/lang/Integer;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1739
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1742
    :cond_0
    return-void
.end method

.method private doInsertRunnable()V
    .locals 10

    .prologue
    .line 870
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 872
    .local v0, contactToAddedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 873
    .local v4, id:I
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 876
    .end local v4           #id:I
    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 877
    .restart local v4       #id:I
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 880
    .end local v4           #id:I
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-static {v6, v0, v7, v8}, Lcom/android/htccontacts/group/GroupEntity;->insertNewGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v5

    .line 882
    .local v5, result:Z
    if-eqz v5, :cond_2

    .line 886
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/htccontacts/group/GroupEditActivity;->doRearrangeData(Ljava/lang/String;)V

    .line 887
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 888
    .local v1, data:Landroid/content/Intent;
    const-string v6, "title"

    iget-object v7, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 891
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 892
    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v7, 0x1001

    const-wide/16 v8, 0x12c

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 902
    .end local v1           #data:Landroid/content/Intent;
    .end local v5           #result:Z
    :goto_2
    return-void

    .line 895
    .restart local v5       #result:Z
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 898
    .end local v5           #result:Z
    :catch_0
    move-exception v2

    .line 900
    .local v2, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    goto :goto_2
.end method

.method private doPickPhotoAction()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x60

    const/4 v4, 0x1

    .line 1285
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1286
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1287
    const-string v2, "crop"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1288
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1289
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1290
    const-string v2, "outputX"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1291
    const-string v2, "outputY"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1293
    :try_start_0
    const-string v2, "return-data"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1294
    const/16 v2, 0xbd1

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    :goto_0
    return-void

    .line 1295
    :catch_0
    move-exception v0

    .line 1296
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a01aa

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ab

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a01ac

    invoke-virtual {v2, v3, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

.method private doPickPhotoCamera()V
    .locals 3

    .prologue
    .line 1277
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1278
    .local v0, intentCapture:Landroid/content/Intent;
    const-string v1, "RequestedFrom"

    const-string v2, "contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1279
    const/16 v1, 0xbd2

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1281
    return-void
.end method

.method private generateOperation(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 19
    .parameter "title"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 2148
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2149
    .local v10, operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    if-nez p1, :cond_1

    .line 2150
    const/4 v10, 0x0

    .line 2195
    .end local v10           #operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    :cond_0
    :goto_0
    return-object v10

    .line 2152
    .restart local v10       #operationListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    :cond_1
    sget-object v13, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 2153
    .local v13, uri:Landroid/net/Uri;
    const-string v15, "update_member_order"

    invoke-static {v13, v15}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 2154
    const/4 v8, 0x0

    .line 2155
    .local v8, operation:Landroid/content/ContentProviderOperation;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2156
    .local v9, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 2157
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    const/4 v14, 0x0

    .line 2158
    .local v14, values:Landroid/content/ContentValues;
    const/4 v11, 0x1

    .line 2159
    .local v11, order:I
    const-wide/high16 v15, 0x4024

    const-wide/high16 v17, 0x4022

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    double-to-int v1, v15

    .line 2160
    .local v1, MAX:I
    const/4 v5, 0x0

    .line 2161
    .local v5, counts:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v15}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 2162
    .local v7, item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iget-boolean v15, v7, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    if-nez v15, :cond_2

    .line 2165
    add-int v15, v11, v1

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 2166
    .local v12, orderSequence:Ljava/lang/String;
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2167
    iget-wide v3, v7, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    .line 2168
    .local v3, contactId:J
    new-instance v14, Landroid/content/ContentValues;

    .end local v14           #values:Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2169
    .restart local v14       #values:Landroid/content/ContentValues;
    const-string v15, "contact_id"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2170
    const-string v15, "title"

    move-object/from16 v0, p1

    invoke-virtual {v14, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2171
    const-string v15, "display_order"

    invoke-virtual {v14, v15, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v15, v7, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->displayName:Ljava/lang/CharSequence;

    if-eqz v15, :cond_3

    .line 2173
    const-string v15, "display_name"

    iget-object v0, v7, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->displayName:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_2
    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 2179
    invoke-virtual {v2, v14}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 2180
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    .line 2181
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2183
    add-int/lit8 v11, v11, 0x1

    .line 2184
    add-int/lit8 v5, v5, 0x1

    .line 2185
    const/16 v15, 0x1c2

    if-lt v5, v15, :cond_2

    .line 2186
    const/4 v5, 0x0

    .line 2187
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2188
    new-instance v9, Ljava/util/ArrayList;

    .end local v9           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .restart local v9       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    goto :goto_1

    .line 2176
    :cond_3
    const-string v15, "display_name"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_2

    .line 2192
    .end local v3           #contactId:J
    .end local v7           #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    .end local v12           #orderSequence:Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 2193
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 8
    .parameter "columnName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 986
    .local p2, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 987
    .local v3, result:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 988
    :cond_0
    const-string v3, "0"

    .line 1004
    :goto_0
    return-object v3

    .line 991
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 992
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 993
    .local v4, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_3

    .line 994
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 995
    .local v2, id:I
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 996
    add-int/lit8 v5, v4, -0x1

    if-ge v1, v5, :cond_2

    .line 997
    const-string v5, " ,"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1000
    .end local v2           #id:I
    :cond_3
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const-string v5, " ) "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private insertTobeAdded()V
    .locals 8

    .prologue
    .line 1112
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1113
    .local v4, values:Landroid/content/ContentValues;
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1114
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1115
    .local v0, i:Ljava/lang/Integer;
    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1117
    .local v3, rawContactUri:Landroid/net/Uri;
    const-string v5, "data"

    invoke-static {v3, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1118
    .local v2, insertUri:Landroid/net/Uri;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    const-string v5, "data1"

    iget-object v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupId:Ljava/lang/Long;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1120
    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2, v4}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1123
    .end local v0           #i:Ljava/lang/Integer;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #insertUri:Landroid/net/Uri;
    .end local v3           #rawContactUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private is360AccountLogin(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 1943
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1944
    .local v0, accounts:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1946
    const/4 v1, 0x1

    .line 1948
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isConflictGroup(Ljava/lang/String;)Z
    .locals 10
    .parameter "verifiedName"

    .prologue
    .line 1355
    const/4 v8, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Favorite_8656150684447252476_6727701920173350445"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    const-string v9, "VIP"

    aput-object v9, v2, v8

    const/4 v8, 0x2

    const-string v9, "Family"

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string v9, "Friends"

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string v9, "Coworkers"

    aput-object v9, v2, v8

    const/4 v8, 0x5

    const-string v9, "Frequent Contacts"

    aput-object v9, v2, v8

    .line 1364
    .local v2, defaultGroupName:[Ljava/lang/String;
    const/16 v8, 0xe

    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Favorite_8656150684447252476_6727701920173350445"

    aput-object v9, v0, v8

    const/4 v8, 0x1

    const-string v9, "VIP"

    aput-object v9, v0, v8

    const/4 v8, 0x2

    const-string v9, "Family"

    aput-object v9, v0, v8

    const/4 v8, 0x3

    const-string v9, "Friends"

    aput-object v9, v0, v8

    const/4 v8, 0x4

    const-string v9, "Coworkers"

    aput-object v9, v0, v8

    const/4 v8, 0x5

    const-string v9, "Frequent Contacts"

    aput-object v9, v0, v8

    const/4 v8, 0x6

    const-string v9, "Favorites"

    aput-object v9, v0, v8

    const/4 v8, 0x7

    const-string v9, "VIP"

    aput-object v9, v0, v8

    const/16 v8, 0x8

    const-string v9, "Family"

    aput-object v9, v0, v8

    const/16 v8, 0x9

    const-string v9, "Friends"

    aput-object v9, v0, v8

    const/16 v8, 0xa

    const-string v9, "Coworkers"

    aput-object v9, v0, v8

    const/16 v8, 0xb

    const-string v9, "System Group: My Contacts"

    aput-object v9, v0, v8

    const/16 v8, 0xc

    const-string v9, "My Contacts"

    aput-object v9, v0, v8

    const/16 v8, 0xd

    const-string v9, "Starred in Android"

    aput-object v9, v0, v8

    .line 1381
    .local v0, allRestrictedName:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1383
    .local v7, result:Z
    move-object v1, v2

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 1384
    .local v6, restrictedName:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1385
    const/4 v7, 0x1

    .line 1397
    .end local v6           #restrictedName:Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v7, :cond_4

    .line 1407
    :cond_1
    :goto_2
    return v7

    .line 1389
    .restart local v6       #restrictedName:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget v9, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupIsReadOnly:I

    invoke-static {v8, v6, v9}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1391
    .local v3, displayName:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1392
    const/4 v7, 0x1

    .line 1393
    goto :goto_1

    .line 1383
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1400
    .end local v3           #displayName:Ljava/lang/String;
    .end local v6           #restrictedName:Ljava/lang/String;
    :cond_4
    move-object v1, v0

    array-length v5, v1

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_1

    aget-object v6, v1, v4

    .line 1401
    .restart local v6       #restrictedName:Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1402
    const/4 v7, 0x1

    .line 1403
    goto :goto_2

    .line 1400
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method private isHTCSystemGroup()Z
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/provider/HtcContactsContract$Groups;->isDefaultGroupName(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private saveButtonCheck()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 784
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 785
    .local v1, sequence:Ljava/lang/CharSequence;
    const/4 v0, 0x1

    .line 786
    .local v0, result:Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 807
    :cond_0
    :goto_0
    return v3

    .line 790
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 791
    iget-boolean v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-nez v4, :cond_0

    move v3, v2

    .line 794
    goto :goto_0

    .line 802
    :cond_2
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 803
    iget-boolean v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-eqz v4, :cond_3

    .line 804
    if-eqz v0, :cond_4

    move v0, v2

    :cond_3
    :goto_1
    move v3, v2

    .line 807
    goto :goto_0

    :cond_4
    move v0, v3

    .line 804
    goto :goto_1
.end method

.method private final setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "imageView"
    .parameter "bmSrc"

    .prologue
    .line 2199
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 2200
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 2201
    invoke-virtual {p1, p2}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2202
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 2214
    return-void
.end method

.method private show360GroupWarnningDialog()V
    .locals 5

    .prologue
    .line 1922
    new-instance v1, Lcom/android/htccontacts/group/GroupEditActivity$9;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/group/GroupEditActivity$9;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1931
    .local v1, okListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0102

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0331

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a014f

    invoke-virtual {v2, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0152

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 1937
    .local v0, htcDialog:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 1939
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .prologue
    .line 1731
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v1, :cond_0

    .line 1732
    const v1, 0x7f0a0128

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1733
    .local v0, displayStr:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0, v1, v0, v2, v3}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 1735
    .end local v0           #displayStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updatePhoto()V
    .locals 0

    .prologue
    .line 1150
    return-void
.end method


# virtual methods
.method protected ProcessRemoveAccount()V
    .locals 5

    .prologue
    .line 642
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 643
    .local v1, memberItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iget-boolean v2, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    if-eqz v2, :cond_0

    .line 644
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 645
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 646
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    iget-wide v3, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    .end local v1           #memberItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    :cond_1
    return-void
.end method

.method protected doAddMember()V
    .locals 7

    .prologue
    .line 1154
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.htccontacts.ACTION_PICK_CONTACT_ADD_MEMBER_WITH_GROUPS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "group_name"

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v4, ""

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1156
    const-string v4, "group_is_read_only"

    iget v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupIsReadOnly:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1158
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1159
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v4}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 1160
    .local v3, mebmerItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    iget-wide v5, v3, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #mebmerItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    goto :goto_0

    .line 1162
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    const-string v4, "EXCLUDE_ID"

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idExcList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1164
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1165
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1166
    .local v0, i:Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1168
    .end local v0           #i:Ljava/lang/Integer;
    :cond_2
    const-string v4, "INCLUDE_ID"

    iget-object v5, p0, Lcom/android/htccontacts/group/GroupEditActivity;->idIncList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1169
    const/16 v4, 0xbd0

    invoke-virtual {p0, v2, v4}, Lcom/android/htccontacts/group/GroupEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1170
    return-void
.end method

.method protected doInsert()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 814
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 815
    .local v9, name:Ljava/lang/String;
    iput-object v9, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    .line 817
    if-eqz v9, :cond_0

    const-string v0, ""

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 818
    :cond_0
    iput-boolean v12, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    move v0, v11

    .line 862
    :goto_0
    return v0

    .line 821
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/htccontacts/group/GroupEditActivity;->checkGroupName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 822
    iput-boolean v12, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    .line 823
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v0, v11

    .line 824
    goto :goto_0

    .line 827
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 828
    .local v10, values:Landroid/content/ContentValues;
    const-string v0, "title"

    invoke-virtual {v10, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v0, "should_sync"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 833
    const/4 v6, 0x0

    .line 834
    .local v6, bExist:Z
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 835
    .local v2, columns:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted =  0    AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/android/htccontacts/group/GroupEntity;->getWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 838
    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 839
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 841
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    .line 845
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    .line 846
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_1

    .line 849
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    move v0, v12

    .line 850
    goto :goto_0

    .line 842
    :catch_0
    move-exception v8

    .line 843
    .local v8, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v0, "HtcGroupEditActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInsert - Database column not found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 845
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    .line 846
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 857
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 858
    .local v8, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    move v0, v11

    .line 859
    goto/16 :goto_0

    .line 845
    .end local v8           #e:Landroid/database/sqlite/SQLiteFullException;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v7       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->deactivate()V

    .line 846
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v1, v7}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 845
    throw v0
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_1

    .line 861
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->doInsertRunnable()V

    move v0, v11

    .line 862
    goto/16 :goto_0
.end method

.method protected doPickPhoto()V
    .locals 15

    .prologue
    .line 1199
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v7, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a012b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    iget-object v13, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v13, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a012d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    :cond_0
    const/4 v8, -0x1

    .line 1210
    .local v8, nAlbum:I
    const/4 v9, -0x1

    .line 1211
    .local v9, nCamera:I
    const/4 v10, -0x1

    .line 1212
    .local v10, nRemove:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_4

    .line 1214
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1215
    .local v11, s:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00da

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1216
    move v8, v6

    .line 1212
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1217
    :cond_2
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a012b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1218
    move v9, v6

    goto :goto_1

    .line 1219
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a012d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1220
    move v10, v6

    goto :goto_1

    .line 1222
    .end local v11           #s:Ljava/lang/String;
    :cond_4
    move v0, v8

    .line 1223
    .local v0, PHOTO_ALBUM:I
    move v1, v9

    .line 1224
    .local v1, PHOTO_CAMERA:I
    move v2, v10

    .line 1225
    .local v2, REMOVE_PHOTO:I
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v13, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v14, 0x7f0a012a

    invoke-virtual {v13, v14}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    .line 1226
    .local v3, adbPhoto:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v12, v13, [Ljava/lang/String;

    .line 1227
    .local v12, sarrItem:[Ljava/lang/String;
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1228
    new-instance v4, Lcom/android/htccontacts/group/GroupEditActivity$8;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/htccontacts/group/GroupEditActivity$8;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;III)V

    .line 1241
    .local v4, clPickPhoto:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v3, v12, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1242
    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v5

    .line 1243
    .local v5, d:Landroid/app/Dialog;
    invoke-virtual {p0, v5}, Lcom/android/htccontacts/group/GroupEditActivity;->manageDialog(Landroid/app/Dialog;)V

    .line 1267
    return-void
.end method

.method protected doRearrangeData(Ljava/lang/String;)V
    .locals 6
    .parameter "setTitle"

    .prologue
    .line 2131
    invoke-direct {p0, p1}, Lcom/android/htccontacts/group/GroupEditActivity;->generateOperation(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2132
    .local v1, applyListGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2133
    .local v0, applyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 2135
    :try_start_0
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "com.android.contacts"

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2136
    :catch_0
    move-exception v2

    .line 2137
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2138
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 2139
    .local v2, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    .line 2143
    .end local v0           #applyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v2           #e:Landroid/content/OperationApplicationException;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 2144
    return-void
.end method

.method protected doRemoveListItem(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1182
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->startQueryList()V

    .line 1193
    :goto_0
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V

    .line 1196
    return-void

    .line 1184
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->startQueryList()V

    goto :goto_0

    .line 1190
    :cond_1
    const-string v0, "HtcGroupEditActivity"

    const-string v1, "doRemoveListItem - Oops removing of an item that\'s not in the list"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public doRemovePhotoAction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1305
    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1310
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 1311
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 1312
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 1316
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1319
    :cond_0
    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1320
    iput-boolean v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    .line 1321
    return-void
.end method

.method protected doUpdate()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;
        }
    .end annotation

    .prologue
    .line 1010
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    .line 1012
    .local v10, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-nez v2, :cond_0

    .line 1013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    .line 1014
    .local v15, editable:Landroid/text/Editable;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1017
    .end local v15           #editable:Landroid/text/Editable;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    const-string v2, ""

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1018
    :cond_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    .line 1019
    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;

    const-string v3, "The group name is not available"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;Ljava/lang/String;)V

    throw v2

    .line 1014
    .restart local v15       #editable:Landroid/text/Editable;
    :cond_2
    const-string v10, ""

    goto :goto_0

    .line 1021
    .end local v15           #editable:Landroid/text/Editable;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/htccontacts/group/GroupEditActivity;->checkGroupName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1022
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1023
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    .line 1024
    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;

    const-string v3, "The group name is not available"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;Ljava/lang/String;)V

    throw v2

    .line 1027
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 1028
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    .line 1030
    :cond_5
    const/16 v18, 0x0

    .line 1034
    .local v18, isExist:Z
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "group_is_read_only"

    aput-object v3, v4, v2

    .line 1035
    .local v4, columns:[Ljava/lang/String;
    const-string v5, "deleted =  0  "

    .line 1037
    .local v5, selection:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1038
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_8

    .line 1040
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1041
    :cond_6
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1042
    const-string v2, "title"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1044
    .local v19, sName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 1045
    const/16 v18, 0x1

    .line 1052
    .end local v19           #sName:Ljava/lang/String;
    :cond_7
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v2, v12}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1057
    :cond_8
    :goto_1
    if-eqz v18, :cond_9

    .line 1058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1059
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mIsSaving:Z

    .line 1060
    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;

    const-string v3, "The group name is not available"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/htccontacts/group/GroupEditActivity$DataInvalidException;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1098
    .end local v12           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 1099
    .local v14, e:Landroid/database/sqlite/SQLiteFullException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1001

    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1101
    .end local v14           #e:Landroid/database/sqlite/SQLiteFullException;
    :goto_2
    return-void

    .line 1049
    .restart local v12       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v14

    .line 1050
    .local v14, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v2, "HtcGroupEditActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInsert - Database column not found: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1052
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v2, v12}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1

    .line 1052
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->deactivate()V

    .line 1053
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {v3, v12}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    .line 1052
    throw v2

    .line 1063
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v7, addedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1066
    .local v8, removedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1067
    .local v17, id:I
    move/from16 v0, v17

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1071
    .end local v17           #id:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 1072
    .restart local v17       #id:I
    move/from16 v0, v17

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1077
    .end local v17           #id:I
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    if-eqz v2, :cond_c

    .line 1078
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-static/range {v6 .. v11}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1082
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1087
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/htccontacts/util/ContactsUtils;->triggerExchangeSyc(Landroid/content/Context;)V

    .line 1088
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1089
    .local v13, data:Landroid/content/Intent;
    const-string v2, "title"

    invoke-virtual {v13, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    const-string v2, "group_is_read_only"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupIsReadOnly:I

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1091
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Lcom/android/htccontacts/group/GroupEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    .line 1095
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    .line 1096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v3, 0x1001

    const-wide/16 v20, 0x12c

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1080
    .end local v13           #data:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-static {v2, v7, v8, v3, v10}, Lcom/android/htccontacts/group/GroupEntity;->updateGroup(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1085
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    invoke-static {v2, v10, v3}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_6
.end method

.method protected doUpdateFavorite()V
    .locals 25

    .prologue
    .line 909
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 910
    .local v7, addList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 911
    .local v10, id:Ljava/lang/Integer;
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 914
    .end local v10           #id:Ljava/lang/Integer;
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v13, removeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 916
    .restart local v10       #id:Ljava/lang/Integer;
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 924
    .end local v10           #id:Ljava/lang/Integer;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v16

    .line 925
    .local v16, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountsList(Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 928
    .local v6, accoutsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 929
    .local v4, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v0, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 930
    .local v17, type:Ljava/lang/String;
    iget-object v8, v4, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 932
    .local v8, dataSet:Ljava/lang/String;
    if-eqz v17, :cond_2

    const-string v21, "com.google"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    if-nez v8, :cond_2

    .line 933
    iget-object v5, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 934
    .local v5, accountName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/htccontacts/util/ContactsUtils;->getOrCreateStarredInAndroidGroupIfNeed(Landroid/content/ContentResolver;Ljava/lang/String;)J

    goto :goto_2

    .line 938
    .end local v4           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v5           #accountName:Ljava/lang/String;
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v17           #type:Ljava/lang/String;
    :cond_3
    sget-object v18, Lcom/htc/provider/HtcContactsContract$Contacts;->UPDATE_FAVORITE_URI:Landroid/net/Uri;

    .line 940
    .local v18, updateUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 941
    .local v14, resolver:Landroid/content/ContentResolver;
    const-string v21, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7}, Lcom/android/htccontacts/group/GroupEditActivity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .line 942
    .local v20, where:Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 943
    .local v19, values:Landroid/content/ContentValues;
    const-string v21, "starred"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 944
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 946
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 947
    const-string v21, "starred"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 948
    const-string v21, "_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v13}, Lcom/android/htccontacts/group/GroupEditActivity;->getInWhere(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v20

    .line 949
    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 952
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 953
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 954
    sget-object v18, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 955
    const/4 v15, 0x0

    .line 956
    .local v15, size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v21

    if-nez v21, :cond_4

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    mul-int v21, v21, v22

    mul-int/lit8 v15, v21, 0x4

    .line 959
    :cond_4
    if-lez v15, :cond_7

    .line 960
    const/4 v11, 0x0

    .line 961
    .local v11, jpegData:[B
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12, v15}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 962
    .local v12, out:Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v23, Lcom/android/htccontacts/util/Constants;->COMPESS_QUALITY:I

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 964
    :try_start_0
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 965
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 966
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 967
    if-eqz v11, :cond_5

    .line 968
    const-string v21, "photo"

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_5
    :goto_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 981
    .end local v11           #jpegData:[B
    .end local v12           #out:Ljava/io/ByteArrayOutputStream;
    .end local v15           #size:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "Favorite_8656150684447252476_6727701920173350445"

    invoke-static/range {v21 .. v22}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;Ljava/lang/String;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x1001

    const-wide/16 v23, 0x12c

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 983
    return-void

    .line 975
    .restart local v15       #size:I
    :cond_7
    sget-object v18, Lcom/htc/provider/HtcContactsContract$Groups$Favorite;->UPDATE_FAVORITE_GROUP_PHOTO_URI:Landroid/net/Uri;

    .line 976
    const-string v22, "photo"

    const/16 v21, 0x0

    check-cast v21, [B

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 977
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 970
    .restart local v11       #jpegData:[B
    .restart local v12       #out:Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v21

    goto :goto_3
.end method

.method protected findViews()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 501
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcReorderListView;

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mListView:Lcom/htc/widget/HtcReorderListView;

    .line 502
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mListView:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mDragListener:Lcom/htc/widget/HtcReorderListView$DragListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDragListener(Lcom/htc/widget/HtcReorderListView$DragListener;)V

    .line 503
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mListView:Lcom/htc/widget/HtcReorderListView;

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mDropListener:Lcom/htc/widget/HtcReorderListView$DropListener;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcReorderListView;->setDropListener(Lcom/htc/widget/HtcReorderListView$DropListener;)V

    .line 505
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 506
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title_l_edit_button_imgbtn_1"

    const-string v4, "id"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 512
    .local v1, resId:I
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title_l_edit_button_search_text"

    const-string v4, "id"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 513
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    .line 514
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title_l_edit_button_img_1"

    const-string v4, "id"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    .line 516
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 517
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title_l_edit_button_img_2"

    const-string v4, "id"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 518
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView2:Landroid/widget/ImageView;

    .line 519
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView2:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v8, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 524
    .end local v1           #resId:I
    :cond_0
    iput-boolean v6, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    .line 526
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    const/16 v3, 0x2001

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 527
    const v2, 0x7f070017

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 528
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 530
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 531
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 532
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    iput-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    .line 535
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 536
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 537
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 538
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1412
    const/4 v8, -0x1

    if-eq p2, v8, :cond_1

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1466
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->setEmptyLoadingPageEnable()V

    .line 1467
    const-string v8, "SELECTED_ID"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1468
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v8, "SELECTED_GROUP_TITLE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1470
    .local v7, titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;

    const/4 v8, 0x0

    invoke-direct {v3, v8}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;-><init>(Lcom/android/htccontacts/group/GroupEditActivity$1;)V

    .line 1471
    .local v3, pack:Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;
    iput-object v7, v3, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;->titleList:Ljava/util/ArrayList;

    .line 1472
    iput-object v5, v3, Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;->contactList:Ljava/util/ArrayList;

    .line 1473
    new-instance v6, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    .line 1474
    .local v6, task:Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;
    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v6, v8}, Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1417
    .end local v3           #pack:Lcom/android/htccontacts/group/GroupEditActivity$PickContactPackage;
    .end local v5           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6           #task:Lcom/android/htccontacts/group/GroupEditActivity$PickContactsTask;
    .end local v7           #titles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1418
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 1419
    const-string v8, "data"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1420
    .local v4, photo:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1423
    invoke-static {v4}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1424
    .local v1, cropBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1426
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1430
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1431
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView2:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1434
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-direct {p0, v8, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    .line 1435
    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1437
    const/4 v4, 0x0

    .line 1438
    const/4 v1, 0x0

    .line 1441
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    goto :goto_0

    .line 1446
    .end local v1           #cropBitmap:Landroid/graphics/Bitmap;
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #photo:Landroid/graphics/Bitmap;
    :pswitch_2
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    .line 1447
    if-eqz p3, :cond_0

    .line 1449
    const-string v8, "data"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1450
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v8, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    sget v9, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-static {v0, v8, v9}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1451
    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    .line 1452
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    .line 1453
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1455
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView1:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1456
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mEditPhotoView2:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1459
    :cond_3
    iget-object v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    iget-object v9, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-direct {p0, v8, v9}, Lcom/android/htccontacts/group/GroupEditActivity;->setRoundCornerBitmapToPhotoButton(Lcom/htc/widget/HeaderBarImage;Landroid/graphics/Bitmap;)V

    .line 1460
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHasPhotoChanged:Z

    goto/16 :goto_0

    .line 1415
    :pswitch_data_0
    .packed-switch 0xbd0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 205
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 206
    const v1, 0x7f03002e

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->setContentView(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->setCommonControlTitlebar()V

    .line 209
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->resolveIntent()V

    .line 210
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->findViews()V

    .line 211
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->setListeners()V

    .line 212
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mResolver:Landroid/content/ContentResolver;

    .line 213
    new-instance v1, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    .line 219
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 220
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090026

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSeparaterView:Landroid/view/View;

    .line 241
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    .line 242
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    .line 243
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    .line 247
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCheckRemoved:Ljava/util/HashMap;

    .line 249
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 250
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    const/16 v2, 0x40b1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 255
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 256
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcFooterButton;->setFocusable(Z)V

    .line 258
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 262
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mOriginalName:Ljava/lang/String;

    .line 264
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystemGroup()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->startQueryGroupPhoto()V

    .line 270
    new-instance v1, Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/group/GroupEditActivity$EditTextWatcher;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInputTextWatcher:Landroid/text/TextWatcher;

    .line 272
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInputTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 275
    iget-boolean v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-eqz v1, :cond_1

    .line 276
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    iget v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupIsReadOnly:I

    invoke-static {v1, v2, v3}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, display:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 280
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 282
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 291
    .end local v0           #display:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$1;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupEditActivity$1;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    new-instance v1, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 303
    return-void

    .line 285
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 472
    const v0, 0x7f0a0106

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 473
    return v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onDestroy()V

    .line 455
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->changeCursorWithoutProcess(Landroid/database/Cursor;)V

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mPool:Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;

    invoke-virtual {v0}, Lcom/android/htccontacts/group/GroupEditActivity$GroupMemberItemCachePool;->clearItems()V

    .line 464
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 466
    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 468
    :cond_2
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1499
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isQHDProject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1500
    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 1501
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->doAddMember()V

    .line 1504
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 489
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 496
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 491
    :pswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[GroupEditActiviy]Add member"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->doAddMember()V

    .line 493
    const/4 v0, 0x1

    goto :goto_0

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 443
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onPause()V

    .line 444
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 478
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 479
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarImage;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 480
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 484
    :goto_0
    return v2

    .line 482
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 372
    const-string v1, "mGroupMemberId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    .line 373
    const-string v1, "mToBeAddedId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    .line 374
    const-string v1, "mToBeRemovedId"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    .line 377
    const-string v1, "MemberHash"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCheckRemoved:Ljava/util/HashMap;

    .line 379
    const-string v1, "isFavorite"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    .line 380
    iget-boolean v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    if-nez v1, :cond_0

    .line 381
    const-string v1, "title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .end local v0           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 390
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onResume()V

    .line 391
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    iget-boolean v0, v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->isDirty:Z

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->startQueryList()V

    .line 394
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 336
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 337
    const-string v2, "mGroupMemberId"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 339
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 340
    const-string v2, "mToBeAddedId"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    if-eqz v2, :cond_2

    .line 343
    const-string v2, "mToBeRemovedId"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->processStoreBooleanForm(Ljava/util/ArrayList;)V

    .line 349
    const-string v2, "MemberHash"

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCheckRemoved:Ljava/util/HashMap;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 351
    :cond_3
    const-string v2, "isFavorite"

    iget-boolean v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->isHTCSystem:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 352
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    if-eqz v2, :cond_4

    .line 353
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 354
    .local v0, editable:Landroid/text/Editable;
    if-nez v0, :cond_5

    const-string v1, ""

    .line 355
    .local v1, value:Ljava/lang/String;
    :goto_0
    const-string v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .end local v0           #editable:Landroid/text/Editable;
    .end local v1           #value:Ljava/lang/String;
    :cond_4
    return-void

    .line 354
    .restart local v0       #editable:Landroid/text/Editable;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseListActivity;->onStop()V

    .line 450
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseListActivity;->onWindowFocusChanged(Z)V

    .line 436
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gtz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 438
    .local v0, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v1}, Lcom/htc/widget/HeaderBarMiddle;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 440
    .end local v0           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method protected processStoreBooleanForm(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, memberItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;>;"
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCheckRemoved:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 362
    const/4 v2, 0x0

    .line 363
    .local v2, orderIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    .line 364
    .local v1, memberItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCheckRemoved:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->IsDeleted:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    .end local v1           #memberItem:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    :cond_0
    return-void
.end method

.method protected reSetBoundItem(Lcom/android/htccontacts/group/GroupEditActivity;Landroid/database/Cursor;)V
    .locals 13
    .parameter "target"
    .parameter "cursor"

    .prologue
    .line 655
    iget-object v12, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v12}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->getOrderMemberList()Ljava/util/ArrayList;

    move-result-object v4

    .line 657
    .local v4, memberItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;>;"
    const/4 v2, -0x1

    .line 658
    .local v2, idIdx:I
    const/4 v6, -0x1

    .line 659
    .local v6, nameIdx:I
    const/4 v10, -0x1

    .line 660
    .local v10, photoIdIdx:I
    const/4 v12, -0x1

    if-ne v2, v12, :cond_0

    .line 661
    const-string v12, "_id"

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 663
    :cond_0
    const/4 v12, -0x1

    if-ne v6, v12, :cond_1

    .line 664
    const-string v12, "display_name"

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 666
    :cond_1
    const/4 v12, -0x1

    if-ne v10, v12, :cond_2

    .line 667
    const-string v12, "photo_id"

    invoke-interface {p2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 669
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 670
    .local v7, newMemberItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;>;"
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 671
    const/4 v11, 0x0

    .line 673
    .local v11, setIndex:I
    :cond_3
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 674
    .local v0, id:J
    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 675
    .local v5, name:Ljava/lang/String;
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 676
    .local v8, photoId:J
    new-instance v3, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;

    invoke-direct {v3, v0, v1, v5}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;-><init>(JLjava/lang/CharSequence;)V

    .line 677
    .local v3, item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    iput-wide v8, v3, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;->PhotoID:J

    .line 678
    invoke-virtual {v7, v11, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 679
    add-int/lit8 v11, v11, 0x1

    .line 680
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 683
    .end local v0           #id:J
    .end local v3           #item:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter$MemberItem;
    .end local v5           #name:Ljava/lang/String;
    .end local v8           #photoId:J
    .end local v11           #setIndex:I
    :cond_4
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 684
    iget-object v12, p1, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v12, v7}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->reassignOrderMemberList(Ljava/util/ArrayList;)V

    .line 685
    return-void
.end method

.method protected resolveIntent()V
    .locals 4

    .prologue
    .line 541
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 543
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    .line 545
    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.INSERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mAction:Ljava/lang/String;

    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 546
    :cond_0
    const-string v1, "GROUP_ID"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupId:Ljava/lang/Long;

    .line 547
    const-string v1, "GROUP_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    .line 548
    const-string v1, "group_is_read_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupIsReadOnly:I

    .line 554
    :goto_0
    return-void

    .line 551
    :cond_1
    const-string v1, "HtcGroupEditActivity"

    const-string v2, "resolveIntent - unsupported action!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->finish()V

    goto :goto_0
.end method

.method protected setAdapter(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    if-nez v0, :cond_0

    .line 1508
    new-instance v0, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x7f030053

    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSeparaterView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    .line 1510
    new-instance v0, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/htccontacts/widget/SeparatorControlInsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;ZZ)V

    iput-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInsertListAdapter:Lcom/htc/widget/InsertNewListAdapter;

    .line 1512
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupEditActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1517
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public setAddMemberbuttonVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 703
    return-void
.end method

.method protected setCommonControlTitlebar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 398
    new-instance v3, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarMiddle;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 399
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    .line 400
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarMiddle;->enableSecondBackground(Z)V

    .line 403
    new-instance v3, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    .line 404
    new-instance v3, Lcom/htc/widget/HeaderBarImage;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    .line 405
    new-instance v0, Lcom/htc/widget/HeaderBarInput;

    invoke-direct {v0, p0}, Lcom/htc/widget/HeaderBarInput;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, editInpute:Lcom/htc/widget/HeaderBarInput;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->addLeftView(Landroid/view/View;)V

    .line 407
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 408
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarMiddle;->addRightView(Landroid/view/View;)V

    .line 410
    invoke-virtual {v0, v7}, Lcom/htc/widget/HeaderBarInput;->setInputMode(I)V

    .line 411
    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarInput;->getAutoCompleteTextView()Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    .line 412
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupNameEdit:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 413
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarMiddle;->enableLeftDivider(Z)V

    .line 414
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 415
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f02002f

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 419
    const v3, 0x7f07003a

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 420
    .local v1, listLayout:Landroid/widget/LinearLayout;
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mInnerLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 422
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_glance_add"

    const-string v5, "drawable"

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, resId:I
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 424
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 425
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00d7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 426
    iget-object v3, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderAddMember:Lcom/htc/widget/HeaderBarImage;

    new-instance v4, Lcom/android/htccontacts/group/GroupEditActivity$3;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/group/GroupEditActivity$3;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    return-void
.end method

.method protected setEmptyLoadingPageEnable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2217
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCursorAdapter:Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/ContactsOrderRemoveItemListAdapter;->changeCursorWithoutProcess(Landroid/database/Cursor;)V

    .line 2218
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2219
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mLoadingLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2220
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2221
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/GroupEditActivity;->setAddMemberbuttonVisibility(I)V

    .line 2222
    invoke-direct {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V

    .line 2223
    return-void
.end method

.method protected setListeners()V
    .locals 6

    .prologue
    .line 557
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/android/htccontacts/group/GroupEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "title_l_edit_button_left"

    const-string v4, "id"

    const-string v5, "com.htc"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 560
    .local v1, resId:I
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/GroupEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 561
    .local v0, ll:Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/htccontacts/group/GroupEditActivity$4;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/group/GroupEditActivity$4;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 574
    .end local v0           #ll:Landroid/widget/LinearLayout;
    .end local v1           #resId:I
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/htccontacts/group/GroupEditActivity$6;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/GroupEditActivity$6;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 595
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mCancelButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v3, Lcom/android/htccontacts/group/GroupEditActivity$7;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/GroupEditActivity$7;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    return-void

    .line 567
    :cond_0
    iget-object v2, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mHeaderPhotoButton:Lcom/htc/widget/HeaderBarImage;

    new-instance v3, Lcom/android/htccontacts/group/GroupEditActivity$5;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/group/GroupEditActivity$5;-><init>(Lcom/android/htccontacts/group/GroupEditActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected startQueryGroupPhoto()V
    .locals 8

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    :goto_0
    return-void

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->cancelOperation(I)V

    .line 693
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v4, "groups_raw"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 694
    .local v3, uri:Landroid/net/Uri;
    const-string v0, "title"

    iget-object v4, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 695
    .local v5, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " = 0 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 696
    iget-object v0, p0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "photo"

    aput-object v7, v4, v6

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startQueryList()V
    .locals 25

    .prologue
    .line 705
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 706
    .local v21, idList:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/group/GroupEditActivity;->setAddMemberbuttonVisibility(I)V

    .line 707
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/group/GroupEditActivity;->adjustButtonEnabled()V

    .line 708
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 709
    .local v23, selectedMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 712
    const/16 v18, 0x0

    .line 713
    .local v18, counts:I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 714
    .local v22, selectedIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v22 .. v23}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 715
    const-string v2, "("

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 716
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 718
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 719
    .local v24, size:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 720
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 722
    .local v20, id:I
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 723
    add-int/lit8 v2, v24, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    .line 724
    const-string v2, " , "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 726
    :cond_0
    add-int/lit8 v18, v18, 0x1

    .line 719
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 731
    .end local v19           #i:I
    .end local v20           #id:I
    .end local v24           #size:I
    :cond_1
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 733
    if-nez v18, :cond_3

    .line 734
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    .line 735
    .restart local v24       #size:I
    const/4 v2, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 736
    const-string v2, " 0 "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .end local v24           #size:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->cancelOperation(I)V

    .line 744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->cancelOperation(I)V

    .line 749
    const-string v9, "display_name ASC"

    .line 750
    .local v9, orderBy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupMemberId:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeAddedId:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mToBeRemovedId:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 757
    :cond_2
    const/4 v7, 0x0

    .line 759
    .local v7, selection:Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/htccontacts/group/GroupEditActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    .end local v7           #selection:Ljava/lang/String;
    :goto_2
    return-void

    .line 739
    .end local v9           #orderBy:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    const-string v3, "_id   IN "

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 766
    .restart local v9       #orderBy:Ljava/lang/String;
    :cond_4
    sget-object v13, Lcom/htc/provider/HtcContactsContract$Contacts;->ORDERED_GROUP_CONTACT_URI:Landroid/net/Uri;

    .line 767
    .local v13, queryUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mGroupName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v13

    .line 769
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/htccontacts/group/GroupEditActivity;->mQueryHandler:Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;

    const/4 v11, 0x1

    const/4 v12, 0x0

    sget-object v14, Lcom/android/htccontacts/group/GroupEditActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v10 .. v17}, Lcom/android/htccontacts/group/GroupEditActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
