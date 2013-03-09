.class public Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.super Lcom/android/htccontacts/app/SNBaseListActivity;
.source "ContactDetailUpdatesAndEventsActivity.java"

# interfaces
.implements Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;,
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;,
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$UpdateCache;,
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;,
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$ExteriorAdapterLoadingTask;,
        Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final COLUMN_EXTRA:Ljava/lang/String; = "extra"

.field public static final COLUMN_IS_READ:Ljava/lang/String; = "is_read"

.field public static final COLUMN_ROWID:Ljava/lang/String; = "rowId"

.field public static final COLUMN_SERVICE:Ljava/lang/String; = "service_name"

.field public static final COLUMN_TIME:Ljava/lang/String; = "last_time"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_UID:Ljava/lang/String; = "uid"

.field public static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DEBUG:Z = false

.field private static final DIALOG_EVENT:I = 0xea60

.field private static final INTENT_RESULT_LINK_FRIEND:I = 0x3e8

.field private static final MENU_CONNECT_SETUP:I = 0x4

.field private static final MENU_DELETE:I = 0x2

.field private static final MENU_EDIT:I = 0x1

.field private static final MENU_UPDATE_NOW:I = 0x3

.field private static final MSG_DELAY_1000:I = 0x3e8

.field private static final MSG_UPDATE_UPDATE:I = 0x32

.field private static TAG:Ljava/lang/String; = null

.field protected static final TOKEN_EVENT_QUERY:I = 0x3

.field public static final TYPE_PHOTO:Ljava/lang/String; = "photo"

.field public static final TYPE_PROFILE:Ljava/lang/String; = "profile"

.field public static final TYPE_STATUS:Ljava/lang/String; = "status"


# instance fields
.field private volatile exteriorAdapterLoadingTaskProcessing:Z

.field private isStatusSyncing:Z

.field private mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

.field protected mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

.field private mEventClickContactId:J

.field private mEventClickDisplayName:Ljava/lang/String;

.field private mEventClickHasNumber:Z

.field private mEventClickHasPhoto:Z

.field private mEventClickLookupKey:Ljava/lang/String;

.field private mEventClickTime:J

.field private mEventClickTitle:Ljava/lang/String;

.field protected mEventCursor:Landroid/database/Cursor;

.field private mEventType:I

.field private mExteriorListAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field protected mExtraIdx:I

.field protected mIdxEventContactId:I

.field protected mIdxEventContactLookup:I

.field protected mIdxEventContactName:I

.field protected mIdxEventContactPhoto:I

.field protected mIdxEventHasPhoneNumber:I

.field protected mIdxEventId:I

.field protected mIdxEventIsRead:I

.field protected mIdxEventRawContactId:I

.field protected mIdxEventTime:I

.field protected mIdxEventType:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsDirty:Z

.field protected mIsFacebookLinked:I

.field protected mIsFlickrLinked:I

.field protected mIsReadIdx:I

.field private mIsReadStatusSet:Z

.field protected mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

.field protected mPersonId:J

.field protected mQueryHandler:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

.field protected mRowIdIdx:I

.field protected mSearchPattern:Ljava/lang/String;

.field protected mServiceIdx:I

.field protected mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

.field protected mTimeIdx:I

.field protected mTypeIdx:I

.field protected mUIDIdx:I

.field private mUiHandler:Landroid/os/Handler;

.field protected mUpdateCursor:Landroid/database/Cursor;

.field protected mUserIdIdx:I

.field private mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string v0, "ContactDetailUpdatesAndEventsActivity"

    sput-object v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;-><init>()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    .line 100
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    .line 152
    iput v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsFacebookLinked:I

    .line 153
    iput v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsFlickrLinked:I

    .line 174
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z

    .line 369
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isStatusSyncing:Z

    .line 1125
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->exteriorAdapterLoadingTaskProcessing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->removeExteriorAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private endUiHandler()V
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    .line 1208
    :cond_0
    return-void
.end method

.method private getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 7

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v6

    .line 698
    .local v6, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/htccontacts/HtcContactInfo;->isSimType()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    move-object v0, p0

    move-object v4, p0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/ContactsUtils;->getDeleteConfirmDialog(Landroid/content/Context;Landroid/content/ContentResolver;ZLandroid/net/Uri;Landroid/app/Activity;Lcom/android/htccontacts/util/ContactsUtils$DeleteListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private removeExteriorAdapter()V
    .locals 3

    .prologue
    .line 1210
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1211
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1212
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 1214
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 1215
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 1216
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1218
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    return-void
.end method

.method private startEventQuery(J)V
    .locals 18
    .parameter "lContactId"

    .prologue
    .line 564
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 565
    .local v11, currentTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_events_within_days"

    const/4 v4, 0x3

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 566
    .local v13, days:I
    move-wide/from16 v16, v11

    .line 567
    .local v16, startTime:J
    const-wide/32 v2, 0x5265c00

    int-to-long v6, v13

    mul-long/2addr v2, v6

    add-long v14, v11, v2

    .line 568
    .local v14, endTime:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 569
    .local v10, calendar:Ljava/util/Calendar;
    invoke-virtual {v10, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 570
    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 571
    const/16 v2, 0xc

    const/16 v3, 0x3b

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 572
    const/16 v2, 0xd

    const/16 v3, 0x3b

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 573
    const/16 v2, 0xe

    const/16 v3, 0x3e7

    invoke-virtual {v10, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 574
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->cancelOperation(I)V

    .line 576
    sget-object v2, Lcom/htc/provider/HtcContactsContract$EventInstance;->WITH_RANGE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "e_start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "e_end"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 577
    .local v5, queryUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notify_location=1 AND contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const-string v9, "time asc"

    invoke-virtual/range {v2 .. v9}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method private startUiHandler()V
    .locals 1

    .prologue
    .line 1180
    new-instance v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$1;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    .line 1202
    return-void
.end method


# virtual methods
.method public afterDelete(I)V
    .locals 0
    .parameter "deleteCount"

    .prologue
    .line 1172
    return-void
.end method

.method public beforeDelete()V
    .locals 0

    .prologue
    .line 1176
    return-void
.end method

.method protected getEditIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 690
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 691
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-wide v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 692
    .local v0, contactId:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/contacts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 693
    .local v3, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v4
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected marginListItemLayout(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1147
    const/4 v2, 0x0

    .line 1148
    .local v2, marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    .line 1150
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, 0x0

    .line 1151
    .local v0, leftMargin:I
    const/4 v3, 0x0

    .line 1153
    .local v3, rightMargin:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1154
    const/4 v5, -0x2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1156
    const v5, 0x2020010

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1157
    .local v4, tv:Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1158
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1160
    const v5, 0x2020011

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1161
    .restart local v2       #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_0

    .line 1162
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0, v5, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1164
    :cond_0
    const v5, 0x2020012

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2           #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1165
    .restart local v2       #marginLp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v2, :cond_1

    .line 1166
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v0, v5, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1168
    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, -0x1

    .line 430
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 434
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v6, 0x3e8

    if-ne p1, v6, :cond_2

    .line 435
    if-eqz p3, :cond_0

    .line 436
    const-string v6, "contact_id"

    invoke-virtual {p3, v6, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 437
    .local v3, lContactId:J
    iget-wide v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    cmp-long v6, v8, v6

    if-gez v6, :cond_0

    cmp-long v6, v8, v3

    if-gez v6, :cond_0

    .line 438
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    iget-wide v7, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    invoke-static {v6, v7, v8, v3, v4}, Lcom/htc/util/contacts/ContactsUtility;->JoinContactsManually(Landroid/content/Context;JJ)V

    .line 439
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteLinkChangeIntent(Landroid/content/Context;)V

    goto :goto_0

    .line 443
    .end local v3           #lContactId:J
    :cond_2
    const/16 v6, 0x2f1

    if-ne v6, p1, :cond_4

    .line 445
    const-string v6, "pure_flickr"

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 447
    .local v0, bPureFlickr:Z
    const-string v6, "rollback_contact"

    invoke-virtual {p3, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 449
    .local v1, bShouldRollBack:Z
    if-eq v10, v0, :cond_3

    if-ne v10, v1, :cond_4

    .line 450
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 451
    .local v5, uriFixed:Landroid/net/Uri;
    if-eqz v5, :cond_4

    .line 453
    invoke-virtual {v2, v5}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    .line 457
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v5           #uriFixed:Landroid/net/Uri;
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/SNBaseListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 7
    .parameter "infoReadyType"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 218
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    .line 219
    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_2

    .line 220
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 221
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    const-wide/16 v1, -0x1

    iget-wide v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 223
    iget-wide v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startQueryUpdate(J)V

    .line 224
    iget-wide v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startEventQuery(J)V

    .line 232
    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    .line 234
    if-eqz v0, :cond_4

    .line 235
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->restoreList()V

    .line 241
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    if-nez v1, :cond_2

    .line 242
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    if-eqz v1, :cond_1

    .line 243
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->cancel(Z)Z

    .line 247
    :cond_1
    new-instance v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    .line 248
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    new-array v2, v5, [Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 249
    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    .line 253
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_2
    return-void

    .line 227
    .restart local v0       #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_3
    const-string v1, "CONTACT_INFO_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    iget-wide v1, v0, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    iput-wide v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mPersonId:J

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setListLoading()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 264
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/SNBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 266
    new-instance v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

    .line 268
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 270
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 271
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a01e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 273
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 275
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;

    .line 278
    new-instance v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    .line 282
    :cond_0
    new-instance v1, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x2090008

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    .line 283
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    const v2, 0x7f0a01fa

    const-string v3, "event"

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->addListAdapter(Lcom/android/htccontacts/widget/ISNBaseListAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$SocialNetwork;->isSocialNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    const v2, 0x7f0a01f9

    const-string v3, "update"

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->addListAdapter(Lcom/android/htccontacts/widget/ISNBaseListAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    new-instance v2, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20a001b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/widget/FriendStreamListViewOnTouchListener;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 298
    new-instance v1, Lcom/android/htccontacts/BackgroundWorkerHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/htccontacts/BackgroundWorkerHandler;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;

    .line 300
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startUiHandler()V

    .line 301
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 462
    const v0, 0xea60

    if-ne p1, v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTitle:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->buildDialog(Landroid/content/Context;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 633
    const/4 v0, 0x3

    const v1, 0x7f0a01f8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a9d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 634
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 635
    const/4 v0, 0x4

    const v1, 0x7f0a01f7

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 636
    const v0, 0x7f0a013c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 638
    :cond_0
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/SNBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 639
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-super {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->onDestroy()V

    .line 404
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mQueryHandler:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$QueryHandler;

    .line 406
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUpdateCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUpdateCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 420
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->beforeDelete()V

    .line 422
    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 425
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->endUiHandler()V

    .line 426
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 181
    invoke-super {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->onDetailInfoInit()V

    .line 182
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 183
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 186
    iput-boolean v7, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 188
    .local v1, lContactId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 189
    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startQueryUpdate(J)V

    .line 190
    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startEventQuery(J)V

    .line 194
    .end local v1           #lContactId:J
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    if-nez v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    if-eqz v3, :cond_1

    .line 196
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 197
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->cancel(Z)Z

    .line 200
    :cond_1
    new-instance v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    .line 201
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    new-array v4, v6, [Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    .line 205
    :cond_2
    if-eqz v0, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->restoreList()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_3
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setListLoading()V

    goto :goto_0
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 9
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 481
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 484
    .local v7, obj:Ljava/lang/Object;
    if-nez v7, :cond_1

    .line 523
    .end local v7           #obj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 486
    .restart local v7       #obj:Ljava/lang/Object;
    :cond_1
    instance-of v0, v7, Landroid/database/Cursor;

    if-eqz v0, :cond_7

    move-object v6, v7

    .line 487
    check-cast v6, Landroid/database/Cursor;

    .line 488
    .local v6, cursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactId:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickContactId:J

    .line 489
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactLookup:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickLookupKey:Ljava/lang/String;

    .line 490
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactPhoto:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickHasPhoto:Z

    .line 491
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventHasPhoneNumber:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickHasNumber:Z

    .line 492
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventContactName:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickDisplayName:Ljava/lang/String;

    .line 493
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventTime:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTime:J

    .line 494
    iget v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIdxEventType:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 495
    .local v8, type:I
    const/4 v0, 0x1

    if-ne v8, v0, :cond_5

    .line 496
    const v0, 0x7f0a0124

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTitle:Ljava/lang/String;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventType:I

    .line 505
    :cond_2
    :goto_3
    const v0, 0xea60

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->showDialog(I)V

    goto :goto_0

    .line 490
    .end local v8           #type:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 491
    :cond_4
    const/4 v0, 0x1

    goto :goto_2

    .line 498
    .restart local v8       #type:I
    :cond_5
    const/4 v0, 0x2

    if-ne v8, v0, :cond_6

    .line 499
    const v0, 0x7f0a0125

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTitle:Ljava/lang/String;

    .line 500
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventType:I

    goto :goto_3

    .line 501
    :cond_6
    const/4 v0, 0x3

    if-ne v8, v0, :cond_2

    .line 502
    const v0, 0x7f0a0126

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTitle:Ljava/lang/String;

    .line 503
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventType:I

    goto :goto_3

    .line 508
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #type:I
    :cond_7
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z

    move-result v0

    if-nez v0, :cond_8

    .line 511
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListAdapter:Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/SimpleIndexableListAdapter;->get(I)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    sub-int v0, p3, v0

    add-int/lit8 v3, v0, -0x2

    .line 516
    .local v3, updatePosition:I
    :goto_4
    if-ltz v3, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mAmortizedUpdateAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    goto/16 :goto_0

    .line 514
    .end local v3           #updatePosition:I
    :cond_8
    add-int/lit8 v3, p3, -0x1

    .restart local v3       #updatePosition:I
    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 654
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 685
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/SNBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_0
    :goto_0
    return v2

    .line 657
    :pswitch_0
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailUpdatesAndEventsActivity]Edit contact"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getEditIntent()Landroid/content/Intent;

    move-result-object v1

    .line 659
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 665
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailUpdatesAndEventsActivity]Delete contact"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getDeleteConfirmDialog()Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 667
    .local v0, confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    if-eqz v0, :cond_0

    .line 668
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0

    .line 673
    .end local v0           #confirm:Lcom/htc/widget/HtcAlertDialog$Builder;
    :pswitch_2
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailUpdatesAndEventsActivity]Update now"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->doUpdate()V

    goto :goto_0

    .line 679
    :pswitch_3
    const-string v3, "ANALYTIC_HtcContacts"

    const-string v4, "[ContactDetailUpdatesAndEventsActivity]Settings"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const-class v4, Lcom/android/htccontacts/app/ConfigUpdatesAndEventsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 681
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 349
    invoke-super {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->onPause()V

    .line 354
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 9
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 471
    const v0, 0xea60

    if-ne v0, p1, :cond_0

    .line 472
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v8

    .line 473
    .local v8, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget v2, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventType:I

    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickDisplayName:Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventClickTime:J

    invoke-virtual {v8}, Lcom/android/htccontacts/HtcContactInfo;->getEntities()Ljava/util/ArrayList;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    invoke-static/range {v0 .. v7}, Lcom/android/htccontacts/ui/dialog/ContactEventDialogBuilder;->prepareDialog(Landroid/content/Context;Landroid/app/Dialog;ILjava/lang/CharSequence;Ljava/lang/CharSequence;JLjava/util/ArrayList;)V

    .line 477
    .end local v8           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 644
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 645
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isMyContactType()Z

    move-result v3

    if-nez v3, :cond_0

    .line 646
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isAllSocialNetworkAccountTyupe()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    .line 647
    .local v0, bEditable:Z
    :goto_0
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 649
    .end local v0           #bEditable:Z
    :cond_0
    return v2

    :cond_1
    move v0, v2

    .line 646
    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-wide/16 v3, -0x1

    .line 305
    invoke-super {p0}, Lcom/android/htccontacts/app/SNBaseListActivity;->onResume()V

    .line 307
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 308
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    if-eqz v5, :cond_4

    .line 310
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 311
    iput-boolean v7, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsDirty:Z

    .line 312
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 313
    .local v1, lContactId:J
    :goto_0
    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 314
    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startQueryUpdate(J)V

    .line 315
    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startEventQuery(J)V

    .line 327
    .end local v1           #lContactId:J
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    if-nez v3, :cond_2

    .line 328
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    if-eqz v3, :cond_1

    .line 329
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v4, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 330
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    invoke-virtual {v3, v6}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->cancel(Z)Z

    .line 333
    :cond_1
    new-instance v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    iget-object v4, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    .line 334
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mSetReadTask:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;

    new-array v4, v6, [Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$SetReadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 335
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mIsReadStatusSet:Z

    .line 338
    :cond_2
    if-eqz v0, :cond_6

    .line 339
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->restoreList()V

    .line 345
    :goto_2
    return-void

    :cond_3
    move-wide v1, v3

    .line 312
    goto :goto_0

    .line 320
    :cond_4
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 322
    .restart local v1       #lContactId:J
    :goto_3
    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 323
    invoke-direct {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->startEventQuery(J)V

    goto :goto_1

    .end local v1           #lContactId:J
    :cond_5
    move-wide v1, v3

    .line 321
    goto :goto_3

    .line 342
    :cond_6
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setListLoading()V

    goto :goto_2
.end method

.method protected onSNSyncEnd()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 381
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isStatusSyncing:Z

    if-ne v5, v3, :cond_1

    .line 383
    invoke-virtual {p0, v4, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setIndexStatus(II)V

    .line 384
    invoke-virtual {p0, v5, v4}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setIndexStatus(II)V

    .line 385
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 387
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    const/4 v1, 0x0

    .line 388
    .local v1, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 390
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 391
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 392
    add-int/lit8 v1, v1, 0x1

    .line 393
    goto :goto_0

    .line 395
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v1           #i:I
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :cond_0
    iput-boolean v4, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isStatusSyncing:Z

    .line 397
    :cond_1
    return-void
.end method

.method protected onSNSyncStart()V
    .locals 3

    .prologue
    const v2, 0x7f0a016c

    const/4 v1, 0x1

    .line 372
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isStatusSyncing:Z

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setIndexStatus(II)V

    .line 375
    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setIndexStatus(II)V

    .line 376
    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->isStatusSyncing:Z

    .line 378
    :cond_0
    return-void
.end method

.method public setContentView()V
    .locals 1

    .prologue
    .line 364
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setContentView(I)V

    .line 366
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->setTitleBar()V

    .line 367
    return-void
.end method

.method protected setEventAdapter(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    iget-object v1, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    const v2, 0x2090008

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;-><init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    .line 528
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    const v1, 0x7f0a01fa

    const-string v2, ""

    const-string v3, "event"

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->addListAdapter(Lcom/android/htccontacts/widget/ISNBaseListAdapter;ILjava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_0
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mEventAdapter:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 531
    iget-object v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 358
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 359
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 361
    return-void
.end method

.method protected startQueryUpdate(J)V
    .locals 4
    .parameter "lContactId"

    .prologue
    const/16 v3, 0x32

    .line 536
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 556
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mUiHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 561
    :cond_0
    return-void
.end method
