.class public Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;
.super Landroid/app/Activity;
.source "MakecallSelectPeopleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$CallLogColumnIndex;,
        Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_COLUMN_INDEX:I = 0xb

.field private static final CALLER_NAME_COLUMN_INDEX:I = 0x5

.field private static final CALLER_NUMBERLABEL_COLUMN_INDEX:I = 0x7

.field private static final CALLER_NUMBERTYPE_COLUMN_INDEX:I = 0x6

.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field private static final CALL_TYPE_COLUMN_INDEX:I = 0x4

.field private static final CONTACT_ID_COLUMN_INDEX:I = 0xc

.field public static CallLogContactsArray:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATE_COLUMN_INDEX:I = 0x2

.field private static final DISPLAY_NAME_COLUMN_INDEX:I = 0xa

.field private static final DURATION_COLUMN_INDEX:I = 0x3

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final KEY_ACTIVITY_RESUMED:I = 0x1a0d

.field private static final KEY_ADD_NOTIFICATION:I = 0x1a0b

.field private static final KEY_QUERY_NOTIFICATION:I = 0x1a0a

.field private static final KEY_REQUERY_CURSOR:I = 0x1a14

.field private static final KEY_UI_INITIALIZED:I = 0x1a13

.field private static final KEY_UPDATE_CURSOR:I = 0x1a10

.field private static final KEY_UPDATE_FAVORITES:I = 0x1a0e

.field private static final KEY_UPDATE_NOTIFICATION:I = 0x1a0c

.field private static final KEY_UPDATE_PHONEINFO:I = 0x1a15

.field private static final LOG_TAG:Ljava/lang/String; = "Carhome SelectList"

.field private static final MAXIMUN_NOTIFICATION:I = 0x63

.field private static final NUMBER_COLUMN_INDEX:I = 0x1

.field private static final PEOPLE_UPDATE_FIRST_QUERY:I = 0xa

.field private static final PEOPLE_UPDATE_ITEMS:I = 0x14

.field private static final PEOPLE_UPDATE_PHONE_TYPE:I = 0xf

.field private static final PHOTO_COLUMN_INDEX:I = 0x9

.field private static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x8

.field private static final TOKEN_FAVORITE:I = 0x1e61

.field private static final TOKEN_RECENTCALLS:I = 0x22b8

.field private static WAIT_TIME_UI:J = 0x0L

.field public static cacheCallLogs:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/search/DialerCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final dateComparator:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/htcdialer/search/DialerCallLog;",
            ">;"
        }
    .end annotation
.end field

.field private static final localLOGV:Z = false

.field protected static final mstrFavoriteName:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"


# instance fields
.field public callLog:Lcom/android/htcdialer/search/DialerCallLog;

.field public contact:Lcom/android/htcdialer/search/DialerContact;

.field private isReadyToHandleQueryMessage:Z

.field private mCallLogHandler:Landroid/os/Handler;

.field private mCallLogPhoneDisplayNameColumn:I

.field private mCallLogPhoneNumberTypeColumn:I

.field private mCallLogPhoneTypeColumn:I

.field private mCheckAction:Landroid/widget/ImageView;

.field private mContactAry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContactPairAry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactPair;",
            ">;"
        }
    .end annotation
.end field

.field private mContentChanged:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mContext:Landroid/content/Context;

.field private mCurrentListItemIndex:I

.field private mCurrentListLastItemIndex:I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCount:I

.field private mCursorTerminated:Z

.field private mDisplayModeFlag:Ljava/lang/Long;

.field private mFaceBookDataColumn:I

.field private mFavoritesChanged:Z

.field private mHasPhoneNumber:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitialize:Z

.field private mIsShown:Z

.field private mLoading:Landroid/widget/TextView;

.field private mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

.field private mNeedRefreshCursor:Z

.field private mNeedUpdateFavorites:Z

.field private mOrientationChange:Z

.field private mPeopleDefaultActionColumn:I

.field private mPeopleIDColumn:I

.field private mPeopleNameColumn:I

.field private mPeopleNameLookup:I

.field private mPeopleStarredColumn:I

.field private mPhotoColumn:I

.field private mPhotoDataColumn:I

.field private mPhotoSizeX:I

.field private mPhotoSizeY:I

.field protected mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

.field private mProcessFavoriteIndex:I

.field private mProcessIndex:I

.field private mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

.field private mScrollState:I

.field private mTotalItemCount:I

.field private mUiHandler:Landroid/os/Handler;

.field private mWidgetDestroy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 168
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 325
    const-wide/16 v0, 0x64

    sput-wide v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->WAIT_TIME_UI:J

    .line 343
    sput-object v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    .line 345
    sput-object v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    .line 946
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;

    invoke-direct {v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$1;-><init>()V

    sput-object v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->dateComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z

    .line 132
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContentChanged:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorTerminated:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z

    .line 136
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z

    .line 137
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInitialize:Z

    .line 144
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mTotalItemCount:I

    .line 145
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mScrollState:I

    .line 146
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListItemIndex:I

    .line 147
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListLastItemIndex:I

    .line 151
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I

    .line 152
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleStarredColumn:I

    .line 153
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameColumn:I

    .line 154
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameLookup:I

    .line 155
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleDefaultActionColumn:I

    .line 156
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I

    .line 157
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoDataColumn:I

    .line 158
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFaceBookDataColumn:I

    .line 159
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mHasPhoneNumber:I

    .line 163
    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z

    .line 164
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneTypeColumn:I

    .line 165
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneNumberTypeColumn:I

    .line 166
    iput v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneDisplayNameColumn:I

    .line 293
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I

    .line 294
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I

    .line 295
    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I

    .line 342
    iput-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->callLog:Lcom/android/htcdialer/search/DialerCallLog;

    .line 351
    iput-object v2, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->contact:Lcom/android/htcdialer/search/DialerContact;

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;

    .line 361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;

    .line 2221
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$2;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;

    .line 2353
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$3;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$3;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogHandler:Landroid/os/Handler;

    return-void
.end method

.method private CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    .locals 1
    .parameter "contact"

    .prologue
    .line 761
    iget-object v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    invoke-direct {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->PickPrimaryNumberAndDial(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 765
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->callEntry(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private PickPrimaryNumberAndDial(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    .locals 5
    .parameter "contact"

    .prologue
    .line 658
    const/4 v1, 0x0

    .line 659
    .local v1, strNumber:Ljava/lang/String;
    const/4 v2, 0x0

    .line 660
    .local v2, type:I
    iget-wide v3, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-direct {p0, v3, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v0

    .line 662
    .local v0, phonesCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 664
    :cond_0
    if-eqz v0, :cond_1

    .line 665
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 668
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 670
    const-string v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 671
    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 688
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 690
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_4
    int-to-long v3, v2

    iput-wide v3, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    .line 695
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    .line 696
    invoke-direct {p0, p1, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->callEntry(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :cond_5
    const/4 v3, -0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 676
    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    const-string v3, "is_super_primary"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 681
    const-string v3, "data1"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 682
    const-string v3, "data2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 683
    goto :goto_1
.end method

.method private PickPrimaryNumberFromCursor(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/database/Cursor;)V
    .locals 2
    .parameter "contact"
    .parameter "phonesCursor"

    .prologue
    .line 622
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 624
    :cond_0
    if-eqz p2, :cond_1

    .line 625
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_1
    :goto_0
    return-void

    .line 628
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 631
    const-string v0, "data1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    .line 632
    const-string v0, "data2"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    .line 649
    :cond_3
    :goto_1
    if-eqz p2, :cond_1

    .line 650
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 636
    :cond_4
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 637
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 639
    const-string v0, "is_super_primary"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    .line 642
    const-string v0, "data1"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    .line 643
    const-string v0, "data2"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->number_type:J

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeX:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeY:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameColumn:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleDefaultActionColumn:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mHasPhoneNumber:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheColumnIndices(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneDisplayNameColumn:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneNumberTypeColumn:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneTypeColumn:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessFavoriteIndex:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I

    return v0
.end method

.method static synthetic access$2702(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorCount:I

    return p1
.end method

.method static synthetic access$2800(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mProcessIndex:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedUpdateFavorites:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorTerminated:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListItemIndex:I

    return v0
.end method

.method static synthetic access$3102(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListItemIndex:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCurrentListLastItemIndex:I

    return p1
.end method

.method static synthetic access$3302(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mScrollState:I

    return p1
.end method

.method static synthetic access$3400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 101
    invoke-direct {p0, p1, p2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->launchDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->isReadyToHandleQueryMessage:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInitialize:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->renewCursor()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mFavoritesChanged:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z

    return v0
.end method

.method private cacheColumnIndices(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 879
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 881
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I

    .line 882
    const-string v0, "starred"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleStarredColumn:I

    .line 883
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameColumn:I

    .line 884
    const-string v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameLookup:I

    .line 885
    const-string v0, "default_action"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleDefaultActionColumn:I

    .line 886
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I

    .line 887
    const-string v0, "has_phone_number"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mHasPhoneNumber:I

    .line 906
    :goto_0
    return-void

    .line 892
    :cond_0
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleIDColumn:I

    .line 893
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleStarredColumn:I

    .line 894
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameColumn:I

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleNameLookup:I

    .line 896
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPeopleDefaultActionColumn:I

    .line 897
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoColumn:I

    .line 898
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneTypeColumn:I

    .line 899
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneNumberTypeColumn:I

    .line 900
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneDisplayNameColumn:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callEntry(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/String;)V
    .locals 12
    .parameter "contact"
    .parameter "strDialNumber"

    .prologue
    const-wide/16 v10, 0x1

    .line 216
    const/4 v3, 0x0

    .line 217
    .local v3, number:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 219
    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    if-eqz v8, :cond_3

    .line 220
    iget-object v3, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    .line 221
    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    const-string v9, "-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    const-string v9, "-2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    const-string v9, "-3"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-wide v0, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->call_type:J

    .line 230
    .local v0, callType:J
    const-string v8, "+"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    cmp-long v8, v0, v10

    if-eqz v8, :cond_2

    const-wide/16 v8, 0x3

    cmp-long v8, v0, v8

    if-nez v8, :cond_3

    .line 234
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getBetterNumberFromContacts(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .end local v0           #callType:J
    :cond_3
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL_PRIVILEGED"

    const-string v9, "tel"

    const/4 v10, 0x0

    invoke-static {v9, v3, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 246
    .local v2, intent:Landroid/content/Intent;
    const/high16 v8, 0x1080

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 248
    iget-wide v4, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    .line 249
    .local v4, personId:J
    iget-object v7, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    .line 250
    .local v7, sName:Ljava/lang/String;
    iget-object v6, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->PhotoId:Ljava/lang/String;

    .line 252
    .local v6, photoId:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_5

    .line 254
    const-string v8, "personId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 257
    const-string v8, "name"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_4
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 261
    const-string v8, "hasPhoto"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :cond_5
    invoke-static {v2}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    goto :goto_0

    .line 240
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #personId:J
    .end local v6           #photoId:Ljava/lang/String;
    .end local v7           #sName:Ljava/lang/String;
    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 242
    move-object v3, p2

    goto :goto_1
.end method

.method public static getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "res"
    .parameter "bmSrc"
    .parameter "nMaskID"

    .prologue
    const/4 v9, 0x0

    .line 546
    invoke-static {p0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 547
    .local v1, bmMask:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 548
    .local v0, bmAlpha:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 549
    .local v2, bmRet:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 550
    .local v3, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x0

    invoke-virtual {v3, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 551
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 552
    .local v4, p:Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 553
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 554
    if-eqz v1, :cond_0

    .line 556
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 557
    const/4 v1, 0x0

    .line 559
    :cond_0
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 562
    const/4 v0, 0x0

    .line 564
    :cond_1
    return-object v2
.end method

.method private getBetterNumberFromContacts(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)Ljava/lang/String;
    .locals 3
    .parameter "contact"

    .prologue
    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, matchingNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "+"

    throw v0

    move-result v1

    if-nez v1, :cond_0

    throw v0

    move-result v1

    throw p1

    throw v2

    move-result v2

    if-le v1, v2, :cond_1

    .line 282
    :cond_0
    throw p1

    .line 284
    :cond_1
    iget-object v1, p1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    return-object v1
.end method

.method private getCacheCallLogs()V
    .locals 11

    .prologue
    .line 2374
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    .line 2375
    sget-object v1, Lcom/android/htcdialer/DialerService;->mReference:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htcdialer/search/SearchableObject;

    .line 2377
    .local v9, obj:Lcom/android/htcdialer/search/SearchableObject;
    if-eqz v9, :cond_0

    .line 2381
    iget v1, v9, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    if-nez v1, :cond_0

    .line 2383
    iget-object v10, v9, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    check-cast v10, Lcom/android/htcdialer/search/SearchableCallLog;

    .line 2384
    .local v10, searchableLog:Lcom/android/htcdialer/search/SearchableCallLog;
    if-eqz v10, :cond_0

    .line 2387
    new-instance v0, Lcom/android/htcdialer/search/DialerCallLog;

    iget-wide v1, v10, Lcom/android/htcdialer/search/SearchableCallLog;->id:J

    iget-wide v3, v10, Lcom/android/htcdialer/search/SearchableCallLog;->date:J

    iget v5, v10, Lcom/android/htcdialer/search/SearchableCallLog;->count:I

    iget v6, v10, Lcom/android/htcdialer/search/SearchableCallLog;->type:I

    iget-object v7, v10, Lcom/android/htcdialer/search/SearchableCallLog;->number:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/android/htcdialer/search/DialerCallLog;-><init>(JJIILjava/lang/String;)V

    .line 2388
    .local v0, callLog:Lcom/android/htcdialer/search/DialerCallLog;
    sget-object v1, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->cacheCallLogs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2394
    .end local v0           #callLog:Lcom/android/htcdialer/search/DialerCallLog;
    .end local v9           #obj:Lcom/android/htcdialer/search/SearchableObject;
    .end local v10           #searchableLog:Lcom/android/htcdialer/search/SearchableCallLog;
    :cond_1
    return-void
.end method

.method public static getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmSrc"
    .parameter "nSize"

    .prologue
    const/4 v6, 0x0

    .line 519
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 520
    .local v1, bmDst:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 521
    .local v2, canvasDst:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 522
    .local v5, nSrcW:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 523
    .local v4, nSrcH:I
    if-eq v5, v4, :cond_0

    if-nez p0, :cond_1

    .line 525
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v6, v6, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 541
    :goto_0
    return-object v1

    .line 529
    :cond_1
    if-le v5, v4, :cond_2

    const/4 v0, 0x1

    .line 530
    .local v0, bSrcLandscape:Z
    :goto_1
    if-eqz v0, :cond_3

    .line 532
    sub-int v7, v5, v4

    div-int/lit8 v3, v7, 0x2

    .line 533
    .local v3, nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v4

    invoke-direct {v7, v3, v6, v8, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .end local v0           #bSrcLandscape:Z
    .end local v3           #nOffset:I
    :cond_2
    move v0, v6

    .line 529
    goto :goto_1

    .line 537
    .restart local v0       #bSrcLandscape:Z
    :cond_3
    sub-int v7, v4, v5

    div-int/lit8 v3, v7, 0x2

    .line 538
    .restart local v3       #nOffset:I
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v3, v5

    invoke-direct {v7, v6, v3, v5, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v6, v6, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v2, p0, v7, v8, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public static getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmSrc"

    .prologue
    .line 512
    sget v0, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    .line 513
    .local v0, nSize:I
    invoke-static {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getCenterCropBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method private launchDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    .locals 15
    .parameter "sDefaultActionInfo"
    .parameter "contact"

    .prologue
    .line 768
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 770
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_0

    .line 771
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    move-object/from16 v0, p2

    iget-wide v11, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->item_type:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_6

    .line 778
    sget-object v10, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 779
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 780
    .local v6, sContactCardPattern:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 783
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    goto :goto_0

    .line 787
    :cond_2
    const-string v11, "|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 788
    .local v3, nSaperateIndex:I
    const/4 v11, -0x1

    if-ne v3, v11, :cond_3

    .line 790
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    goto :goto_0

    .line 794
    :cond_3
    add-int/lit8 v11, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 795
    const-string v11, "|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 796
    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 799
    .local v5, sAction:Ljava/lang/String;
    add-int/lit8 v11, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 800
    .local v9, sUri:Ljava/lang/String;
    const/4 v2, 0x0

    .line 802
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "mailto:"

    .line 803
    .local v7, sMailtoPattern:Ljava/lang/String;
    const-string v8, "sms:"

    .line 804
    .local v8, sSMSPattern:Ljava/lang/String;
    const-string v11, "mailto:"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 807
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    goto :goto_0

    .line 810
    :cond_4
    const-string v11, "sms:"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 813
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallPrimaryNumber(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    goto :goto_0

    .line 818
    :cond_5
    new-instance v2, Landroid/content/Intent;

    .end local v2           #intent:Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v2, v5, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 819
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v11, "personId"

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 820
    const-string v11, "hasPhoto"

    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bHasContactPhotoId:Z

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 821
    const-string v11, "name"

    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    :try_start_0
    const-string v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 825
    .local v4, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4, v2}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 827
    .end local v4           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 829
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "Carhome SelectList"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #nSaperateIndex:I
    .end local v5           #sAction:Ljava/lang/String;
    .end local v6           #sContactCardPattern:Ljava/lang/String;
    .end local v7           #sMailtoPattern:Ljava/lang/String;
    .end local v8           #sSMSPattern:Ljava/lang/String;
    .end local v9           #sUri:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_6
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v11}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->callEntry(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private preparePhotoUtility()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    if-nez v0, :cond_0

    .line 369
    invoke-static {}, Lcom/android/htcdialer/util/PhotoUtils;->getUtility()Lcom/android/htcdialer/util/PhotoUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    .line 371
    :cond_0
    return-void
.end method

.method private queryPhoneNumbers(J)Landroid/database/Cursor;
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 605
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 606
    .local v6, baseUri:Landroid/net/Uri;
    const-string v0, "data"

    invoke-static {v6, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 608
    .local v1, dataUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v9

    const-string v3, "data1"

    aput-object v3, v2, v8

    const/4 v3, 0x2

    const-string v4, "is_super_primary"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "data2"

    aput-object v4, v2, v3

    const-string v3, "mimetype=?"

    new-array v4, v8, [Ljava/lang/String;

    const-string v8, "vnd.android.cursor.item/phone_v2"

    aput-object v8, v4, v9

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 611
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    .end local v7           #c:Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 615
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v5

    .line 617
    goto :goto_0
.end method

.method private releasePhotoUtility()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    if-eqz v0, :cond_0

    .line 375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoUtility:Lcom/android/htcdialer/util/PhotoUtils;

    .line 377
    :cond_0
    return-void
.end method

.method private renewCursor()V
    .locals 12

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 852
    const-string v0, "content://com.android.contacts/contacts/simple_groupall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 853
    .local v3, peopleUri:Landroid/net/Uri;
    const-string v0, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 854
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    const/16 v1, 0x1e61

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->cancelOperation(I)V

    .line 856
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    const/16 v1, 0x1e61

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .end local v3           #peopleUri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    const/16 v1, 0x22b8

    invoke-virtual {v0, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->cancelOperation(I)V

    .line 865
    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    const/16 v5, 0x22b8

    const/4 v6, 0x0

    sget-object v7, Landroid/provider/CallLog$Calls;->CONTENT_URI_WITH_PHOTO:Landroid/net/Uri;

    sget-object v8, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "date DESC"

    invoke-virtual/range {v4 .. v11}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    goto :goto_0

    .line 871
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "nSrcID"

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 485
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 488
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 490
    invoke-static {p0, p1, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 494
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setApplyMaskBitmapToImageView(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "context"
    .parameter "iv"
    .parameter "bmSrc"

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020035

    invoke-static {v1, p2, v2}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getApplyMaskBitmap(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 499
    .local v0, bmCenterCropThumbnailWithMask:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    .line 507
    :cond_0
    const/4 v0, 0x0

    .line 508
    return-void
.end method


# virtual methods
.method public CheckDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Z)Z
    .locals 10
    .parameter "sDefaultActionInfo"
    .parameter "contact"
    .parameter "bIsQueryPrimaryNum"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 703
    const/4 v0, 0x0

    .line 704
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 707
    iget-object v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne p3, v6, :cond_0

    .line 708
    iget-wide v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-direct {p0, v8, v9}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v0

    .line 747
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_5

    .line 749
    invoke-direct {p0, p2, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->PickPrimaryNumberFromCursor(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;Landroid/database/Cursor;)V

    .line 756
    :cond_1
    :goto_1
    return v6

    .line 712
    :cond_2
    const-string v3, "mailto:"

    .line 713
    .local v3, sMailtoPattern:Ljava/lang/String;
    const-string v4, "sms:"

    .line 714
    .local v4, sSMSPattern:Ljava/lang/String;
    const-string v8, "|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, nSaperateIndex:I
    const/4 v8, -0x1

    if-ne v1, v8, :cond_3

    .line 717
    iget-object v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne p3, v6, :cond_0

    .line 718
    iget-wide v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-direct {p0, v8, v9}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 722
    :cond_3
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 723
    const-string v8, "|"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 724
    invoke-virtual {p1, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, sAction:Ljava/lang/String;
    add-int/lit8 v8, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 727
    .local v5, sUri:Ljava/lang/String;
    const-string v8, "mailto:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 730
    iget-object v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne p3, v6, :cond_0

    .line 731
    iget-wide v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-direct {p0, v8, v9}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 733
    :cond_4
    const-string v8, "sms:"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    if-ne p3, v6, :cond_1

    .line 736
    iget-object v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 737
    iget-wide v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->pid:J

    invoke-direct {p0, v8, v9}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->queryPhoneNumbers(J)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 753
    .end local v1           #nSaperateIndex:I
    .end local v2           #sAction:Ljava/lang/String;
    .end local v3           #sMailtoPattern:Ljava/lang/String;
    .end local v4           #sSMSPattern:Ljava/lang/String;
    .end local v5           #sUri:Ljava/lang/String;
    :cond_5
    iget-object v8, p2, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->strPrimaryNum:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v6, v7

    .line 756
    goto :goto_1
.end method

.method protected handleSearch()Z
    .locals 2

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->startActivity(Landroid/content/Intent;)V

    .line 212
    const/4 v1, 0x1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 382
    invoke-virtual {p0, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->requestWindowFeature(I)Z

    .line 383
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setRequestedOrientation(I)V

    .line 385
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 388
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    if-eq v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getOrientation()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 390
    :cond_0
    iput-boolean v5, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z

    .line 393
    :goto_0
    const v3, 0x7f030025

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->setContentView(I)V

    .line 394
    iput-object p0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContext:Landroid/content/Context;

    .line 395
    new-instance v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    .line 396
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setBottomDivider(Landroid/graphics/drawable/Drawable;)V

    .line 397
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-virtual {v3, v7}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setFillEmpty(Z)V

    .line 398
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 399
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-virtual {v3, v1}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20801c1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    const v3, 0x7f0b0061

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 403
    .local v2, vg:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 405
    const v3, 0x7f0b0062

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;

    .line 406
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;

    const v4, 0x7f09002a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 407
    iget-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mLoading:Landroid/widget/TextView;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 411
    new-instance v3, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    iget-object v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v3, p0, v4}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    .line 413
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "display_mode"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mDisplayModeFlag:Ljava/lang/Long;

    .line 419
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0158

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeX:I

    .line 420
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0159

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mPhotoSizeY:I

    .line 421
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 424
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->preparePhotoUtility()V

    .line 425
    return-void

    .line 392
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_1
    iput-boolean v7, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mOrientationChange:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 465
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->releasePhotoUtility()V

    .line 467
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 469
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z

    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mWidgetDestroy:Z

    .line 472
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContactPairAry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 477
    iput-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mQueryHandler:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$QueryHandler;

    .line 478
    iput-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 479
    iput-object v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mMyListView:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    .line 480
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 452
    invoke-static {}, Lcom/android/htcdialer/DialerService;->unregisterHandler()V

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorTerminated:Z

    .line 457
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 459
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 430
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 434
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/htcdialer/DialerService;->registerHandler(Landroid/os/Handler;)V

    .line 437
    iput-boolean v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mNeedRefreshCursor:Z

    .line 438
    iput-boolean v1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mIsShown:Z

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCursorTerminated:Z

    .line 440
    iget-boolean v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mInitialize:Z

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1a13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 444
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x1a0d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->handleSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method public reloadCalllog(Landroid/database/Cursor;)V
    .locals 6
    .parameter "cursor"

    .prologue
    .line 960
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 962
    .local v2, sTime:J
    invoke-direct {p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->getCacheCallLogs()V

    .line 963
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    .line 964
    if-eqz p1, :cond_2

    sget-object v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 966
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 969
    :cond_0
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 970
    .local v1, number:Ljava/lang/String;
    const-string v4, "-1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-4"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "-5"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 972
    new-instance v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;

    invoke-direct {v0, p0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;-><init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;)V

    .line 973
    .local v0, RawID:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Calls_id:J

    .line 974
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Raw_id:J

    .line 975
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->PhotoId:Ljava/lang/String;

    .line 976
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->displayname:Ljava/lang/String;

    .line 977
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->accountType:Ljava/lang/String;

    .line 978
    iget v4, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->mCallLogPhoneNumberTypeColumn:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;->Number_Type:J

    .line 979
    sget-object v4, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->CallLogContactsArray:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v0           #RawID:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$DialerRawId;
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 984
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public reloadInsert(Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, contactSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    return-void
.end method
