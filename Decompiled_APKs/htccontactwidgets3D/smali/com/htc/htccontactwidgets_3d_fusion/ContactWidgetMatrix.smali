.class public Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "ContactWidgetMatrix.java"

# interfaces
.implements Lcom/android/htccontacts/indicator/IndicatorResultListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListViewListener;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;,
        Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;
    }
.end annotation


# static fields
.field private static final KEY_ACTIVITY_RESUMED:I = 0x1a0d

.field private static final KEY_ADD_NOTIFICATION:I = 0x1a0b

.field private static final KEY_HIDE_PROGRESS:I = 0x1a19

.field private static final KEY_INVALIDATE_UI:I = 0x1a11

.field private static final KEY_QUERY_NEXT:I = 0x1a0f

.field private static final KEY_QUERY_NOTIFICATION:I = 0x1a0a

.field private static final KEY_REMOVE_ITEM:I = 0x1a12

.field private static final KEY_REQUERY_CURSOR:I = 0x1a14

.field private static final KEY_REQUERY_GROUP_LIST:I = 0x1a17

.field private static final KEY_SHOW_PROGRESS:I = 0x1a18

.field private static final KEY_STOP_PROGRESS:I = 0x1a1a

.field private static final KEY_STORE_GROUP_NAME:I = 0x1a16

.field private static final KEY_UI_INITIALIZED:I = 0x1a13

.field private static final KEY_UPDATE_CONTACT_INFO:I = 0x1a15

.field private static final KEY_UPDATE_CURSOR:I = 0x1a10

.field private static final KEY_UPDATE_FAVORITES:I = 0x1a0e

.field private static final KEY_UPDATE_LIST:I = 0x1a1b

.field private static final KEY_UPDATE_NOTIFICATION:I = 0x1a0c

.field private static final LOG_TAG:Ljava/lang/String; = "ContactWidgetMatrix"

.field private static final MAXIMUN_NOTIFICATION:I = 0x63

.field private static final TOKEN_FAVORITE:I = 0x1e61

.field private static final localLOGV:Z = false

.field protected static final mstrFavoriteName:Ljava/lang/String; = "Favorite_8656150684447252476_6727701920173350445"


# instance fields
.field private ITEM_PATH:Ljava/lang/String;

.field private SCENE_PATH:Ljava/lang/String;

.field contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

.field private mBtnHeaderListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnHeaderListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnLeftListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnLeftListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnRightListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mBtnRightListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mClickListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mContactAry:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContentChanged:Z

.field private mCursorCount:I

.field private mCursorTerminated:Z

.field private mDeletedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDestoryIndicator:Ljava/lang/Object;

.field private mEASChangedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEASDeleteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEASDeletedContactList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mEASUpdateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFavoritesChanged:Z

.field private mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

.field private mForceRequeryByFaceBookChanged:Z

.field private mForceRequeryByGoogleSync:Z

.field private mForceRequeryByLinkChanged:Z

.field private mForceUpdateListAllInTime:Z

.field private mFrequentEdit:Z

.field private mGetScene_land:Z

.field private mGetScene_port:Z

.field public mGroupIDIdx:I

.field private mGroupMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupNameIdx:I

.field private mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mHost:Lcom/htc/android/rosie/widget/Widget$Host;

.field private mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

.field private mIndicatorReqList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/indicator/PersonIndicatorRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialize:Z

.field private mIsGroupDeleted:Z

.field private mIsShown:Z

.field private mListItemDefaultListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemImageListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemImageListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListViewDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedRefreshFavorites:Z

.field private mNeedStroeToHostDB:Z

.field private mNeedUpdateFavorites:Z

.field private mOrientation:I

.field private mPeopleDefaultActionColumn:I

.field private mPeopleIDColumn:I

.field private mPeopleNameColumn:I

.field private mPeopleNameLookup:I

.field private mPeopleStarredColumn:I

.field private mPeopleStatusUpdateIdColumn:I

.field private mPhotoColumn:I

.field public mPhotoCount:I

.field private mPhotoIDColumn:I

.field private mPhotoSizeX:I

.field private mPhotoSizeY:I

.field private mPhotoSocialNetworkColumn:I

.field private mProcessFavoriteIndex:I

.field private mProcessIndex:I

.field private mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

.field private mQueryIndicator:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Long;",
            "Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRequeryDataWhenScreenOff:Z

.field private mRequeryDataWithoutUpdateImmediately:Z

.field private mRequeryGroupList:Z

.field private mScreenStateOff:Z

.field private mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mScrollOffset:I

.field private mSettingIntent:Landroid/content/Intent;

.field private mStartTime:J

.field private mSyncObject:Ljava/lang/Object;

.field private mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

.field private mUiWorker:Landroid/os/Handler$Callback;

.field private mVirtualization:I

.field private mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

.field private mWidgetContext:Landroid/content/Context;

.field private mWidgetDestroy:Z

.field private mWidgetScene:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

.field private mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

.field private mWorker:Landroid/os/Handler$Callback;

.field protected m_ContactPhotos:[Landroid/graphics/Bitmap;

.field protected m_collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

.field protected m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field protected m_listView:Lcom/htc/fusion/fx/controls/FxListView;

.field private m_tilt_L:Lcom/htc/fusion/fx/Marker;

.field private m_tilt_P:Lcom/htc/fusion/fx/Marker;

.field private mbmFacebookIcon:Landroid/graphics/Bitmap;

.field protected mstrGroupName:Ljava/lang/String;

.field private textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field private timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

.field private timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

.field private timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

.field private timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 98
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 102
    const-string v0, "Port/People_4x4_ListView.m10"

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 103
    const-string v0, "Port/People_4x4_ListItem.m10"

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    .line 134
    iput v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mCursorCount:I

    .line 135
    iput v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 137
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I

    .line 138
    iput v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    .line 139
    iput v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mStartTime:J

    .line 141
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    .line 143
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleIDColumn:I

    .line 144
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStarredColumn:I

    .line 145
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleNameColumn:I

    .line 146
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleNameLookup:I

    .line 147
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleDefaultActionColumn:I

    .line 148
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSocialNetworkColumn:I

    .line 149
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoColumn:I

    .line 150
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoIDColumn:I

    .line 151
    iput v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStatusUpdateIdColumn:I

    .line 153
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    .line 154
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z

    .line 155
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFrequentEdit:Z

    .line 156
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    .line 157
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    .line 158
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    .line 159
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z

    .line 160
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContentChanged:Z

    .line 161
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z

    .line 162
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z

    .line 163
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z

    .line 164
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mCursorTerminated:Z

    .line 165
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z

    .line 166
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    .line 167
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z

    .line 168
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 169
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    .line 170
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 171
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 172
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 173
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 174
    iput-boolean v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 176
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 177
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 178
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 179
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 180
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 181
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 182
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener:Lcom/htc/fusion/fx/MessageListener;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 184
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    .line 185
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 186
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 187
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 188
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDestoryIndicator:Ljava/lang/Object;

    .line 191
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_P:Lcom/htc/fusion/fx/Marker;

    .line 192
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_L:Lcom/htc/fusion/fx/Marker;

    .line 193
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 194
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 195
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 196
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 197
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 198
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 199
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 200
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 207
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    .line 262
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    .line 271
    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 273
    iput v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3804
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$19;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiWorker:Landroid/os/Handler$Callback;

    .line 3907
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$20;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWorker:Landroid/os/Handler$Callback;

    return-void
.end method

.method private OnItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1049
    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    .line 1052
    .local v0, index:I
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-nez v1, :cond_1

    .line 1054
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetItem(Lcom/htc/fusion/fx/controls/FxListItemEvent;Ljava/lang/String;I)V

    .line 1062
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    .line 1058
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_0

    .line 1060
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetItem(Lcom/htc/fusion/fx/controls/FxListItemEvent;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private SetImageItem(Lcom/htc/fusion/fx/controls/FxListItemEvent;Ljava/lang/String;I)V
    .locals 12
    .parameter "message"
    .parameter "Item_path"
    .parameter "index"

    .prologue
    const-wide/16 v10, -0x2

    const-wide/16 v8, -0x3

    .line 1488
    :try_start_0
    const-string v6, "Port/People_Big_4x4_ListItem.m10"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1490
    const/4 v6, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dynamicimage.photo"

    aput-object v7, v4, v6

    const/4 v6, 0x1

    const-string v7, "dynamicimage.indicator_icons"

    aput-object v7, v4, v6

    const/4 v6, 0x2

    const-string v7, "dynamicimage.people_icon"

    aput-object v7, v4, v6

    .line 1492
    .local v4, mItemIdentifier:[Ljava/lang/String;
    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v6, v4}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    .line 1494
    .local v2, itemArray:[Lcom/htc/fusion/fx/FxObject;
    const/4 v6, 0x0

    aget-object v1, v2, v6

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1501
    .local v1, imgContact:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p3, v6, :cond_2

    .line 1503
    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1505
    .local v0, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 1507
    :cond_0
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_1

    .line 1509
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1510
    if-eqz v1, :cond_1

    .line 1511
    iget-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1524
    :cond_1
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1534
    if-eqz v1, :cond_2

    .line 1535
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1683
    .end local v0           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v1           #imgContact:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v2           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v4           #mItemIdentifier:[Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1544
    .restart local v0       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .restart local v1       #imgContact:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .restart local v2       #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v4       #mItemIdentifier:[Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_2

    .line 1545
    iget-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1680
    .end local v0           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v1           #imgContact:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v2           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v4           #mItemIdentifier:[Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1589
    :cond_4
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "dynamicimage.default_image"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "dynamicimage.people_icon"

    aput-object v7, v5, v6

    .line 1590
    .local v5, mItemIdentifier2:[Ljava/lang/String;
    iget-object v6, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v6, v5}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v3

    .line 1592
    .local v3, itemArray2:[Lcom/htc/fusion/fx/FxObject;
    const/4 v6, 0x0

    aget-object v1, v3, v6

    check-cast v1, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1598
    .restart local v1       #imgContact:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gt p3, v6, :cond_2

    .line 1600
    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v6, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1602
    .restart local v0       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    .line 1604
    :cond_5
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v10

    if-nez v6, :cond_6

    .line 1606
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    .line 1607
    if-eqz v1, :cond_6

    .line 1608
    iget-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 1622
    :cond_6
    iget-wide v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1629
    if-eqz v1, :cond_2

    .line 1630
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02001e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1637
    :cond_7
    if-eqz v1, :cond_2

    .line 1638
    iget-object v6, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v6}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private SetItem(Lcom/htc/fusion/fx/controls/FxListItemEvent;Ljava/lang/String;I)V
    .locals 32
    .parameter "message"
    .parameter "Item_path"
    .parameter "index"

    .prologue
    .line 1696
    :try_start_0
    const-string v28, "Port/People_Big_4x4_ListItem.m10"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_39

    .line 1698
    const/16 v28, 0x10

    move/from16 v0, v28

    new-array v14, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "textlabel.primary"

    aput-object v29, v14, v28

    const/16 v28, 0x1

    const-string v29, "textlabel.secondary"

    aput-object v29, v14, v28

    const/16 v28, 0x2

    const-string v29, "textlabel.secondary 2"

    aput-object v29, v14, v28

    const/16 v28, 0x3

    const-string v29, "textlabel.time"

    aput-object v29, v14, v28

    const/16 v28, 0x4

    const-string v29, "textlabel.common_notifiction"

    aput-object v29, v14, v28

    const/16 v28, 0x5

    const-string v29, "textlabel.no_contact"

    aput-object v29, v14, v28

    const/16 v28, 0x6

    const-string v29, "dynamicimage.photo"

    aput-object v29, v14, v28

    const/16 v28, 0x7

    const-string v29, "dynamicimage.indicator_icons"

    aput-object v29, v14, v28

    const/16 v28, 0x8

    const-string v29, "dynamicimage.people_icon"

    aput-object v29, v14, v28

    const/16 v28, 0x9

    const-string v29, "timeline.contacts"

    aput-object v29, v14, v28

    const/16 v28, 0xa

    const-string v29, "timeline.common_notifiction"

    aput-object v29, v14, v28

    const/16 v28, 0xb

    const-string v29, "timeline.people_icon"

    aput-object v29, v14, v28

    const/16 v28, 0xc

    const-string v29, "button.people_photo"

    aput-object v29, v14, v28

    const/16 v28, 0xd

    const-string v29, "button.update_highlight"

    aput-object v29, v14, v28

    const/16 v28, 0xe

    const-string v29, "button.detail_highlight"

    aput-object v29, v14, v28

    const/16 v28, 0xf

    const-string v29, "button.empty_highlight"

    aput-object v29, v14, v28

    .line 1705
    .local v14, mItemIdentifier:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v11

    .line 1708
    .local v11, itemArray:[Lcom/htc/fusion/fx/FxObject;
    const/16 v28, 0x0

    aget-object v22, v11, v28

    check-cast v22, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1710
    .local v22, textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x1

    aget-object v20, v11, v28

    check-cast v20, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1712
    .local v20, textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x2

    aget-object v21, v11, v28

    check-cast v21, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1714
    .local v21, textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x3

    aget-object v24, v11, v28

    check-cast v24, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1716
    .local v24, textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x4

    aget-object v18, v11, v28

    check-cast v18, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1718
    .local v18, textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x5

    aget-object v23, v11, v28

    check-cast v23, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1722
    .local v23, textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x7

    aget-object v9, v11, v28

    check-cast v9, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1724
    .local v9, imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/16 v28, 0x8

    aget-object v10, v11, v28

    check-cast v10, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 1726
    .local v10, imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/16 v28, 0x9

    aget-object v26, v11, v28

    check-cast v26, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1728
    .local v26, timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v28, 0xa

    aget-object v25, v11, v28

    check-cast v25, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1730
    .local v25, timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v28, 0xb

    aget-object v27, v11, v28

    check-cast v27, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1732
    .local v27, timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v28, 0xc

    aget-object v7, v11, v28

    check-cast v7, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1734
    .local v7, btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    const/16 v28, 0xd

    aget-object v4, v11, v28

    check-cast v4, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1736
    .local v4, btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    const/16 v28, 0xe

    aget-object v5, v11, v28

    check-cast v5, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1738
    .local v5, btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    const/16 v28, 0xf

    aget-object v6, v11, v28

    check-cast v6, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1741
    .local v6, btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    if-eqz v26, :cond_0

    .line 1742
    const-string v28, "add_contact"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1744
    :cond_0
    if-eqz v6, :cond_1

    .line 1745
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 1746
    :cond_1
    if-eqz v23, :cond_2

    .line 1747
    const/16 v28, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1748
    :cond_2
    if-eqz v9, :cond_3

    .line 1749
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1750
    :cond_3
    if-eqz v20, :cond_4

    .line 1751
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1752
    :cond_4
    if-eqz v21, :cond_5

    .line 1753
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1754
    :cond_5
    if-eqz v24, :cond_6

    .line 1755
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1756
    :cond_6
    if-eqz v18, :cond_7

    .line 1757
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1759
    :cond_7
    if-eqz v10, :cond_8

    .line 1760
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1762
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, p3

    move/from16 v1, v28

    if-gt v0, v1, :cond_16

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1766
    .local v8, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x2

    cmp-long v28, v28, v30

    if-eqz v28, :cond_9

    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x3

    cmp-long v28, v28, v30

    if-nez v28, :cond_17

    .line 1768
    :cond_9
    if-eqz v26, :cond_a

    .line 1769
    const-string v28, "no_contact"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1771
    :cond_a
    if-eqz v6, :cond_b

    .line 1772
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setEnabled(Z)V

    .line 1773
    :cond_b
    if-eqz v23, :cond_c

    .line 1774
    const/16 v28, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1776
    :cond_c
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x2

    cmp-long v28, v28, v30

    if-nez v28, :cond_f

    .line 1778
    if-eqz v27, :cond_d

    .line 1779
    const-string v28, "visibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1780
    :cond_d
    if-eqz v23, :cond_e

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080009

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1783
    :cond_e
    if-eqz v10, :cond_f

    .line 1785
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1786
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f02000c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1790
    :cond_f
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x3

    cmp-long v28, v28, v30

    if-nez v28, :cond_12

    .line 1792
    if-eqz v27, :cond_10

    .line 1793
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1794
    :cond_10
    if-eqz v10, :cond_11

    .line 1795
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1797
    :cond_11
    if-eqz v23, :cond_12

    .line 1798
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080006

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1805
    :cond_12
    if-eqz v4, :cond_13

    .line 1806
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1809
    :cond_13
    if-eqz v5, :cond_14

    .line 1810
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1813
    :cond_14
    if-eqz v7, :cond_15

    .line 1815
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1816
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 1817
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 1818
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1822
    :cond_15
    if-eqz v6, :cond_16

    .line 1824
    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1825
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 1826
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x2

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 1827
    invoke-virtual {v6}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnEmptyListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 2236
    .end local v4           #btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v5           #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v6           #btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v7           #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v8           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v9           #imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v10           #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v11           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v14           #mItemIdentifier:[Ljava/lang/String;
    .end local v18           #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v20           #textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v21           #textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v22           #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v23           #textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v24           #textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v25           #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v26           #timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v27           #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_16
    :goto_0
    return-void

    .line 1834
    .restart local v4       #btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v5       #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v6       #btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v7       #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v8       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .restart local v9       #imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .restart local v10       #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .restart local v11       #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v14       #mItemIdentifier:[Ljava/lang/String;
    .restart local v18       #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v20       #textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v21       #textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v22       #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v23       #textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v24       #textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v25       #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v26       #timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v27       #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_17
    if-eqz v22, :cond_18

    .line 1836
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->displayname:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1852
    :cond_18
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v28

    if-eqz v28, :cond_27

    .line 1854
    if-eqz v27, :cond_19

    .line 1855
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1856
    :cond_19
    if-eqz v10, :cond_1a

    .line 1857
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1883
    :cond_1a
    :goto_1
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    if-nez v28, :cond_2b

    .line 1885
    if-eqz v25, :cond_1b

    .line 1887
    const-string v28, "read_maill"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1906
    :cond_1b
    :goto_2
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_33

    .line 1909
    if-eqz v26, :cond_1c

    .line 1910
    const-string v28, "add_icon"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1912
    :cond_1c
    const/16 v17, 0x0

    .line 1913
    .local v17, mTimeStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1915
    .local v13, mDailyStr:Ljava/lang/String;
    if-eqz v21, :cond_1d

    .line 1916
    const/16 v28, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1918
    :cond_1d
    if-eqz v9, :cond_1e

    .line 1919
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1920
    :cond_1e
    if-eqz v20, :cond_1f

    .line 1921
    const/16 v28, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1922
    :cond_1f
    if-eqz v24, :cond_20

    .line 1923
    const/16 v28, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1925
    :cond_20
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    move/from16 v28, v0

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2e

    .line 1928
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f08000f

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\n"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1929
    .local v16, mMissCallNumber:Ljava/lang/String;
    if-eqz v9, :cond_21

    .line 1931
    const-string v28, "loading_to_loaded"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 1932
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x2080225

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1934
    :cond_21
    if-eqz v20, :cond_22

    .line 1935
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1975
    .end local v16           #mMissCallNumber:Ljava/lang/String;
    :cond_22
    :goto_3
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_23

    .line 1977
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v29, v0

    const/16 v31, 0x0

    invoke-static/range {v28 .. v31}, Lcom/android/htccontacts/util/TimeUtils;->getRelativeDateStringUsingSystemFormat(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v13

    .line 1978
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v29

    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Lcom/htc/util/contacts/TimeUtils;->getFormatTime(Landroid/content/Context;ZJ)Ljava/lang/String;

    move-result-object v17

    .line 1979
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    iput-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 1980
    if-eqz v24, :cond_23

    .line 1981
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2011
    .end local v13           #mDailyStr:Ljava/lang/String;
    .end local v17           #mTimeStr:Ljava/lang/String;
    :cond_23
    :goto_4
    if-eqz v6, :cond_24

    .line 2012
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2015
    :cond_24
    if-eqz v7, :cond_25

    .line 2017
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2018
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2019
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2020
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2021
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 2025
    :cond_25
    if-eqz v5, :cond_26

    .line 2027
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2028
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2029
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2030
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2031
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 2036
    :cond_26
    if-eqz v4, :cond_16

    .line 2038
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2039
    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2040
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2041
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x3

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2042
    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnActionListListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_0

    .line 2233
    .end local v4           #btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v5           #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v6           #btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v7           #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v8           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v9           #imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v10           #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v11           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v14           #mItemIdentifier:[Ljava/lang/String;
    .end local v18           #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v20           #textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v21           #textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v22           #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v23           #textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v24           #textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v25           #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v26           #timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v27           #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    :catch_0
    move-exception v28

    goto/16 :goto_0

    .line 1861
    .restart local v4       #btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v5       #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v6       #btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v7       #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v8       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .restart local v9       #imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .restart local v10       #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .restart local v11       #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v14       #mItemIdentifier:[Ljava/lang/String;
    .restart local v18       #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v20       #textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v21       #textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v22       #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v23       #textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v24       #textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .restart local v25       #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v26       #timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    .restart local v27       #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_27
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_29

    .line 1863
    if-eqz v27, :cond_28

    .line 1864
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1865
    :cond_28
    if-eqz v10, :cond_1a

    .line 1866
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_1

    .line 1870
    :cond_29
    if-eqz v27, :cond_2a

    .line 1871
    const-string v28, "visibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1872
    :cond_2a
    if-eqz v10, :cond_1a

    .line 1874
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->actionType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getDefaultActionIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 1893
    :cond_2b
    if-eqz v25, :cond_2c

    .line 1894
    const-string v28, "notice_newmail"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1895
    :cond_2c
    if-eqz v18, :cond_1b

    .line 1897
    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1898
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    const/16 v29, 0x63

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_2d

    .line 1899
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1901
    :cond_2d
    const-string v28, "99+"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1939
    .restart local v13       #mDailyStr:Ljava/lang/String;
    .restart local v17       #mTimeStr:Ljava/lang/String;
    :cond_2e
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    move/from16 v28, v0

    const/16 v29, 0x68

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_31

    .line 1941
    if-eqz v9, :cond_2f

    .line 1943
    const-string v28, "loading_to_loaded"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 1944
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    move/from16 v28, v0

    if-eqz v28, :cond_30

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    move-object/from16 v28, v0

    if-eqz v28, :cond_30

    .line 1945
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    move-object/from16 v29, v0

    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    move/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v28 .. v31}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1971
    :cond_2f
    :goto_5
    if-eqz v20, :cond_22

    .line 1972
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1947
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x20801ee

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1950
    :cond_31
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    move/from16 v28, v0

    const/16 v29, 0x66

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_32

    .line 1952
    if-eqz v9, :cond_2f

    .line 1954
    const-string v28, "loading_to_loaded"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 1957
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f02000a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1960
    :cond_32
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    move/from16 v28, v0

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2f

    .line 1962
    if-eqz v9, :cond_2f

    .line 1964
    const-string v28, "loading_to_loaded"

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;)V

    .line 1967
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f020007

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1988
    .end local v13           #mDailyStr:Ljava/lang/String;
    .end local v17           #mTimeStr:Ljava/lang/String;
    :cond_33
    if-eqz v26, :cond_34

    .line 1989
    const-string v28, "add_contact"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1991
    :cond_34
    const/16 v28, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 1992
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x1

    cmp-long v28, v28, v30

    if-nez v28, :cond_38

    .line 1994
    if-eqz v21, :cond_35

    .line 1995
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x20c00a3

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2002
    :cond_35
    :goto_6
    if-eqz v20, :cond_36

    .line 2003
    const/16 v28, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2004
    :cond_36
    if-eqz v9, :cond_37

    .line 2005
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v9, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2006
    :cond_37
    if-eqz v24, :cond_23

    .line 2007
    const/16 v28, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_4

    .line 1999
    :cond_38
    if-eqz v21, :cond_35

    .line 2000
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080010

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_6

    .line 2050
    .end local v4           #btnAction:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v5           #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v6           #btnEmpty:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v7           #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v8           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v9           #imgDetail:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v10           #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .end local v11           #itemArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v14           #mItemIdentifier:[Ljava/lang/String;
    .end local v18           #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v20           #textInfo:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v21           #textInfo2:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v22           #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v23           #textNoContact:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v24           #textTime:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v25           #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v26           #timelineControl_Contacts:Lcom/htc/fusion/fx/FxTimelineControl;
    .end local v27           #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_39
    const/16 v28, 0x9

    move/from16 v0, v28

    new-array v15, v0, [Ljava/lang/String;

    const/16 v28, 0x0

    const-string v29, "textlabel.people_contact"

    aput-object v29, v15, v28

    const/16 v28, 0x1

    const-string v29, "textlabel.common_notifiction"

    aput-object v29, v15, v28

    const/16 v28, 0x2

    const-string v29, "dynamicimage.default_image"

    aput-object v29, v15, v28

    const/16 v28, 0x3

    const-string v29, "dynamicimage.people_icon"

    aput-object v29, v15, v28

    const/16 v28, 0x4

    const-string v29, "timeline.people_notifiction"

    aput-object v29, v15, v28

    const/16 v28, 0x5

    const-string v29, "timeline.people_button"

    aput-object v29, v15, v28

    const/16 v28, 0x6

    const-string v29, "button.people_default_image"

    aput-object v29, v15, v28

    const/16 v28, 0x7

    const-string v29, "button.people_contact"

    aput-object v29, v15, v28

    const/16 v28, 0x8

    const-string v29, "textlabel.common_notifiction99"

    aput-object v29, v15, v28

    .line 2054
    .local v15, mItemIdentifier2:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Lcom/htc/fusion/fx/controls/FxListItem;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v12

    .line 2056
    .local v12, itemArray2:[Lcom/htc/fusion/fx/FxObject;
    const/16 v28, 0x0

    aget-object v22, v12, v28

    check-cast v22, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 2058
    .restart local v22       #textName:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x1

    aget-object v18, v12, v28

    check-cast v18, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 2062
    .restart local v18       #textCount:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v28, 0x3

    aget-object v10, v12, v28

    check-cast v10, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 2064
    .restart local v10       #imgIndicator:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    const/16 v28, 0x4

    aget-object v25, v12, v28

    check-cast v25, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2066
    .restart local v25       #timelineControl:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v28, 0x5

    aget-object v27, v12, v28

    check-cast v27, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 2069
    .restart local v27       #timelineControl_DefaultAction:Lcom/htc/fusion/fx/FxTimelineControl;
    const/16 v28, 0x6

    aget-object v7, v12, v28

    check-cast v7, Lcom/htc/fusion/fx/controls/FxButton;

    .line 2071
    .restart local v7       #btnPeople:Lcom/htc/fusion/fx/controls/FxButton;
    const/16 v28, 0x7

    aget-object v5, v12, v28

    check-cast v5, Lcom/htc/fusion/fx/controls/FxButton;

    .line 2073
    .restart local v5       #btnBar:Lcom/htc/fusion/fx/controls/FxButton;
    const/16 v28, 0x8

    aget-object v19, v12, v28

    check-cast v19, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 2074
    .local v19, textCount99:Lcom/htc/fusion/fx/controls/FxTextLabel;
    if-eqz v19, :cond_3a

    const/16 v28, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2075
    :cond_3a
    if-eqz v10, :cond_3b

    .line 2076
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2077
    :cond_3b
    if-eqz v18, :cond_3c

    .line 2078
    const/16 v28, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2080
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-eqz v28, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    move/from16 v0, p3

    move/from16 v1, v28

    if-gt v0, v1, :cond_16

    .line 2082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 2084
    .restart local v8       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x2

    cmp-long v28, v28, v30

    if-eqz v28, :cond_3d

    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x3

    cmp-long v28, v28, v30

    if-nez v28, :cond_46

    .line 2087
    :cond_3d
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x2

    cmp-long v28, v28, v30

    if-nez v28, :cond_41

    .line 2090
    if-eqz v22, :cond_3e

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080009

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2093
    :cond_3e
    if-eqz v27, :cond_3f

    .line 2094
    const-string v28, "visibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2095
    :cond_3f
    if-eqz v25, :cond_40

    .line 2096
    const-string v28, "read_maill"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2098
    :cond_40
    if-eqz v10, :cond_41

    .line 2100
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2101
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f02000c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 2106
    :cond_41
    iget-wide v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v28, v0

    const-wide/16 v30, -0x3

    cmp-long v28, v28, v30

    if-nez v28, :cond_44

    .line 2109
    if-eqz v22, :cond_42

    .line 2110
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f080006

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2112
    :cond_42
    if-eqz v27, :cond_43

    .line 2113
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2114
    :cond_43
    if-eqz v10, :cond_44

    .line 2115
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2122
    :cond_44
    if-eqz v7, :cond_45

    .line 2124
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2125
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2126
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2127
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 2131
    :cond_45
    if-eqz v5, :cond_16

    .line 2133
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2134
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2135
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2136
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_0

    .line 2142
    :cond_46
    if-eqz v22, :cond_47

    .line 2143
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->displayname:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 2158
    :cond_47
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v28

    if-eqz v28, :cond_4c

    .line 2160
    if-eqz v27, :cond_48

    .line 2161
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2162
    :cond_48
    if-eqz v10, :cond_49

    .line 2163
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2190
    :cond_49
    :goto_7
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    if-nez v28, :cond_50

    .line 2192
    if-eqz v25, :cond_4a

    .line 2194
    const-string v28, "read_maill"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2214
    :cond_4a
    :goto_8
    if-eqz v7, :cond_4b

    .line 2216
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2217
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2218
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2219
    invoke-virtual {v7}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnPeopleListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$3800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 2223
    :cond_4b
    if-eqz v5, :cond_16

    .line 2225
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 2226
    const/16 v28, 0x0

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2227
    new-instance v28, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItem;I)V

    move-object/from16 v0, v28

    #setter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    .line 2228
    invoke-virtual {v5}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v28

    #getter for: Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->mBtnBarListener:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;
    invoke-static {v8}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->access$4000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ListItemBtnListener;

    move-result-object v29

    invoke-interface/range {v28 .. v29}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_0

    .line 2167
    :cond_4c
    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_4e

    .line 2169
    if-eqz v27, :cond_4d

    .line 2170
    const-string v28, "invisibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2171
    :cond_4d
    if-eqz v10, :cond_49

    .line 2172
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 2177
    :cond_4e
    if-eqz v27, :cond_4f

    .line 2178
    const-string v28, "visibility"

    invoke-virtual/range {v27 .. v28}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2179
    :cond_4f
    if-eqz v10, :cond_49

    .line 2181
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2182
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v28

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v29, v0

    iget-object v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->actionType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v28 .. v30}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getDefaultActionIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 2200
    :cond_50
    if-eqz v25, :cond_51

    .line 2201
    const-string v28, "notice_newmail"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 2202
    :cond_51
    if-eqz v18, :cond_4a

    .line 2204
    const/16 v28, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 2205
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    const/16 v29, 0x63

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_52

    .line 2206
    iget v0, v8, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v28, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 2208
    :cond_52
    const-string v28, "99+"

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8
.end method

.method private SetScene(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "Scene_path"
    .parameter "Item_path"
    .parameter "bInit"

    .prologue
    .line 1118
    const/16 v9, 0xa

    :try_start_0
    new-array v3, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "ListViewViewPort"

    aput-object v10, v3, v9

    const/4 v9, 0x1

    const-string v10, "timeline.main_page"

    aput-object v10, v3, v9

    const/4 v9, 0x2

    const-string v10, "textlabel.empty_page"

    aput-object v10, v3, v9

    const/4 v9, 0x3

    const-string v10, "timeline.common_btn_left_icon"

    aput-object v10, v3, v9

    const/4 v9, 0x4

    const-string v10, "button.common_right"

    aput-object v10, v3, v9

    const/4 v9, 0x5

    const-string v10, "button.common_left"

    aput-object v10, v3, v9

    const/4 v9, 0x6

    const-string v10, "button.common_header"

    aput-object v10, v3, v9

    const/4 v9, 0x7

    const-string v10, "textlabel.common_header_left"

    aput-object v10, v3, v9

    const/16 v9, 0x8

    const-string v10, "textlabel.header_secondary"

    aput-object v10, v3, v9

    const/16 v9, 0x9

    const-string v10, "app.hitbox"

    aput-object v10, v3, v9

    .line 1123
    .local v3, mSceneIdentifier:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v9

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 1124
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/FxScene;->stop()V

    .line 1126
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v9, v3}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    .line 1128
    .local v5, sceneArray:[Lcom/htc/fusion/fx/FxObject;
    const/4 v9, 0x0

    aget-object v9, v5, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 1130
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1132
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 1135
    :cond_0
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 1137
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 1143
    :cond_1
    const/4 v9, 0x1

    aget-object v9, v5, v9

    check-cast v9, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1145
    const/4 v9, 0x2

    aget-object v9, v5, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1147
    const/4 v9, 0x3

    aget-object v8, v5, v9

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 1150
    .local v8, timelineControl_btn_icon:Lcom/htc/fusion/fx/FxTimelineControl;
    const/4 v9, 0x4

    aget-object v1, v5, v9

    check-cast v1, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1153
    .local v1, btnRight:Lcom/htc/fusion/fx/controls/FxButton;
    const/4 v9, 0x5

    aget-object v0, v5, v9

    check-cast v0, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1156
    .local v0, btnLeft:Lcom/htc/fusion/fx/controls/FxButton;
    const/4 v9, 0x6

    aget-object v2, v5, v9

    check-cast v2, Lcom/htc/fusion/fx/controls/FxButton;

    .line 1161
    .local v2, btnheader:Lcom/htc/fusion/fx/controls/FxButton;
    if-eqz p2, :cond_4

    .line 1163
    const/4 v9, 0x7

    aget-object v6, v5, v9

    check-cast v6, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1165
    .local v6, textTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    const/16 v9, 0x8

    aget-object v7, v5, v9

    check-cast v7, Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 1167
    .local v7, textTitleSecondary:Lcom/htc/fusion/fx/controls/FxTextLabel;
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1168
    const-string v9, "Favorite_8656150684447252476_6727701920173350445"

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 1170
    :cond_2
    if-eqz v6, :cond_3

    .line 1171
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1172
    :cond_3
    if-eqz v7, :cond_4

    .line 1173
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1176
    .end local v6           #textTitle:Lcom/htc/fusion/fx/controls/FxTextLabel;
    .end local v7           #textTitleSecondary:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :cond_4
    const/16 v9, 0x9

    aget-object v9, v5, v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 1178
    if-eqz p3, :cond_10

    .line 1181
    iget-boolean v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    if-nez v9, :cond_5

    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 1182
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    .line 1183
    :cond_5
    iget-boolean v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    if-nez v9, :cond_6

    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6

    .line 1184
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    .line 1186
    :cond_6
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v9, :cond_8

    .line 1188
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9, p2}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 1190
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1191
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_11

    .line 1193
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$4;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1198
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1200
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$5;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$5;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1205
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getAsyncListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1207
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    if-nez v9, :cond_7

    .line 1209
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$6;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$6;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1215
    :cond_7
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1244
    :goto_0
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$10;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$10;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1249
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1253
    :cond_8
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v9, :cond_9

    .line 1254
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v10, "empty_page"

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1258
    :cond_9
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v9, :cond_a

    .line 1260
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x20c00a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 1263
    :cond_a
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v9, :cond_b

    .line 1266
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 1267
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 1268
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 1270
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1271
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$11;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1279
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1296
    :cond_b
    :goto_1
    if-eqz v8, :cond_c

    .line 1298
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v10, "Frequent Contacts"

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1299
    const-string v9, "frequent_people"

    invoke-virtual {v8, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 1305
    :cond_c
    :goto_2
    if-eqz v1, :cond_d

    .line 1307
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_15

    .line 1309
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1310
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$13;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$13;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1323
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1345
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    .line 1347
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 1348
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_16

    .line 1350
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1351
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$15;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1386
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1430
    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    .line 1432
    iget v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_17

    .line 1434
    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1435
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$17;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$17;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener:Lcom/htc/fusion/fx/MessageListener;

    .line 1441
    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1457
    :cond_f
    :goto_5
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v9, :cond_10

    .line 1459
    const/4 v4, 0x0

    .line 1460
    .local v4, nVirtualization:I
    const-string v9, "Port/People_Big_4x4_ListView.m10"

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1461
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060007

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1469
    :goto_6
    const/4 v9, 0x0

    iput v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    .line 1470
    add-int/lit8 v9, v4, 0x4

    iput v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    .line 1471
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9, v4}, Lcom/htc/fusion/fx/controls/FxListView;->enableVirtualization(I)V

    .line 1472
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v10, 0x14

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxListView;->enableRecycling(I)V

    .line 1474
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    invoke-virtual {v9, v10}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 1482
    .end local v0           #btnLeft:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v1           #btnRight:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v2           #btnheader:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v3           #mSceneIdentifier:[Ljava/lang/String;
    .end local v4           #nVirtualization:I
    .end local v5           #sceneArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v8           #timelineControl_btn_icon:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_10
    :goto_7
    return-void

    .line 1219
    .restart local v0       #btnLeft:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v1       #btnRight:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v2       #btnheader:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v3       #mSceneIdentifier:[Ljava/lang/String;
    .restart local v5       #sceneArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v8       #timelineControl_btn_icon:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_11
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$7;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$7;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1224
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1226
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$8;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$8;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1231
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getAsyncListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListItemImageListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 1233
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    if-nez v9, :cond_12

    .line 1235
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$9;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$9;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1241
    :cond_12
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mListViewDefaultListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_0

    .line 1479
    .end local v0           #btnLeft:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v1           #btnRight:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v2           #btnheader:Lcom/htc/fusion/fx/controls/FxButton;
    .end local v3           #mSceneIdentifier:[Ljava/lang/String;
    .end local v5           #sceneArray:[Lcom/htc/fusion/fx/FxObject;
    .end local v8           #timelineControl_btn_icon:Lcom/htc/fusion/fx/FxTimelineControl;
    :catch_0
    move-exception v9

    goto :goto_7

    .line 1283
    .restart local v0       #btnLeft:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v1       #btnRight:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v2       #btnheader:Lcom/htc/fusion/fx/controls/FxButton;
    .restart local v3       #mSceneIdentifier:[Ljava/lang/String;
    .restart local v5       #sceneArray:[Lcom/htc/fusion/fx/FxObject;
    .restart local v8       #timelineControl_btn_icon:Lcom/htc/fusion/fx/FxTimelineControl;
    :cond_13
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1284
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$12;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$12;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1292
    iget-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_emptyhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v9}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mClickListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_1

    .line 1301
    :cond_14
    const-string v9, "add_people"

    invoke-virtual {v8, v9}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1327
    :cond_15
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1328
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$14;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$14;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1341
    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnRightListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_3

    .line 1390
    :cond_16
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1391
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$16;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$16;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1426
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnLeftListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_4

    .line 1445
    :cond_17
    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    invoke-interface {v9}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 1446
    new-instance v9, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$18;

    invoke-direct {v9, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$18;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener_L:Lcom/htc/fusion/fx/MessageListener;

    .line 1452
    invoke-virtual {v2}, Lcom/htc/fusion/fx/controls/FxButton;->getClickSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mBtnHeaderListener_L:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v9, v10}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    goto/16 :goto_5

    .line 1462
    .restart local v4       #nVirtualization:I
    :cond_18
    const-string v9, "Port/People_4x2_ListView.m10"

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 1463
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060006

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto/16 :goto_6

    .line 1464
    :cond_19
    const-string v9, "Port/People_4x3_ListView.m10"

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 1465
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060005

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    goto/16 :goto_6

    .line 1467
    :cond_1a
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f060004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto/16 :goto_6
.end method

.method static synthetic access$000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    return p1
.end method

.method static synthetic access$102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    return p1
.end method

.method static synthetic access$202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchVoiceMail()V

    return-void
.end method

.method static synthetic access$2600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchAddFavorites()V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchDefaultAction(Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->selectDefaultAction(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactRelatedAction(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->OnItemEvent(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->onItemMessageReceivedAsync(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchFrequentGroup()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchGroupPicker()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchAllContacts()V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleIDColumn:I

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Lcom/android/htccontacts/indicator/IndicatorStackProcessor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->showLoadMessages()V

    return-void
.end method

.method static synthetic access$4800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->hideLoadMessage()V

    return-void
.end method

.method static synthetic access$4900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I

    return v0
.end method

.method static synthetic access$5202(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I

    return p1
.end method

.method static synthetic access$5300(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z

    return v0
.end method

.method static synthetic access$5302(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z

    return p1
.end method

.method static synthetic access$5400(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z

    return p1
.end method

.method static synthetic access$5502(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    return p1
.end method

.method static synthetic access$5600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getGroupList()V

    return-void
.end method

.method static synthetic access$5700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->renewCursor()V

    return-void
.end method

.method static synthetic access$5800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->queryIndicators(II)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->updateContactStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->idExistinChangeContactList(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z

    return v0
.end method

.method static synthetic access$902(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z

    return p1
.end method

.method private cacheColumnIndices(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 4425
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleIDColumn:I

    .line 4426
    const-string v0, "starred"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStarredColumn:I

    .line 4427
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleNameColumn:I

    .line 4428
    const-string v0, "lookup"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleNameLookup:I

    .line 4430
    const-string v0, "default_action"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleDefaultActionColumn:I

    .line 4432
    const-string v0, "data7"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSocialNetworkColumn:I

    .line 4433
    const-string v0, "data15"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoColumn:I

    .line 4434
    const-string v0, "photo_file_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoIDColumn:I

    .line 4435
    const-string v0, "status_update_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStatusUpdateIdColumn:I

    .line 4436
    return-void
.end method

.method private extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .locals 20
    .parameter "cursor"
    .parameter "bm"

    .prologue
    .line 2545
    new-instance v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 2547
    .local v6, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    if-nez p1, :cond_0

    .line 2657
    :goto_0
    return-object v6

    .line 2552
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleIDColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    .line 2553
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleNameColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->displayname:Ljava/lang/String;

    .line 2556
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleDefaultActionColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    .line 2557
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->view:Landroid/view/View;

    .line 2561
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->displayname:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->name:Ljava/lang/String;

    .line 2563
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    .line 2565
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2566
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2567
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2568
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2569
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2570
    const-string v17, "Port/People_Big_4x4_ListView.m10"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "Land/People_Big_4x4_ListView_L.m10"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2573
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStatusUpdateIdColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2582
    :goto_1
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2583
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2584
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2585
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2586
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2587
    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    .line 2589
    const/4 v3, 0x0

    .line 2591
    .local v3, actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 2592
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 2593
    .local v13, nSaperateIndex:I
    if-ltz v13, :cond_2

    .line 2594
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->actionType:Ljava/lang/String;

    .line 2596
    :cond_2
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "|"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    .line 2597
    if-ltz v13, :cond_3

    .line 2598
    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v13, 0x1

    iget-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->action:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->parseDefaultAction(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;

    move-result-object v3

    .line 2600
    iget-object v0, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->address_:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->address:Ljava/lang/String;

    .line 2601
    iget-object v0, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->phone_:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->phonenumer:Ljava/lang/String;

    .line 2602
    iget-object v0, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->type_:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    iget-object v0, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->type_:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 2603
    iget-object v0, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;->type_:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->type:I

    .line 2610
    .end local v13           #nSaperateIndex:I
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 2611
    .local v5, bms:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2613
    .local v7, displayPhotoUri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 2615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoIDColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2616
    .local v14, photo_file_id:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSocialNetworkColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2617
    .local v11, lPhotoSocialNetworkType:J
    const-wide/16 v17, 0x1

    cmp-long v17, v17, v11

    if-nez v17, :cond_7

    const/4 v4, 0x1

    .line 2618
    .local v4, bIsFacebookPhoto:Z
    :goto_3
    const-wide/16 v17, 0x0

    cmp-long v17, v14, v17

    if-lez v17, :cond_8

    .line 2619
    sget-object v17, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 2620
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "r"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v9

    .line 2621
    .local v9, is:Ljava/io/InputStream;
    if-eqz v9, :cond_4

    .line 2622
    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 2624
    .local v16, srcBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeY:I

    move/from16 v18, v0

    invoke-static/range {v16 .. v18}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2625
    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    .line 2626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v5, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->drawBottomLeftOverlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2649
    .end local v4           #bIsFacebookPhoto:Z
    .end local v9           #is:Ljava/io/InputStream;
    .end local v11           #lPhotoSocialNetworkType:J
    .end local v14           #photo_file_id:J
    .end local v16           #srcBitmap:Landroid/graphics/Bitmap;
    :cond_4
    :goto_4
    if-nez v5, :cond_a

    .line 2650
    const/16 v17, 0x0

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    .line 2651
    move-object/from16 v0, p2

    iput-object v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    goto/16 :goto_0

    .line 2574
    .end local v3           #actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    .end local v5           #bms:Landroid/graphics/Bitmap;
    .end local v7           #displayPhotoUri:Landroid/net/Uri;
    :catch_0
    move-exception v8

    .line 2576
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "ContactWidgetMatrix"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to getLong(), mPeopleStatusUpdateIdColumn = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPeopleStatusUpdateIdColumn:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2577
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J

    goto/16 :goto_1

    .line 2581
    .end local v8           #e:Ljava/lang/Exception;
    :cond_5
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    iput-wide v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J

    goto/16 :goto_1

    .line 2605
    .restart local v3       #actionInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils$ActionInfo;
    .restart local v13       #nSaperateIndex:I
    :cond_6
    const/16 v17, -0x1

    move/from16 v0, v17

    iput v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->type:I

    goto/16 :goto_2

    .line 2617
    .end local v13           #nSaperateIndex:I
    .restart local v5       #bms:Landroid/graphics/Bitmap;
    .restart local v7       #displayPhotoUri:Landroid/net/Uri;
    .restart local v11       #lPhotoSocialNetworkType:J
    .restart local v14       #photo_file_id:J
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2630
    .restart local v4       #bIsFacebookPhoto:Z
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoColumn:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v10

    .line 2632
    .local v10, jpgPhotoData:[B
    if-eqz v10, :cond_4

    array-length v0, v10

    move/from16 v17, v0

    if-lez v17, :cond_4

    .line 2633
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    .line 2634
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeY:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto/16 :goto_4

    .line 2636
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeY:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v10, v0, v1}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap([BII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    goto/16 :goto_4

    .line 2643
    .end local v4           #bIsFacebookPhoto:Z
    .end local v10           #jpgPhotoData:[B
    .end local v11           #lPhotoSocialNetworkType:J
    .end local v14           #photo_file_id:J
    :catch_1
    move-exception v8

    .line 2645
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "ContactWidgetMatrix"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failed to call getScaledCenterCropBitmap()"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2646
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 2653
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    .line 2654
    iput-object v5, v6, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->photo:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private getGroupList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 3251
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z

    if-eqz v0, :cond_6

    .line 3252
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryGroupList:Z

    .line 3261
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    .line 3265
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    .line 3266
    .local v1, simpleUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3269
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 3270
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupIDIdx:I

    .line 3271
    const-string v0, "title"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupNameIdx:I

    .line 3272
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3274
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 3276
    .local v9, size:I
    const/4 v8, 0x0

    .line 3278
    .local v8, position:I
    :cond_2
    new-instance v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;

    invoke-direct {v7, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 3279
    .local v7, gm:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupIDIdx:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->id_:J

    .line 3280
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupNameIdx:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->name_:Ljava/lang/String;

    .line 3282
    iget-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->name_:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 3283
    iget-object v0, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->name_:Ljava/lang/String;

    const-string v2, "Favorite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 3284
    const-wide/16 v2, -0x1

    iput-wide v2, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;->id_:J

    .line 3288
    :cond_3
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3291
    add-int/lit8 v8, v8, 0x1

    .line 3292
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    if-ne v8, v9, :cond_2

    .line 3295
    .end local v7           #gm:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$GroupMap;
    .end local v8           #position:I
    .end local v9           #size:I
    :cond_4
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 3296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3297
    const/4 v6, 0x0

    .line 3300
    .end local v1           #simpleUri:Landroid/net/Uri;
    .end local v6           #c:Landroid/database/Cursor;
    :cond_5
    :goto_0
    return-void

    .line 3255
    :cond_6
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3256
    const-string v0, "ContactWidgetMatrix"

    const-string v2, "No need Requery group list and return"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3295
    .restart local v1       #simpleUri:Landroid/net/Uri;
    .restart local v6       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_7

    .line 3296
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3297
    const/4 v6, 0x0

    .line 3295
    :cond_7
    throw v0
.end method

.method private hideLoadMessage()V
    .locals 2

    .prologue
    .line 4193
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v1, "Frequent Contacts"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4204
    :cond_0
    :goto_0
    return-void

    .line 4199
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_2

    .line 4200
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "main_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 4201
    :cond_2
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 4202
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private idExistinChangeContactList(J)I
    .locals 5
    .parameter "person_id"

    .prologue
    .line 3303
    const/4 v1, -0x1

    .line 3304
    .local v1, index:I
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 3306
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3307
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 3308
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    iget-wide v3, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->pid:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 3313
    .end local v0           #i:I
    .end local v2           #size:I
    :goto_1
    return v0

    .line 3307
    .restart local v0       #i:I
    .restart local v2       #size:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :cond_1
    move v0, v1

    .line 3313
    goto :goto_1
.end method

.method private initPanel()V
    .locals 4

    .prologue
    .line 558
    new-instance v2, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-direct {v2}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;-><init>()V

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 563
    .local v0, filter2:Landroid/content/IntentFilter;
    const-string v2, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v2, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    const-string v2, "android.intent.action.SYNC_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    const-string v2, "com.htc.android.mail.intent.change"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 567
    const-string v2, "anddroid.intent.action.GROUP_MODIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    const-string v2, "com.htc.intent.action.ACTION_ACCOUNT_DELETION_CONTACT_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 569
    const-string v2, "com.htc.intent.action.ACTION_FREQUENCY_GROUP_FREQUENCY_UPDATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v2, "com.htc.opensense.provider.intent.ACTION_SYNC_CONTACTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    new-instance v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;

    invoke-direct {v2, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$1;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

    .line 787
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 791
    .local v1, filter3:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    new-instance v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;

    invoke-direct {v2, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$2;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 815
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 817
    return-void
.end method

.method private launchAddFavorites()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3450
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3452
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchGroupPicker()V

    .line 3483
    :goto_0
    return-void

    .line 3456
    :cond_0
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3457
    .local v0, bIsFavorite:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3458
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3459
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3460
    if-eqz v0, :cond_2

    .line 3462
    const-string v2, "com.android.htccontacts.ACTION_PICK_FAVORITE_CANDIDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3463
    const-string v2, "multiple"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3464
    const-string v2, "favorite_defaultaction"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3465
    const-string v2, "exclude"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3467
    const-string v3, "group_name"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3477
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3478
    :catch_0
    move-exception v2

    goto :goto_0

    .line 3467
    :cond_1
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    goto :goto_1

    .line 3471
    :cond_2
    const-string v2, "com.android.htccontacts.ACTION_GROUP_CANDIDATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3472
    const-string v2, "from_group_widget"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3473
    const-string v3, "group_name"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    :goto_3
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    goto :goto_3

    .line 3480
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private launchAllContacts()V
    .locals 3

    .prologue
    .line 3424
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3435
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3439
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3445
    :goto_1
    return-void

    .line 3431
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3432
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3442
    :catch_0
    move-exception v1

    goto :goto_1

    .line 3440
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private launchContactCard(J)V
    .locals 4
    .parameter "pid"

    .prologue
    const/high16 v3, 0x1000

    .line 3573
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3575
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3576
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3577
    const-string v2, "com.android.htccontacts"

    const-string v3, "com.android.htccontacts.MultipleActivitiesMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3578
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3579
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3590
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3596
    :goto_1
    return-void

    .line 3583
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3584
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3585
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3586
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 3593
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3591
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private launchContactCard(Ljava/lang/String;)V
    .locals 2
    .parameter "strUri"

    .prologue
    .line 3601
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3602
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3603
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3604
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3606
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3612
    :goto_0
    return-void

    .line 3609
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3607
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private launchContactRelatedAction(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;I)V
    .locals 6
    .parameter "contact"
    .parameter "ActionType"

    .prologue
    .line 3334
    const/4 v0, 0x0

    .line 3335
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x65

    if-ne p2, v2, :cond_1

    .line 3337
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3338
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/htc/provider/HtcContactsContract$Contacts;->getViewContactCardIntent(Landroid/content/ContentResolver;JZ)Landroid/content/Intent;

    move-result-object v0

    .line 3339
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3340
    const-string v2, "DefaultTab"

    const-string v3, "PEOPLE_DETAIL_CALL_HISTORY"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3408
    :goto_0
    if-eqz v0, :cond_0

    .line 3410
    const/high16 v2, 0x1000

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3411
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3418
    :cond_0
    :goto_1
    return-void

    .line 3342
    :cond_1
    const/16 v2, 0x67

    if-ne p2, v2, :cond_2

    .line 3345
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://mail/messages/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3346
    .local v1, sNewUri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3347
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.ReadScreen"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 3350
    .end local v1           #sNewUri:Ljava/lang/String;
    :cond_2
    const/16 v2, 0x66

    if-ne p2, v2, :cond_3

    .line 3353
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3354
    .restart local v1       #sNewUri:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SENDTO"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3357
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 3358
    .end local v1           #sNewUri:Ljava/lang/String;
    :cond_3
    const/16 v2, 0x68

    if-ne p2, v2, :cond_4

    .line 3360
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3365
    .restart local v0       #intent:Landroid/content/Intent;
    iget-wide v2, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-direct {p0, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V

    goto :goto_1

    .line 3403
    :cond_4
    iget-wide v2, p1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-direct {p0, v2, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V

    goto :goto_1

    .line 3415
    :catch_0
    move-exception v2

    goto :goto_1

    .line 3413
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private launchDefaultAction(Ljava/lang/String;)V
    .locals 19
    .parameter "sDefaultActionInfo"

    .prologue
    .line 3633
    if-nez p1, :cond_1

    .line 3703
    :cond_0
    :goto_0
    return-void

    .line 3636
    :cond_1
    sget-object v16, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3637
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3638
    .local v8, sContactCardPattern:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 3640
    invoke-direct/range {p0 .. p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(Ljava/lang/String;)V

    goto :goto_0

    .line 3645
    :cond_2
    const-string v17, "|"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 3647
    .local v5, nSaperateIndex:I
    if-ltz v5, :cond_0

    .line 3650
    add-int/lit8 v17, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3651
    const-string v17, "|"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 3653
    if-ltz v5, :cond_0

    .line 3656
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 3659
    .local v7, sAction:Ljava/lang/String;
    add-int/lit8 v17, v5, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 3660
    .local v15, sUri:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3662
    .local v3, intent:Landroid/content/Intent;
    const-string v10, "mailto:"

    .line 3663
    .local v10, sMailtoPattern:Ljava/lang/String;
    const-string v13, "sms:"

    .line 3664
    .local v13, sSMSPattern:Ljava/lang/String;
    const-string v17, "mailto:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 3666
    const-string v17, "mailto:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 3667
    .local v14, sU:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/provider/HtcUnionContact$ContactUtils;->getMailAddressByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    .line 3668
    .local v9, sMailAddress:Ljava/lang/String;
    new-instance v4, Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "mailto:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3669
    .local v4, mailTo:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v17, "android.intent.action.SENDTO"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3693
    .end local v4           #mailTo:Ljava/lang/String;
    .end local v9           #sMailAddress:Ljava/lang/String;
    .restart local v3       #intent:Landroid/content/Intent;
    :goto_1
    const/high16 v17, 0x1000

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3694
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 3695
    :catch_0
    move-exception v17

    goto/16 :goto_0

    .line 3671
    .end local v14           #sU:Ljava/lang/String;
    :cond_3
    const-string v17, "sms:"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 3673
    const-string v17, "sms:"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 3674
    .restart local v14       #sU:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/provider/HtcUnionContact$ContactUtils;->getPhoneNumberByUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 3675
    .local v12, sPhoneNumber:Ljava/lang/String;
    new-instance v11, Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sms:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3676
    .local v11, sNewUri:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3677
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 3679
    .end local v11           #sNewUri:Ljava/lang/String;
    .end local v12           #sPhoneNumber:Ljava/lang/String;
    .end local v14           #sU:Ljava/lang/String;
    :cond_4
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3683
    .restart local v3       #intent:Landroid/content/Intent;
    :try_start_1
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v6

    .line 3684
    .local v6, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v6, v3}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3686
    .end local v6           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 3699
    .restart local v14       #sU:Ljava/lang/String;
    :catch_2
    move-exception v17

    goto/16 :goto_0

    .line 3697
    :catch_3
    move-exception v17

    goto/16 :goto_0
.end method

.method private launchDefaultAction(Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;)V
    .locals 15
    .parameter "sDefaultActionInfo"
    .parameter "contact"

    .prologue
    .line 3706
    if-nez p1, :cond_1

    .line 3779
    :cond_0
    :goto_0
    return-void

    .line 3709
    :cond_1
    sget-object v11, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 3710
    .local v11, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3711
    .local v6, sContactCardPattern:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3713
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-direct {p0, v12, v13}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchContactCard(J)V

    goto :goto_0

    .line 3719
    :cond_2
    const-string v12, "|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3721
    .local v3, nSaperateIndex:I
    if-ltz v3, :cond_0

    .line 3724
    add-int/lit8 v12, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 3725
    const-string v12, "|"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 3727
    if-ltz v3, :cond_0

    .line 3730
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 3733
    .local v5, sAction:Ljava/lang/String;
    add-int/lit8 v12, v3, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 3734
    .local v10, sUri:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3736
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "mailto:"

    .line 3737
    .local v7, sMailtoPattern:Ljava/lang/String;
    const-string v9, "sms:"

    .line 3738
    .local v9, sSMSPattern:Ljava/lang/String;
    const-string v12, "mailto:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 3740
    new-instance v2, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mailto:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->address:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3741
    .local v2, mailTo:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v12, "android.intent.action.SENDTO"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v1, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3769
    .end local v2           #mailTo:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :goto_1
    const/high16 v12, 0x1000

    :try_start_0
    invoke-virtual {v1, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3770
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 3771
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .line 3743
    :cond_3
    const-string v12, "sms:"

    invoke-virtual {v10, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 3745
    new-instance v8, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sms:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->phonenumer:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3746
    .local v8, sNewUri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v1, v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3747
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 3749
    .end local v8           #sNewUri:Ljava/lang/String;
    :cond_4
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v1, v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3750
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v12, "personId"

    move-object/from16 v0, p2

    iget-wide v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3751
    const-string v12, "number"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->phonenumer:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3752
    const-string v12, "numberType"

    move-object/from16 v0, p2

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->type:I

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3753
    const-string v12, "hasPhoto"

    move-object/from16 v0, p2

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3754
    const-string v12, "name"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->displayname:Ljava/lang/String;

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    const-string v12, "fromDialer"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3758
    :try_start_1
    const-string v12, "phone"

    invoke-static {v12}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v12

    invoke-static {v12}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 3759
    .local v4, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    invoke-interface {v4, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3761
    .end local v4           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 3775
    :catch_2
    move-exception v12

    goto/16 :goto_0

    .line 3773
    :catch_3
    move-exception v12

    goto/16 :goto_0
.end method

.method private launchFrequentGroup()V
    .locals 3

    .prologue
    .line 3560
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3562
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFrequentEdit:Z

    .line 3563
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3564
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.config_smart_group"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3565
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.group.SmartGroupConfigurationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3566
    const/16 v1, 0x1e6c

    invoke-virtual {p0, v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3568
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private launchGroupPicker()V
    .locals 4

    .prologue
    .line 3545
    new-instance v1, Landroid/content/Intent;

    const-string v2, "OpenSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3546
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.htccontactwidgets_3d_fusion/opensetting"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3547
    const-string v2, "com.htc.htccontactwidgets_3d_fusion"

    const-string v3, "com.htc.htccontactwidgets_3d_fusion.ContactSetting"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3549
    const/16 v2, 0x162e

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3556
    :goto_0
    return-void

    .line 3551
    :catch_0
    move-exception v0

    .line 3552
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 3553
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v0

    .line 3554
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private launchVoiceMail()V
    .locals 4

    .prologue
    .line 3318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3319
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3320
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.VoiceMailActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3322
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    :goto_0
    const-string v1, "ContactWidgetMatrix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launch activity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3330
    return-void

    .line 3325
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3323
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private onItemMessageReceivedAsync(Lcom/htc/fusion/fx/controls/FxListItemEvent;)V
    .locals 3
    .parameter "itemEvent"

    .prologue
    .line 1042
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->eventType:I

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 1043
    :cond_0
    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxListItemEvent;->listItem:Lcom/htc/fusion/fx/controls/FxListItem;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListItem;->getIndex()I

    move-result v0

    .line 1044
    .local v0, index:I
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetImageItem(Lcom/htc/fusion/fx/controls/FxListItemEvent;Ljava/lang/String;I)V

    .line 1046
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method private onListViewEvent(Lcom/htc/fusion/fx/controls/FxListViewEvent;)V
    .locals 6
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const/16 v5, 0x1a0f

    .line 1066
    const/4 v1, 0x0

    .line 1068
    .local v1, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1070
    .local v0, b:Landroid/os/Bundle;
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-nez v3, :cond_2

    .line 1074
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1075
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1077
    :cond_0
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 1078
    .local v2, message_next:Landroid/os/Message;
    iput v5, v2, Landroid/os/Message;->what:I

    .line 1079
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->firstVisibleIndex:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1080
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->lastVisibleIndex:I

    iput v3, v2, Landroid/os/Message;->arg2:I

    .line 1081
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 1108
    .end local v2           #message_next:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 1082
    :cond_2
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    if-ne v3, v4, :cond_3

    .line 1083
    invoke-virtual {p0, v4}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->surpressHostSlide(Z)V

    .line 1084
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1085
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-eqz v3, :cond_1

    .line 1087
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 1088
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    goto :goto_0

    .line 1091
    :cond_3
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1092
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v3, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 1093
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-eqz v3, :cond_1

    .line 1095
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 1096
    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v3}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    goto :goto_0

    .line 1099
    :cond_4
    iget v3, p1, Lcom/htc/fusion/fx/controls/FxListViewEvent;->eventType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1101
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->surpressHostSlide(Z)V

    goto :goto_0
.end method

.method private preloadScene()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 464
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_0

    .line 466
    const-string v0, "Port/People_Big_4x4_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Port/People_Big_4x4_ListView.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 475
    :goto_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "timeline.tiltanim"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 478
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "tilt"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_P:Lcom/htc/fusion/fx/Marker;

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-nez v0, :cond_1

    .line 486
    const-string v0, "Port/People_Big_4x4_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 487
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Land/People_Big_4x4_ListView_L.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 495
    :goto_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    const-string v1, "timeline.tiltanim"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 498
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_1

    .line 499
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "tilt"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_L:Lcom/htc/fusion/fx/Marker;

    .line 503
    :cond_1
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 504
    invoke-static {v3}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->create(I)Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    .line 507
    return-void

    .line 468
    :cond_2
    const-string v0, "Port/People_4x2_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Port/People_4x2_ListView.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    goto :goto_0

    .line 470
    :cond_3
    const-string v0, "Port/People_4x3_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 471
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Port/People_4x3_ListView.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    goto/16 :goto_0

    .line 473
    :cond_4
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Port/People_4x4_ListView.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    goto/16 :goto_0

    .line 488
    :cond_5
    const-string v0, "Port/People_4x2_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 489
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Land/People_4x2_ListView_L.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    goto :goto_1

    .line 490
    :cond_6
    const-string v0, "Port/People_4x3_ListView.m10"

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 491
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Land/People_4x3_ListView_L.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    goto/16 :goto_1

    .line 493
    :cond_7
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    const-string v1, "Land/People_4x4_ListView_L.m10"

    invoke-interface {v0, v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    goto/16 :goto_1
.end method

.method private queryIndicators(II)V
    .locals 12
    .parameter "FirstIndex"
    .parameter "LastIndex"

    .prologue
    const-wide/16 v10, 0x0

    .line 4321
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 4416
    :cond_0
    :goto_0
    return-void

    .line 4325
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v2, 0x1a0f

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 4327
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    if-eqz v1, :cond_0

    .line 4335
    const/4 v7, 0x0

    .line 4336
    .local v7, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    const/4 v0, 0x0

    .line 4340
    .local v0, indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDestoryIndicator:Ljava/lang/Object;

    monitor-enter v2

    .line 4342
    :try_start_0
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    .line 4344
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 4345
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4346
    monitor-exit v2

    goto :goto_0

    .line 4355
    .end local v8           #i:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4348
    .restart local v8       #i:I
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .line 4349
    .local v9, indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    invoke-virtual {v9}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->close()V

    .line 4344
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4352
    .end local v9           #indicatorReq:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 4353
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4355
    .end local v8           #i:I
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4358
    move v8, p1

    .restart local v8       #i:I
    :goto_2
    if-gt v8, p2, :cond_0

    .line 4360
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-eqz v1, :cond_6

    .line 4362
    const-string v1, "ContactWidgetMatrix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryIndicators: Widget is going to destroy = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4366
    :cond_6
    if-ltz v8, :cond_7

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v8, v1, :cond_8

    .line 4368
    :cond_7
    const-string v1, "ContactWidgetMatrix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Index out of Bounds, array size is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", Index = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mWidgetDestroy = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4372
    :cond_8
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    if-eqz v1, :cond_0

    .line 4378
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    check-cast v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 4380
    .restart local v7       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    if-nez v7, :cond_a

    .line 4358
    :cond_9
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 4386
    :cond_a
    iget-wide v1, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v1, v1, v10

    if-ltz v1, :cond_9

    .line 4393
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4394
    .local v3, b:Landroid/os/Bundle;
    const-string v1, "contactId"

    iget-wide v4, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 4395
    const-string v1, "position"

    invoke-virtual {v3, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4396
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 4398
    const-string v1, "Port/People_Big_4x4_ListView.m10"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Land/People_Big_4x4_ListView_L.m10"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4399
    :cond_b
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .end local v0           #indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    const/16 v6, 0x66

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JI)V

    .line 4404
    .restart local v0       #indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    :goto_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4407
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorReqList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4409
    iget-wide v1, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J

    const-wide/16 v4, -0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_c

    .line 4410
    iput-wide v10, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J

    .line 4411
    :cond_c
    iget-wide v1, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusID:J

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;->changeStatusId(J)V

    .line 4413
    invoke-virtual {p0, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    goto :goto_3

    .line 4401
    :cond_d
    new-instance v0, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;

    .end local v0           #indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    iget-wide v4, v7, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    const/16 v6, 0x65

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/htccontacts/indicator/PersonIndicatorRequest;-><init>(Landroid/content/Context;Lcom/android/htccontacts/indicator/IndicatorResultListener;Landroid/os/Bundle;JI)V

    .restart local v0       #indicatorRequest:Lcom/android/htccontacts/indicator/PersonIndicatorRequest;
    goto :goto_4
.end method

.method private renewCursor()V
    .locals 9

    .prologue
    .line 2241
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mStartTime:J

    .line 2243
    const/4 v8, 0x0

    .line 2244
    .local v8, strGroupName:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2246
    const-string v8, ""

    .line 2253
    :goto_0
    const-string v0, "ContactWidgetMatrix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Renew group contacts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const-string v0, "content://com.android.contacts/contacts/simple_groupall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2256
    .local v3, queryUri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2257
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    const/16 v1, 0x1e61

    invoke-virtual {v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->cancelOperation(I)V

    .line 2259
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    const/16 v1, 0x1e61

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    .end local v3           #queryUri:Landroid/net/Uri;
    .end local v8           #strGroupName:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 2250
    .restart local v8       #strGroupName:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2263
    .end local v8           #strGroupName:Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2261
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private selectDefaultAction(J)V
    .locals 3
    .parameter "pid"

    .prologue
    .line 3616
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p1

    if-gez v1, :cond_0

    .line 3617
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3618
    .local v0, intentSelectDefaultAction:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.ContactGlanceSelectDefaultActionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3620
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3622
    const-string v1, "default_action_for_group"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3623
    const-string v1, "person_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3625
    const-string v1, "enable_contact_card_option"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3628
    const/16 v1, 0x26ee

    invoke-virtual {p0, v0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3630
    .end local v0           #intentSelectDefaultAction:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private showLoadMessages()V
    .locals 3

    .prologue
    .line 4183
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v0, :cond_0

    .line 4184
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "empty_page"

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 4185
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_1

    .line 4187
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 4188
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 4190
    :cond_1
    return-void
.end method

.method private updateContactStatus()V
    .locals 19

    .prologue
    .line 3114
    const/4 v12, -0x1

    .line 3115
    .local v12, index:I
    const/4 v14, 0x0

    .line 3116
    .local v14, size:I
    const/4 v2, 0x0

    .line 3120
    .local v2, PhotoCheck:Z
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3121
    .local v8, bmfo:Landroid/graphics/BitmapFactory$Options;
    const v10, 0x7f020019

    .line 3122
    .local v10, defaultPhotoResource:I
    const/4 v7, 0x0

    .line 3126
    .local v7, bm:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 3127
    .local v3, bUpdate:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_8

    .line 3128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3129
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_7

    .line 3130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    iget-wide v0, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->pid:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I

    move-result v12

    .line 3131
    if-gez v12, :cond_1

    .line 3129
    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 3135
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->checkGroup(Ljava/util/ArrayList;Ljava/lang/String;Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    if-nez v15, :cond_2

    .line 3137
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    .line 3139
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    iget-wide v0, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->pid:J

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    long-to-int v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3142
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;

    iget-wide v0, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactChange;->pid:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v9

    .line 3143
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_5

    .line 3144
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V

    .line 3145
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3146
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v2, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    .line 3147
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3149
    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 3150
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3153
    :cond_4
    :goto_2
    const/4 v3, 0x1

    .line 3155
    :cond_5
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_0

    .line 3156
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 3151
    :cond_6
    const/4 v15, 0x1

    if-ne v2, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-nez v15, :cond_4

    .line 3152
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    goto :goto_2

    .line 3161
    .end local v9           #c:Landroid/database/Cursor;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3164
    .end local v11           #i:I
    :cond_8
    const/4 v4, 0x0

    .line 3165
    .local v4, bUpdate2:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_c

    .line 3166
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3167
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_3
    if-ge v11, v14, :cond_b

    .line 3168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v0, v15

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I

    move-result v12

    .line 3169
    if-gez v12, :cond_9

    .line 3167
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 3172
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    if-lez v15, :cond_a

    .line 3173
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3174
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3175
    const/4 v4, 0x1

    goto :goto_4

    .line 3178
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3180
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    sub-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 3181
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    if-gez v15, :cond_c

    .line 3182
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 3186
    .end local v11           #i:I
    :cond_c
    const/4 v5, 0x0

    .line 3187
    .local v5, bUpdate3:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    if-eqz v15, :cond_13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_13

    .line 3188
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3189
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_5
    if-ge v11, v14, :cond_12

    .line 3190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I

    move-result v12

    .line 3191
    if-gez v12, :cond_e

    .line 3189
    :cond_d
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 3196
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v16 .. v18}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getSpecifiedContactInfo(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object v9

    .line 3197
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_10

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v15

    if-lez v15, :cond_10

    .line 3198
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V

    .line 3199
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3200
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v12, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3201
    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    .line 3202
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3205
    :cond_f
    :goto_7
    const/4 v5, 0x1

    .line 3207
    :cond_10
    if-eqz v9, :cond_d

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v15

    if-nez v15, :cond_d

    .line 3208
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 3203
    :cond_11
    const/4 v15, 0x1

    if-ne v2, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-nez v15, :cond_f

    .line 3204
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    goto :goto_7

    .line 3212
    .end local v9           #c:Landroid/database/Cursor;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3215
    .end local v11           #i:I
    :cond_13
    const/4 v6, 0x0

    .line 3216
    .local v6, bUpdate4:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_17

    .line 3217
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3218
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    if-ge v11, v14, :cond_16

    .line 3219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->getContactIndex(Ljava/util/ArrayList;Ljava/lang/Long;)I

    move-result v12

    .line 3220
    if-gez v12, :cond_14

    .line 3218
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 3223
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v15, v15, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-eqz v15, :cond_15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    if-lez v15, :cond_15

    .line 3224
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v15, v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 3225
    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3226
    const/4 v6, 0x1

    goto :goto_9

    .line 3229
    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 3231
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    sub-int/2addr v15, v14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 3232
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    if-gez v15, :cond_17

    .line 3233
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 3236
    .end local v11           #i:I
    :cond_17
    const-string v15, "ContactWidgetMatrix"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateContactStatus() bUpdate = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bUpdate2 = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bUpdate3 = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", bUpdate4 = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3238
    if-nez v3, :cond_18

    if-nez v4, :cond_18

    if-nez v5, :cond_18

    if-eqz v6, :cond_19

    .line 3240
    :cond_18
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v15}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 3241
    .local v13, msg:Landroid/os/Message;
    const/16 v15, 0x1a0e

    iput v15, v13, Landroid/os/Message;->what:I

    .line 3242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    iput v15, v13, Landroid/os/Message;->arg1:I

    .line 3243
    const/4 v15, 0x1

    iput v15, v13, Landroid/os/Message;->arg2:I

    .line 3245
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v15, v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 3247
    .end local v13           #msg:Landroid/os/Message;
    :cond_19
    return-void
.end method


# virtual methods
.method public StoreGroupnameToDB()V
    .locals 4

    .prologue
    .line 3788
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3802
    :goto_0
    return-void

    .line 3791
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 3793
    .local v1, props:Ljava/util/Properties;
    :try_start_0
    const-string v2, "group_name"

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3794
    const-string v2, "sence_path"

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3795
    const-string v2, "item_path"

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 3796
    invoke-virtual {p0, v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->storeInstanceData(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 3797
    :catch_0
    move-exception v0

    .line 3798
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 3799
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3800
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected addIndicatorRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V
    .locals 1
    .parameter "request"

    .prologue
    .line 4419
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-eqz v0, :cond_0

    .line 4420
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->addRequest(Lcom/android/htccontacts/indicator/IndicatorRequest;)V

    .line 4422
    :cond_0
    return-void
.end method

.method public extractFavorites(Landroid/database/Cursor;)V
    .locals 17
    .parameter "cursor"

    .prologue
    .line 2661
    const/4 v12, 0x0

    .line 2662
    .local v12, position:I
    const/4 v2, 0x0

    .line 2664
    .local v2, bPhotoCheck:Z
    if-nez p1, :cond_1

    .line 2829
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V

    .line 2669
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 2672
    .local v6, cursor_size:I
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2673
    .local v4, bmfo:Landroid/graphics/BitmapFactory$Options;
    const/high16 v7, 0x7f02

    .line 2675
    .local v7, defaultPhotoResource:I
    const-string v13, "Port/People_Big_4x4_ListView.m10"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "Land/People_Big_4x4_ListView_L.m10"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2676
    :cond_2
    const v7, 0x7f020019

    .line 2678
    :cond_3
    const/4 v3, 0x0

    .line 2683
    .local v3, bm:Landroid/graphics/Bitmap;
    if-nez v6, :cond_7

    .line 2798
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_2b

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_5

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_5
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2821
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_6

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_6
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    :goto_2
    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 2686
    :cond_7
    const/4 v12, 0x0

    .line 2688
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_8

    .line 2689
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    .line 2690
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v13, :cond_9

    .line 2692
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v9, v13, :cond_9

    .line 2693
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v15, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2692
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2697
    .end local v9           #i:I
    :cond_9
    if-nez v12, :cond_f

    .line 2698
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2706
    :cond_a
    :goto_4
    const/4 v10, 0x0

    .line 2707
    .local v10, isContactAryEmpty:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_b

    .line 2708
    const/4 v10, 0x1

    .line 2712
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    if-nez v13, :cond_17

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-nez v13, :cond_17

    .line 2714
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 2715
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2798
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_2e

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_d

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_d
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 2821
    if-eqz p1, :cond_e

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_e

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_e
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2699
    .end local v10           #isContactAryEmpty:Z
    :cond_f
    if-ge v12, v6, :cond_13

    .line 2700
    :try_start_3
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 2794
    :catch_0
    move-exception v8

    .line 2795
    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v13, "ContactWidgetMatrix"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extractFavorites: Widget is going to destroy = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    const-string v13, "ContactWidgetMatrix"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extractFavorites: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2798
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_2d

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_11

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_11
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2821
    if-eqz p1, :cond_12

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_12

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_12
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2701
    .end local v8           #e:Ljava/lang/Exception;
    :cond_13
    if-ne v12, v6, :cond_a

    .line 2798
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_31

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_15

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_15
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 2821
    if-eqz p1, :cond_16

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_16

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_16
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2719
    .restart local v10       #isContactAryEmpty:Z
    :cond_17
    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    move-result-object v5

    .line 2721
    .local v5, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_18

    .line 2723
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    iget-wide v15, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v13, v13, v15

    if-nez v13, :cond_18

    .line 2725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2726
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2728
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    iput v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2729
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2730
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    iput-wide v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    iput v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    iput-wide v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2733
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    .line 2734
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2735
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    iput-object v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2737
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v14, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    iput v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    .line 2742
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-eqz v13, :cond_1f

    .line 2744
    if-eqz v5, :cond_19

    .line 2745
    const/4 v5, 0x0

    .line 2746
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v13, :cond_1a

    .line 2747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 2748
    :cond_1a
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    .line 2751
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_1b

    .line 2752
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v13}, Ljava/util/Hashtable;->clear()V

    .line 2753
    :cond_1b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2798
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_2f

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_1c
    :goto_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_1d

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_1d
    monitor-exit v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 2821
    if-eqz p1, :cond_1e

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_1e
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2757
    :cond_1f
    :try_start_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v13, :cond_20

    .line 2760
    if-eqz v10, :cond_24

    .line 2761
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    iget-boolean v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-eqz v13, :cond_20

    .line 2763
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 2780
    :cond_20
    :goto_9
    add-int/lit8 v12, v12, 0x1

    .line 2783
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    .line 2787
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-result v13

    if-nez v13, :cond_2a

    .line 2798
    :goto_a
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_0

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v13, :cond_30

    .line 2802
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_21
    :goto_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v13, :cond_22

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v13}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_22
    monitor-exit v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 2821
    if-eqz p1, :cond_23

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v13

    if-nez v13, :cond_23

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_23
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v13, :cond_0

    .line 2826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2765
    :cond_24
    :try_start_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v12, v13, :cond_20

    .line 2769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    iput v13, v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    .line 2770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v2, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    .line 2771
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2772
    if-nez v2, :cond_29

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_29

    .line 2773
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_9

    .line 2798
    .end local v5           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v10           #isContactAryEmpty:Z
    :catchall_0
    move-exception v13

    if-eqz p1, :cond_28

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_28

    .line 2800
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v14

    .line 2801
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v15, :cond_2c

    .line 2802
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 2817
    :cond_25
    :goto_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v15, :cond_26

    .line 2818
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v15}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 2820
    :cond_26
    monitor-exit v14
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 2821
    if-eqz p1, :cond_27

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v14

    if-nez v14, :cond_27

    .line 2822
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    .line 2823
    :cond_27
    const/16 p1, 0x0

    .line 2825
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v14, :cond_28

    .line 2826
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v14}, Ljava/util/Hashtable;->clear()V

    .line 2798
    :cond_28
    throw v13

    .line 2774
    .restart local v5       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .restart local v10       #isContactAryEmpty:Z
    :cond_29
    const/4 v13, 0x1

    if-ne v2, v13, :cond_20

    :try_start_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-boolean v13, v13, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    if-nez v13, :cond_20

    .line 2775
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_9

    .line 2792
    :cond_2a
    if-ne v12, v6, :cond_b

    goto/16 :goto_a

    .line 2820
    .end local v5           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v10           #isContactAryEmpty:Z
    :catchall_1
    move-exception v13

    :try_start_e
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v13

    .line 2805
    :cond_2b
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_4

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .local v11, msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/16 :goto_1

    .line 2820
    .end local v11           #msg:Landroid/os/Message;
    :catchall_2
    move-exception v13

    :try_start_10
    monitor-exit v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v13

    .line 2805
    :cond_2c
    :try_start_11
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v15, :cond_25

    .line 2807
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v15}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v15, 0x1a0e

    iput v15, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v15, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v15, 0x1

    iput v15, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v15, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto/16 :goto_c

    .line 2820
    .end local v11           #msg:Landroid/os/Message;
    .restart local v8       #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v13

    :try_start_12
    monitor-exit v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    throw v13

    .line 2805
    :cond_2d
    :try_start_13
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_10

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto/16 :goto_6

    .line 2820
    .end local v8           #e:Ljava/lang/Exception;
    .end local v11           #msg:Landroid/os/Message;
    .restart local v10       #isContactAryEmpty:Z
    :catchall_4
    move-exception v13

    :try_start_14
    monitor-exit v14
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    throw v13

    .line 2805
    :cond_2e
    :try_start_15
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_c

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto/16 :goto_5

    .line 2820
    .end local v11           #msg:Landroid/os/Message;
    .restart local v5       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    :catchall_5
    move-exception v13

    :try_start_16
    monitor-exit v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v13

    .line 2805
    :cond_2f
    :try_start_17
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_1c

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    goto/16 :goto_8

    .line 2820
    .end local v11           #msg:Landroid/os/Message;
    :catchall_6
    move-exception v13

    :try_start_18
    monitor-exit v14
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    throw v13

    .line 2805
    :cond_30
    :try_start_19
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_21

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    goto/16 :goto_b

    .line 2820
    .end local v5           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v10           #isContactAryEmpty:Z
    .end local v11           #msg:Landroid/os/Message;
    :catchall_7
    move-exception v13

    :try_start_1a
    monitor-exit v14
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    throw v13

    .line 2805
    :cond_31
    :try_start_1b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v13, :cond_14

    .line 2807
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    .line 2808
    .restart local v11       #msg:Landroid/os/Message;
    const/16 v13, 0x1a0e

    iput v13, v11, Landroid/os/Message;->what:I

    .line 2809
    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessFavoriteIndex:I

    iput v13, v11, Landroid/os/Message;->arg1:I

    .line 2810
    const/4 v13, 0x1

    iput v13, v11, Landroid/os/Message;->arg2:I

    .line 2812
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v13, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto/16 :goto_7
.end method

.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 512
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 514
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 518
    :cond_0
    iget v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 520
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    iput-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getSettingIntent()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3091
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3094
    new-instance v0, Landroid/content/Intent;

    const-string v1, "AccountOption"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3095
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.htccontactwidgets_3d_fusion"

    const-string v2, "com.htc.htccontactwidgets_3d_fusion.ContactSettingOptionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3096
    const-string v1, "group_name"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3098
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v1, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3099
    const-string v1, "member_count"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3104
    :goto_0
    invoke-virtual {v0, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    .line 3109
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-object v1

    .line 3101
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v1, "member_count"

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 3109
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 3077
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .prologue
    .line 4439
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v4, :cond_0

    .line 4440
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "this adapter don\'t bind any ListView yet."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4443
    :cond_0
    iget-boolean v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 4445
    :cond_1
    const-string v4, "ContactWidgetMatrix"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyDataSetChanged: Widget is going to destroy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4530
    :goto_0
    return-void

    .line 4449
    :cond_2
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v5, 0x1a19

    invoke-interface {v4, v5}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 4450
    monitor-enter p0

    .line 4451
    :try_start_0
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4452
    .local v1, listCount:I
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getCollectionCount()I

    move-result v0

    .line 4453
    .local v0, collectionCount:I
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v3

    .line 4454
    .local v3, visibleStart:I
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4}, Lcom/htc/fusion/fx/controls/FxListView;->getLastVisibleIndex()I

    move-result v2

    .line 4456
    .local v2, visibleEnd:I
    const-string v4, "ContactWidgetMatrix"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyDataSetChanged listCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", collectionCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", visibleStart = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", visibleEnd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mVirtualization = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    if-le v1, v0, :cond_4

    .line 4459
    if-lez v1, :cond_3

    .line 4461
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4462
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v1, v0

    invoke-virtual {v4, v0, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->insertItems(II)V

    .line 4463
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4464
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v1, v0

    invoke-virtual {v4, v0, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->insertItems(II)V

    .line 4466
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListView;->applyScrollOffset(Landroid/graphics/PointF;I)V

    .line 4529
    :cond_3
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    .end local v0           #collectionCount:I
    .end local v1           #listCount:I
    .end local v2           #visibleEnd:I
    .end local v3           #visibleStart:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 4468
    .restart local v0       #collectionCount:I
    .restart local v1       #listCount:I
    .restart local v2       #visibleEnd:I
    .restart local v3       #visibleStart:I
    :cond_4
    if-ge v1, v0, :cond_9

    .line 4469
    add-int/lit8 v4, v1, -0x1

    if-lt v4, v2, :cond_5

    .line 4470
    :try_start_1
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4471
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4498
    :goto_2
    if-lez v1, :cond_3

    .line 4500
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4501
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    goto :goto_1

    .line 4473
    :cond_5
    add-int/lit8 v4, v1, -0x1

    if-lt v4, v3, :cond_7

    .line 4474
    add-int/lit8 v4, v1, -0x1

    sub-int v4, v2, v4

    if-lt v3, v4, :cond_6

    .line 4475
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    sub-int v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4476
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, -0x1

    sub-int v6, v2, v6

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4479
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4480
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    add-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_2

    .line 4483
    :cond_6
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4484
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_2

    .line 4488
    :cond_7
    sub-int v4, v0, v1

    if-le v1, v4, :cond_8

    .line 4489
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4490
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    sub-int v6, v0, v1

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_2

    .line 4493
    :cond_8
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    .line 4494
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    sub-int v5, v0, v1

    invoke-virtual {v4, v1, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->removeItems(II)V

    goto :goto_2

    .line 4506
    :cond_9
    if-lez v1, :cond_3

    iget v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    const/4 v5, 0x4

    if-le v4, v5, :cond_3

    .line 4509
    sub-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    if-ge v4, v5, :cond_b

    .line 4511
    iget v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    if-ge v1, v4, :cond_a

    .line 4513
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4514
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    goto/16 :goto_1

    .line 4518
    :cond_a
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4519
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    invoke-virtual {v4, v5, v6}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    goto/16 :goto_1

    .line 4524
    :cond_b
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iget v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    invoke-virtual {v4, v3, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 4525
    iget-object v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    iget v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mVirtualization:I

    invoke-virtual {v4, v3, v5}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v3, -0x1

    const/16 v2, 0x1a16

    const/4 v5, 0x1

    const/16 v4, 0x1a14

    .line 3488
    const/16 v1, 0x162e

    if-ne p1, v1, :cond_6

    .line 3490
    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_5

    .line 3492
    const-string v1, "group_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 3493
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 3494
    const-string v1, "title"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 3495
    :cond_0
    iput-boolean v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z

    .line 3497
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3498
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3499
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3501
    iput-boolean v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsGroupDeleted:Z

    .line 3503
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_2

    .line 3504
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "empty_page"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 3505
    :cond_2
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_3

    .line 3507
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 3508
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20c00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 3511
    :cond_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v5}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3513
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3514
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3515
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3542
    :cond_5
    :goto_0
    return-void

    .line 3518
    :cond_6
    const/16 v1, 0x1e6c

    if-ne p1, v1, :cond_8

    .line 3522
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFrequentEdit:Z

    if-ne v1, v5, :cond_5

    if-ne v3, p2, :cond_5

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v2, "Frequent Contacts"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3527
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3528
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3529
    :cond_7
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v4}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3531
    iput-boolean v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFrequentEdit:Z

    goto :goto_0

    .line 3536
    :cond_8
    if-eqz p3, :cond_5

    .line 3538
    const-string v1, "defaultActionInfo"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3539
    .local v0, action:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->launchDefaultAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCheckRequery()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 951
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    if-eq v1, v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 955
    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfiguration"

    .prologue
    const/16 v1, 0x1a0d

    .line 925
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 927
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    .line 929
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getCollectionCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_listView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getFirstVisibleIndex()I

    move-result v0

    iput v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScrollOffset:I

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 937
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 276
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    .line 279
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 280
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWorker:Landroid/os/Handler$Callback;

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 281
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiWorker:Landroid/os/Handler$Callback;

    invoke-interface {v5, v6}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 282
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    .line 283
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    .line 284
    iput-object v7, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    .line 285
    iput-object v7, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    .line 286
    iput-boolean v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    .line 287
    iput-boolean v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    .line 288
    iput-object v7, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 289
    iput-object v7, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 290
    iput-object v7, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->contactInfo:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 292
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v6, "group_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 294
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v6, "group_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 295
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    const-string v5, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 302
    :cond_0
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v6, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 304
    const-string v5, "Port/People_4x2_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "scenes/People_4x2_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 307
    :cond_1
    const-string v5, "Port/People_4x2_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 308
    const-string v5, "Port/People_4x2_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    .line 393
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->preloadScene()V

    .line 396
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f06

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    .line 397
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeY:I

    .line 399
    const-string v5, "Port/People_Big_4x4_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "Land/People_Big_4x4_ListView_L.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 401
    :cond_3
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeX:I

    .line 402
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoSizeY:I

    .line 408
    :cond_4
    new-instance v5, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    .line 411
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SetScene(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 417
    invoke-direct {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->initPanel()V

    .line 419
    iput-boolean v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    .line 421
    iput-boolean v8, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateOff:Z

    .line 423
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    .line 425
    const/4 v0, 0x0

    .line 426
    .local v0, htcContext:Landroid/content/Context;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.htc"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 428
    const/4 v4, 0x0

    .line 429
    .local v4, resourceName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isTabletSetting()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 430
    const-string v4, "common_icon_indicator_facebook_incall"

    .line 433
    :goto_1
    invoke-static {v0}, Lcom/htc/res/HtcResources;->getResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v3

    .line 434
    .local v3, resource:Landroid/content/res/Resources;
    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 435
    .local v2, resid:I
    if-nez v2, :cond_5

    .line 437
    const-string v4, "common_icon_indicator_facebook"

    .line 438
    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 441
    :cond_5
    if-eqz v2, :cond_6

    .line 442
    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mbmFacebookIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0           #htcContext:Landroid/content/Context;
    .end local v2           #resid:I
    .end local v3           #resource:Landroid/content/res/Resources;
    .end local v4           #resourceName:Ljava/lang/String;
    :cond_6
    :goto_2
    return-void

    .line 310
    :cond_7
    const-string v5, "Port/People_4x3_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "scenes/People_4x3_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 313
    :cond_8
    const-string v5, "Port/People_4x3_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 314
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 316
    :cond_9
    const-string v5, "Port/People_Big_4x4_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "scenes/People_Big_4x4_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSettingIntent:Landroid/content/Intent;

    const-string v7, "com.htc.android.rosie.intent.extra.STYLE_SCENE"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 319
    :cond_a
    const-string v5, "Port/People_Big_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 320
    const-string v5, "Port/People_Big_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 324
    :cond_b
    const-string v5, "Port/People_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 325
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 340
    :cond_c
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->loadInstanceData()Ljava/util/Properties;

    move-result-object v1

    .line 341
    .local v1, props:Ljava/util/Properties;
    if-eqz v1, :cond_14

    .line 342
    const-string v5, "group_name"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 343
    const-string v5, "sence_path"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 344
    const-string v5, "item_path"

    invoke-virtual {v1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    .line 348
    const-string v5, "System Group: Family"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 349
    const-string v5, "Family"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 356
    :cond_d
    :goto_3
    const-string v5, "scenes/People_4x2_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 358
    const-string v5, "Port/People_4x2_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 359
    const-string v5, "Port/People_4x2_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    .line 377
    :cond_e
    :goto_4
    iget-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 379
    const-string v5, "Port/People_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 380
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 350
    :cond_f
    const-string v5, "System Group: Friends"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 351
    const-string v5, "Friends"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    goto :goto_3

    .line 352
    :cond_10
    const-string v5, "System Group: Coworkers"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 353
    const-string v5, "Coworkers"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    goto :goto_3

    .line 361
    :cond_11
    const-string v5, "scenes/People_4x3_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 363
    const-string v5, "Port/People_4x3_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 364
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto :goto_4

    .line 366
    :cond_12
    const-string v5, "scenes/People_Big_4x4_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 368
    const-string v5, "Port/People_Big_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 369
    const-string v5, "Port/People_Big_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto :goto_4

    .line 371
    :cond_13
    const-string v5, "scenes/People_4x4_ListView.m10"

    iget-object v6, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 373
    const-string v5, "Port/People_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 374
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto :goto_4

    .line 385
    :cond_14
    const-string v5, "Favorite_8656150684447252476_6727701920173350445"

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    .line 386
    const-string v5, "Port/People_4x4_ListView.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    .line 387
    const-string v5, "Port/People_4x4_ListItem.m10"

    iput-object v5, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->ITEM_PATH:Ljava/lang/String;

    goto/16 :goto_0

    .line 432
    .end local v1           #props:Ljava/util/Properties;
    .restart local v0       #htcContext:Landroid/content/Context;
    .restart local v4       #resourceName:Ljava/lang/String;
    :cond_15
    :try_start_1
    const-string v4, "common_widget_icon_indicator_facebook"
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 443
    .end local v4           #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v5

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 852
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 854
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    .line 855
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 856
    :cond_0
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 857
    :cond_1
    iput-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesPeopleReceiver:Landroid/content/BroadcastReceiver;

    .line 858
    iput-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 859
    iput-boolean v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_port:Z

    .line 860
    iput-boolean v4, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGetScene_land:Z

    .line 861
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v1}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->destroyProcess()V

    .line 862
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mGroupMap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 863
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 866
    :cond_2
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 867
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 868
    :cond_3
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 869
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeleteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 870
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 871
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 872
    :cond_5
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    .line 873
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mEASDeletedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 875
    :cond_6
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 876
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 877
    :cond_7
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v1, :cond_8

    .line 878
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 879
    :cond_8
    iput-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryHandler:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$QueryHandler;

    .line 880
    iput-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    .line 882
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;

    invoke-direct {v1, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$3;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 904
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 906
    return-void
.end method

.method public onEdit()V
    .locals 4

    .prologue
    .line 3083
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getSettingIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 3084
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x162e

    invoke-virtual {p0, v1, v2}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 3085
    :catch_0
    move-exception v0

    .line 3086
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 940
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 947
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 942
    :pswitch_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a0d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 940
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onIndicatorResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 24
    .parameter "result"

    .prologue
    .line 2334
    if-nez p1, :cond_1

    .line 2541
    :cond_0
    :goto_0
    return-void

    .line 2337
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 2340
    const/4 v12, 0x0

    .line 2341
    .local v12, mEventCursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 2342
    .local v13, mSMSCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 2343
    .local v16, meMailCursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 2344
    .local v3, MissCallCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 2345
    .local v15, mWhereString:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2346
    .local v14, mTimeStr:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2348
    .local v11, mDailyStr:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2349
    .local v6, bNeedUpdate:Z
    const/4 v7, 0x0

    .line 2350
    .local v7, bNoChange:Z
    const/4 v8, 0x0

    .line 2351
    .local v8, bStatusTime:Z
    const/4 v5, 0x0

    .line 2352
    .local v5, bActivityTime:Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getBundle()Landroid/os/Bundle;

    move-result-object v9

    .line 2353
    .local v9, bundle:Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getTotalCount()I

    move-result v19

    .line 2355
    .local v19, totalCount:I
    const-string v20, "position"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 2361
    .local v17, position:I
    if-ltz v17, :cond_0

    .line 2364
    if-eqz p0, :cond_0

    .line 2367
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    .line 2368
    .local v10, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getLatestActivity()Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;

    move-result-object v4

    .line 2369
    .local v4, activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/indicator/IndicatorResult;->getStatusInfo()Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;

    move-result-object v18

    .line 2370
    .local v18, status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    if-eqz v10, :cond_0

    .line 2371
    const-string v20, "contactId"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    .line 2374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isContactExist(Ljava/util/ArrayList;Ljava/lang/Long;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 2375
    iget v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 2376
    const/4 v6, 0x1

    .line 2377
    :cond_2
    if-gez v19, :cond_3

    const/16 v19, 0x0

    .end local v19           #totalCount:I
    :cond_3
    move/from16 v0, v19

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    .line 2380
    const/4 v8, 0x0

    .line 2381
    const/4 v5, 0x0

    .line 2382
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_a

    if-eqz v4, :cond_a

    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_a

    .line 2384
    const/4 v7, 0x1

    .line 2385
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-lez v20, :cond_8

    .line 2387
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_7

    .line 2388
    const/4 v8, 0x1

    .line 2392
    :goto_1
    const/4 v5, 0x0

    .line 2431
    :goto_2
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_11

    .line 2433
    const/16 v20, 0x68

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2434
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2435
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2436
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMessage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2437
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2438
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    .line 2439
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2440
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2442
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_f

    .line 2443
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusDataID:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2447
    :goto_3
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    .line 2448
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2454
    :goto_4
    const-string v20, "0"

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2455
    const/4 v6, 0x1

    .line 2511
    :cond_4
    :goto_5
    const/4 v8, 0x0

    .line 2512
    const/4 v5, 0x0

    .line 2514
    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_5

    .line 2516
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2517
    const/4 v6, 0x1

    .line 2520
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2524
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    if-eqz v6, :cond_0

    .line 2526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_P:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    .line 2527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_collection_L:Lcom/htc/fusion/fx/controls/FxListViewCollection;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/htc/fusion/fx/controls/FxListViewCollection;->refreshItems(II)V

    goto/16 :goto_0

    .line 2537
    .end local v4           #activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    .end local v10           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v18           #status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    :catch_0
    move-exception v20

    goto/16 :goto_0

    .line 2390
    .restart local v4       #activity:Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;
    .restart local v10       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .restart local v18       #status:Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2396
    :cond_8
    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_9

    .line 2397
    const/4 v5, 0x1

    .line 2401
    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2399
    :cond_9
    const/4 v5, 0x0

    goto :goto_6

    .line 2404
    :cond_a
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_c

    .line 2406
    const/4 v7, 0x1

    .line 2407
    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_b

    .line 2408
    const/4 v8, 0x1

    .line 2412
    :goto_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2410
    :cond_b
    const/4 v8, 0x0

    goto :goto_7

    .line 2414
    :cond_c
    if-eqz v4, :cond_e

    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_e

    .line 2416
    const/4 v7, 0x1

    .line 2417
    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-eqz v20, :cond_d

    .line 2418
    const/4 v5, 0x1

    .line 2422
    :goto_8
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 2420
    :cond_d
    const/4 v5, 0x0

    goto :goto_8

    .line 2426
    :cond_e
    const/4 v7, 0x0

    .line 2427
    const/4 v8, 0x0

    .line 2428
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2445
    :cond_f
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    goto/16 :goto_3

    .line 2450
    :cond_10
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    goto/16 :goto_4

    .line 2457
    :cond_11
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v5, v0, :cond_18

    .line 2459
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "CALLLOG"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 2460
    const/16 v20, 0x65

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2468
    :cond_12
    :goto_9
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusIconRes:I

    move/from16 v20, v0

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2469
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPackage:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2470
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mContent:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2471
    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mTimestamp:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2472
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusMimetype:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    .line 2473
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusData1:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2474
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/indicator/IndicatorResult$StatusInfo;->mStatusPostID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2476
    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_16

    .line 2477
    iget-wide v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2480
    :goto_a
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

    .line 2481
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mMessageAddr:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2486
    :goto_b
    const-string v20, "0"

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2487
    const/4 v6, 0x1

    goto/16 :goto_5

    .line 2461
    :cond_13
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "EMAIL"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 2462
    const/16 v20, 0x67

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    goto :goto_9

    .line 2463
    :cond_14
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "MESSAGE"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_15

    .line 2464
    const/16 v20, 0x66

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    goto/16 :goto_9

    .line 2465
    :cond_15
    iget-object v0, v4, Lcom/android/htccontacts/indicator/IndicatorResult$ActivityInfo;->mActivityType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "SOCIAL_NETWORK"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 2466
    const/16 v20, 0x68

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    goto/16 :goto_9

    .line 2479
    :cond_16
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    goto :goto_a

    .line 2483
    :cond_17
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    goto :goto_b

    .line 2491
    :cond_18
    const/16 v20, 0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_4

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-lez v20, :cond_4

    iget-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-eqz v20, :cond_4

    iget v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    move/from16 v20, v0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 2493
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2494
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2495
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2496
    const-wide/16 v20, -0x1

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2497
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    iput-wide v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2498
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2499
    const/16 v20, -0x1

    move/from16 v0, v20

    iput v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2500
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2501
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2502
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2503
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    const/4 v7, 0x0

    .line 2505
    const/4 v6, 0x1

    goto/16 :goto_5
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 909
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onPause()V

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mCursorTerminated:Z

    .line 914
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a0d

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    .line 916
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a0f

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 917
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->pauseProcess()V

    .line 920
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIndicatorProcess:Lcom/android/htccontacts/indicator/IndicatorStackProcessor;

    invoke-virtual {v0}, Lcom/android/htccontacts/indicator/IndicatorStackProcessor;->clearQueue()V

    .line 922
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x1a17

    const/16 v1, 0x1a16

    .line 450
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onPostCreate(Landroid/os/Bundle;)V

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedStroeToHostDB:Z

    .line 453
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 457
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v0, v2}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 460
    return-void
.end method

.method public onPublishResult(Lcom/android/htccontacts/indicator/IndicatorResult;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 2330
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 820
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onResume()V

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    .line 825
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mCursorTerminated:Z

    .line 827
    iget-boolean v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mInitialize:Z

    if-nez v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a13

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 829
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a18

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 847
    :cond_0
    iget-object v0, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v1, 0x1a0d

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->sendDelayed(IJ)V

    .line 849
    return-void
.end method

.method public onTiltChanged(F)V
    .locals 6
    .parameter "tilt"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, m_tilt:Lcom/htc/fusion/fx/Marker;
    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_port:Lcom/htc/fusion/fx/FxScene;

    if-ne v2, v3, :cond_0

    .line 533
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 534
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_P:Lcom/htc/fusion/fx/Marker;

    .line 536
    :cond_0
    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene:Lcom/htc/fusion/fx/FxScene;

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetScene_land:Lcom/htc/fusion/fx/FxScene;

    if-ne v2, v3, :cond_1

    .line 538
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 539
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->m_tilt_L:Lcom/htc/fusion/fx/Marker;

    .line 542
    :cond_1
    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_port_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eq v2, v3, :cond_3

    :cond_2
    iget v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mOrientation:I

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    iget-object v3, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_land_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-ne v2, v3, :cond_4

    .line 547
    :cond_3
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 549
    iget v2, v1, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget v3, v1, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-static {p1, v2, v3}, Lcom/htc/android/rosie/widget/WidgetHelper;->convertTiltAngleToFrame(FII)F

    move-result v0

    .line 551
    .local v0, fNewFrame:F
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_tiltanim:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    .line 554
    .end local v0           #fNewFrame:F
    :cond_4
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;Z)V
    .locals 14
    .parameter "cursor"
    .parameter "updateUI"

    .prologue
    .line 2833
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a0e

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2834
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a0e

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 2836
    :cond_0
    if-nez p1, :cond_2

    .line 2837
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2838
    .local v7, msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 2839
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 2840
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 2842
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 2843
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2844
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 3073
    .end local v7           #msg:Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 2850
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->cacheColumnIndices(Landroid/database/Cursor;)V

    .line 2852
    const/4 v9, 0x0

    .line 2853
    .local v9, position:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 2856
    .local v4, cursor_size:I
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2857
    .local v1, bmfo:Landroid/graphics/BitmapFactory$Options;
    const v5, 0x20800c1

    .line 2859
    .local v5, defaultPhotoResource:I
    const-string v10, "Port/People_Big_4x4_ListView.m10"

    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "Land/People_Big_4x4_ListView_L.m10"

    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->SCENE_PATH:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2860
    :cond_3
    const v5, 0x7f020019

    .line 2862
    :cond_4
    const/4 v0, 0x0

    .line 2867
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v4, :cond_6

    .line 2871
    :try_start_0
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 2872
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 2873
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 2874
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 2876
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 2877
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2878
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3023
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3024
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v10, :cond_27

    .line 3025
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3026
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_5
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    .end local v7           #msg:Landroid/os/Message;
    :goto_2
    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    goto :goto_0

    .line 2883
    :cond_6
    const/4 v8, 0x1

    .line 2884
    .local v8, needResize:Z
    :try_start_1
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    .line 2888
    const/4 v8, 0x1

    .line 2895
    :cond_7
    if-eqz v8, :cond_10

    .line 2896
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_8

    .line 2897
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 2898
    :cond_8
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_9

    .line 2900
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_9

    .line 2901
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v12, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2904
    .end local v6           #i:I
    :cond_9
    sget-object v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->Orange_FR_CID_num:Ljava/lang/String;

    sget-object v11, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->CID:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 2905
    new-instance v10, Ljava/util/ArrayList;

    add-int/lit8 v11, v4, 0x1

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    .line 2906
    new-instance v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    invoke-direct {v3, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 2907
    .local v3, contactv:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    const-wide/16 v10, -0x3

    iput-wide v10, v3, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    .line 2908
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2913
    .end local v3           #contactv:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    :goto_4
    const/4 v10, 0x0

    iput v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 2914
    const/4 v9, 0x0

    .line 2932
    :cond_a
    if-nez v9, :cond_12

    .line 2933
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2943
    :cond_b
    :goto_5
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mIsShown:Z

    if-nez v10, :cond_15

    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-nez v10, :cond_15

    .line 2945
    iput v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 2946
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedRefreshFavorites:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3023
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3024
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v10, :cond_2d

    .line 3025
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 3026
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_c
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2910
    :cond_d
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 3023
    .end local v8           #needResize:Z
    :catchall_0
    move-exception v10

    if-eqz p1, :cond_f

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v11

    if-nez v11, :cond_f

    .line 3024
    iget-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v11, :cond_21

    .line 3025
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v12, 0x1a14

    invoke-interface {v11, v12}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 3026
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v12, 0x1a14

    invoke-interface {v11, v12}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_e
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v12, 0x1a14

    invoke-interface {v11, v12}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v11, :cond_f

    .line 3068
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 3023
    :cond_f
    throw v10

    .line 2917
    .restart local v8       #needResize:Z
    :cond_10
    const/4 v9, 0x0

    .line 2918
    :try_start_3
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_11

    .line 2919
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 2920
    :cond_11
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_a

    .line 2922
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_8
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v6, v10, :cond_a

    .line 2923
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v12, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2922
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2934
    .end local v6           #i:I
    :cond_12
    if-lez v4, :cond_13

    .line 2935
    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_5

    .line 2936
    :cond_13
    if-nez v4, :cond_b

    .line 3023
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3024
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v10, :cond_3f

    .line 3025
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 3026
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_14
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2950
    :cond_15
    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->extractData(Landroid/database/Cursor;Landroid/graphics/Bitmap;)Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    move-result-object v2

    .line 2951
    .local v2, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWidgetDestroy:Z

    if-eqz v10, :cond_1a

    .line 2953
    if-eqz v2, :cond_16

    .line 2954
    const/4 v2, 0x0

    .line 2955
    :cond_16
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_17

    .line 2956
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 2957
    :cond_17
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    .line 2960
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_18

    .line 2961
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    invoke-virtual {v10}, Ljava/util/Hashtable;->clear()V

    .line 2962
    :cond_18
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3023
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3024
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v10, :cond_33

    .line 3025
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 3026
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_19
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_a
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 2966
    :cond_1a
    :try_start_5
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_1c

    .line 2968
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1b

    .line 2970
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1b

    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    iget-wide v12, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_1b

    .line 2972
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessage:Ljava/lang/String;

    .line 2973
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoDate:Ljava/lang/String;

    .line 2974
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoMessageAddr:Ljava/lang/String;

    .line 2975
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    iput v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResIconID:I

    .line 2976
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoResPackage:Ljava/lang/String;

    .line 2977
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    iput-wide v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoTime:J

    .line 2978
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    iput v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoType:I

    .line 2979
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-wide v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    iput-wide v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoAvtivityID:J

    .line 2980
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusMimetype:Ljava/lang/String;

    .line 2981
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData1:Ljava/lang/String;

    .line 2982
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget-object v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    iput-object v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->RichInfoStatusData4:Ljava/lang/String;

    .line 2984
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    iget-wide v11, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    iget v10, v10, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    iput v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->count:I

    .line 2987
    :cond_1b
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2988
    iget-boolean v10, v2, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->bHasContactPhotoId:Z

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1c

    .line 2989
    iget v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mPhotoCount:I

    .line 2992
    :cond_1c
    add-int/lit8 v9, v9, 0x1

    .line 2995
    iput v9, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mProcessIndex:I

    .line 2998
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-nez v10, :cond_1d

    .line 2999
    if-eqz p2, :cond_1d

    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z

    if-nez v10, :cond_1d

    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-nez v10, :cond_1d

    .line 3001
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3002
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3003
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3004
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3005
    const/16 v10, 0xa

    if-ne v9, v10, :cond_1f

    .line 3007
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 3017
    .end local v7           #msg:Landroid/os/Message;
    :cond_1d
    :goto_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v10

    if-nez v10, :cond_20

    .line 3023
    :goto_c
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 3024
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mNeedUpdateFavorites:Z

    if-eqz v10, :cond_39

    .line 3025
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 3026
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 3027
    :cond_1e
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v11, 0x1a14

    invoke-interface {v10, v11}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 3064
    :goto_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    const/4 p1, 0x0

    .line 3067
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    if-eqz v10, :cond_1

    .line 3068
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mQueryIndicator:Ljava/util/Hashtable;

    goto/16 :goto_2

    .line 3009
    .restart local v7       #msg:Landroid/os/Message;
    :cond_1f
    :try_start_6
    rem-int/lit8 v10, v9, 0x14

    if-nez v10, :cond_1d

    .line 3012
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_b

    .line 3020
    .end local v7           #msg:Landroid/os/Message;
    :cond_20
    if-ne v9, v4, :cond_b

    goto :goto_c

    .line 3029
    .end local v2           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v8           #needResize:Z
    :cond_21
    iget-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v11, :cond_22

    .line 3030
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_22
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_7
    iget-boolean v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v12, :cond_25

    .line 3039
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_23
    :goto_e
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v12, :cond_24

    .line 3059
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v12}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_24
    monitor-exit v11

    goto/16 :goto_7

    :catchall_1
    move-exception v10

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v10

    .line 3043
    :cond_25
    if-nez p2, :cond_26

    :try_start_8
    iget-boolean v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v12, :cond_26

    .line 3044
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_26
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v12, :cond_23

    .line 3048
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v12}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v12, 0x1a0e

    iput v12, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iput v12, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v12, 0x1

    iput v12, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v12, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v12, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_e

    .line 3029
    :cond_27
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v10, :cond_28

    .line 3030
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_28
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_9
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v10, :cond_2b

    .line 3039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_29
    :goto_f
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v10, :cond_2a

    .line 3059
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v10}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_2a
    monitor-exit v11

    goto/16 :goto_1

    :catchall_2
    move-exception v10

    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v10

    .line 3043
    :cond_2b
    if-nez p2, :cond_2c

    :try_start_a
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v10, :cond_2c

    .line 3044
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_2c
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_29

    .line 3048
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_f

    .line 3029
    .end local v7           #msg:Landroid/os/Message;
    .restart local v8       #needResize:Z
    :cond_2d
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v10, :cond_2e

    .line 3030
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_2e
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_b
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v10, :cond_31

    .line 3039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_2f
    :goto_10
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v10, :cond_30

    .line 3059
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v10}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_30
    monitor-exit v11

    goto/16 :goto_6

    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v10

    .line 3043
    :cond_31
    if-nez p2, :cond_32

    :try_start_c
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v10, :cond_32

    .line 3044
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_32
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_2f

    .line 3048
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_10

    .line 3029
    .end local v7           #msg:Landroid/os/Message;
    .restart local v2       #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    :cond_33
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v10, :cond_34

    .line 3030
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_34
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_d
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v10, :cond_37

    .line 3039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_35
    :goto_11
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v10, :cond_36

    .line 3059
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v10}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_36
    monitor-exit v11

    goto/16 :goto_a

    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v10

    .line 3043
    :cond_37
    if-nez p2, :cond_38

    :try_start_e
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v10, :cond_38

    .line 3044
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_38
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_35

    .line 3048
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_11

    .line 3029
    .end local v7           #msg:Landroid/os/Message;
    :cond_39
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v10, :cond_3a

    .line 3030
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_3a
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_f
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v10, :cond_3d

    .line 3039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_3b
    :goto_12
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v10, :cond_3c

    .line 3059
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v10}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_3c
    monitor-exit v11

    goto/16 :goto_d

    :catchall_5
    move-exception v10

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v10

    .line 3043
    :cond_3d
    if-nez p2, :cond_3e

    :try_start_10
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v10, :cond_3e

    .line 3044
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_3e
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_3b

    .line 3048
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_12

    .line 3029
    .end local v2           #contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    .end local v7           #msg:Landroid/os/Message;
    :cond_3f
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    if-eqz v10, :cond_40

    .line 3030
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceUpdateListAllInTime:Z

    .line 3031
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByLinkChanged:Z

    .line 3032
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByGoogleSync:Z

    .line 3033
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mForceRequeryByFaceBookChanged:Z

    .line 3037
    :cond_40
    iget-object v11, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mSyncObject:Ljava/lang/Object;

    monitor-enter v11

    .line 3038
    :try_start_11
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    if-eqz v10, :cond_43

    .line 3039
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWhenScreenOff:Z

    .line 3058
    :cond_41
    :goto_13
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    if-eqz v10, :cond_42

    .line 3059
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mWeakLock:Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;

    invoke-static {v10}, Lcom/htc/htccontactwidgets_3d_fusion/LockUtil;->releasePowerLock(Lcom/htc/htccontactwidgets_3d_fusion/LockUtil$EASWakeLock;)V

    .line 3061
    :cond_42
    monitor-exit v11

    goto/16 :goto_9

    :catchall_6
    move-exception v10

    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    throw v10

    .line 3043
    :cond_43
    if-nez p2, :cond_44

    :try_start_12
    iget-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    if-eqz v10, :cond_44

    .line 3044
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mRequeryDataWithoutUpdateImmediately:Z

    .line 3046
    :cond_44
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v10, :cond_41

    .line 3048
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 3049
    .restart local v7       #msg:Landroid/os/Message;
    const/16 v10, 0x1a0e

    iput v10, v7, Landroid/os/Message;->what:I

    .line 3050
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 3051
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 3053
    iget-object v10, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v10, v7}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_13
.end method

.method public setDefaultItem()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4242
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4244
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_0

    .line 4245
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "empty_page"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 4246
    :cond_0
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_1

    .line 4248
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 4249
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 4255
    :cond_1
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4256
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4286
    :cond_2
    :goto_0
    return-void

    .line 4262
    :cond_3
    invoke-static {}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->isAboveOrEqualToSenserVer()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mstrGroupName:Ljava/lang/String;

    const-string v2, "Frequent Contacts"

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4266
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_4

    .line 4267
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->timelineControl_main:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "empty_page"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 4268
    :cond_4
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v1, :cond_2

    .line 4270
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setVisibility(Z)Ljava/util/ArrayList;

    .line 4271
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->textEmpty_page:Lcom/htc/fusion/fx/controls/FxTextLabel;

    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0

    .line 4276
    :cond_5
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4277
    .local v0, contact:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    const-wide/16 v1, -0x2

    iput-wide v1, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    .line 4280
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4281
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4283
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setVoiceMailItem()V
    .locals 4

    .prologue
    .line 4226
    new-instance v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    invoke-direct {v1, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4227
    .local v1, contactv:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    const-wide/16 v2, -0x3

    iput-wide v2, v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    .line 4230
    new-instance v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;

    invoke-direct {v0, p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;-><init>(Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;)V

    .line 4231
    .local v0, contactd:Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;
    const-wide/16 v2, -0x2

    iput-wide v2, v0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;->pid:J

    .line 4233
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mChangedContactList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4234
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4236
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4237
    iget-object v2, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4238
    return-void
.end method

.method public updateList(Ljava/lang/Object;)V
    .locals 2
    .parameter "obj"

    .prologue
    .line 4291
    if-nez p1, :cond_3

    .line 4292
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4293
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    .line 4316
    :cond_0
    :goto_0
    return-void

    .line 4300
    :cond_1
    sget-object v1, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->Orange_FR_CID_num:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/htccontactwidgets_3d_fusion/ContactUtils;->checkCustomizatedSku(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4301
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setVoiceMailItem()V

    goto :goto_0

    .line 4304
    :cond_2
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->setDefaultItem()V

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 4307
    check-cast v0, Ljava/util/ArrayList;

    .line 4308
    .local v0, lMap:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix$ContactInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4310
    invoke-virtual {p0}, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 4211
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4212
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x1a0e

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4213
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mContactAry:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4214
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4216
    iget-object v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mUiHandler:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    invoke-interface {v1, v0}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(Landroid/os/Message;)V

    .line 4219
    iget-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mCursorTerminated:Z

    if-eqz v1, :cond_0

    .line 4223
    :goto_0
    return-void

    .line 4222
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htccontactwidgets_3d_fusion/ContactWidgetMatrix;->mFavoritesChanged:Z

    goto :goto_0
.end method
