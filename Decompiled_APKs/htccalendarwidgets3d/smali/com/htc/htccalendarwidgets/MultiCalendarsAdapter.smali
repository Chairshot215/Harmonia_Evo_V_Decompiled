.class public Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "MultiCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$BackGroundHandler;,
        Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$UpdateAllCalendarThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NOTIFY_CAL_WIDGET:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiCalendarsAdapter"

.field private static final UPDATE_ALL_CALENDAR:I = 0x1

.field private static mCheckedNum:I


# instance fields
.field private mBackGroundHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mParentActivity:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mResources:Landroid/content/res/Resources;

.field private mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/htccalendarwidgets/SyncedHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mValues:Landroid/content/ContentValues;

.field private prevAccountType:Ljava/lang/String;

.field private prevView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->prevAccountType:Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-direct {v0}, Lcom/htc/htccalendarwidgets/SyncedHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    .line 56
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    .line 59
    invoke-static {}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mBackGroundHandler:Landroid/os/Handler;

    .line 63
    new-instance v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;

    invoke-direct {v0, p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$1;-><init>(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mResources:Landroid/content/res/Resources;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->msg_send_to_calendar_widget()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->msg_update_all_calendars(Z)V

    return-void
.end method

.method private initListData(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    .line 224
    const/4 v2, 0x1

    .line 225
    .local v2, isAllCalendarChecked:Z
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mParentActivity:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-virtual {v4}, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;->getSelectedList()Ljava/util/ArrayList;

    move-result-object v3

    .line 226
    .local v3, selectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_0

    .line 227
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 228
    const-string v4, "MultiCalendarsAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAllCalendarChecked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", selectedList : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    const/4 v4, -0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 235
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v1, v4

    .line 237
    .local v1, calendarId:I
    if-eqz v2, :cond_1

    .line 239
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget v4, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_0

    .line 242
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 244
    .local v0, calendarChecked:Z
    if-eqz v0, :cond_2

    .line 245
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget v4, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_0

    .line 248
    :cond_2
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    .end local v0           #calendarChecked:Z
    .end local v1           #calendarId:I
    :cond_3
    return-void
.end method

.method private msg_send_to_calendar_widget()V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.calendars.picker.changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method private msg_update_all_calendars(Z)V
    .locals 11
    .parameter "closeDialog"

    .prologue
    .line 86
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v8}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 87
    .local v4, iter:Ljava/util/Iterator;
    const-string v8, "MultiCalendarsAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "all calendars, mSelected size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v10}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v6, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 90
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 92
    .local v3, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v8, v3}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 93
    .local v1, checked:Z
    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 94
    .local v7, uri:Landroid/net/Uri;
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 95
    iget-object v9, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    const-string v10, "visible"

    if-eqz v1, :cond_0

    const/4 v8, 0x1

    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 98
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 95
    .end local v0           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    .line 102
    .end local v1           #checked:Z
    .end local v3           #id:Ljava/lang/Long;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "com.android.calendar"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 115
    :goto_2
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 116
    .local v5, msgNotifyCalWidget:Landroid/os/Message;
    iget-object v8, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 121
    return-void

    .line 109
    .end local v5           #msgNotifyCalWidget:Landroid/os/Message;
    :catch_0
    move-exception v2

    .line 110
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "MultiCalendarsAdapter"

    const-string v9, "Ignoring unexpected remote exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 111
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 112
    .local v2, e:Landroid/content/OperationApplicationException;
    const-string v8, "MultiCalendarsAdapter"

    const-string v9, "Ignoring unexpected exception"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 18
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 162
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    long-to-int v6, v15

    .line 163
    .local v6, calendarId:I
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, calendarName:Ljava/lang/String;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 165
    .local v4, calendarColor:I
    const/4 v15, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, calendarType:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 168
    const-string v7, ""

    .line 171
    :cond_0
    int-to-long v15, v6

    invoke-static/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter;->getRowInfo(J)Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;

    move-result-object v12

    .line 173
    .local v12, rowInfo:Lcom/htc/htccalendarwidgets/MultiCalendarsByAccountAdapter$RowInfo;
    const v15, 0x7f0c0004

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemColorBar;

    .line 174
    .local v5, calendarColorBar:Lcom/htc/widget/HtcListItemColorBar;
    const v15, 0x7f0c0005

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItemColorIcon;

    .line 175
    .local v10, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v15, 0x7f0c0006

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 176
    .local v14, textView:Lcom/htc/widget/HtcListItem2LineText;
    const v15, 0x7f0c0007

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemCheckBox;

    .line 178
    .local v3, calendarCheckBox:Lcom/htc/widget/HtcListItemCheckBox;
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mParentActivity:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-static {v15, v8}, Lcom/htc/util/calendar/tools/IconTools;->getAppNameByAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, appName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 182
    move-object v2, v7

    .line 183
    const/4 v15, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mParentActivity:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    invoke-static {v15, v8}, Lcom/htc/util/calendar/tools/IconTools;->getTypeIconByAccountType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 186
    .local v11, mAccountIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v10, v11}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 188
    invoke-virtual {v14, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a0011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 190
    invoke-virtual {v14, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 191
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 197
    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 209
    .local v9, checked:Z
    :goto_1
    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 210
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v15}, Lcom/htc/widget/HtcListItemCheckBox;->setTag(Ljava/lang/Object;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    .line 213
    .local v13, ss:Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;
    invoke-virtual {v13, v6}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setId(I)V

    .line 214
    invoke-virtual {v13, v7}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setName(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v13, v8}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->setType(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->prevView:Landroid/view/View;

    .line 218
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->prevAccountType:Ljava/lang/String;

    .line 219
    return-void

    .line 193
    .end local v9           #checked:Z
    .end local v13           #ss:Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;
    :cond_2
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0

    .line 200
    :cond_3
    const/4 v15, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v9, 0x1

    .line 201
    .restart local v9       #checked:Z
    :goto_2
    if-eqz v9, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v15 .. v17}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget v15, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v15, v15, 0x1

    sput v15, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_1

    .line 200
    .end local v9           #checked:Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 205
    .restart local v9       #checked:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v15 .. v17}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 341
    iget-object v0, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    .line 342
    .local v0, tmp_cursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mBackGroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;

    invoke-direct {v2, p0, v0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter$2;-><init>(Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 350
    .end local v0           #tmp_cursor:Landroid/database/Cursor;
    :cond_1
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    .line 352
    if-eqz p1, :cond_2

    .line 353
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->initListData(Landroid/database/Cursor;)V

    .line 354
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 356
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mRowIDColumn:I

    .line 357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mDataValid:Z

    .line 359
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 361
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mRowIDColumn:I

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mDataValid:Z

    .line 364
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public checkAllCalendars(Z)V
    .locals 4
    .parameter "checkAll"

    .prologue
    .line 280
    iget-object v2, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v2}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 281
    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 283
    .local v0, id:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    if-eqz p1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v3, v0, v2}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    .line 285
    .end local v0           #id:Ljava/lang/Integer;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getCount()I

    move-result v2

    :goto_2
    sput v2, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    .line 286
    return-void

    .line 285
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getSelectedCalendars()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v3}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 291
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 293
    .local v0, id:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v3, v0}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    .end local v0           #id:Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 298
    const/4 v2, 0x0

    .line 304
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    return-object v2

    .line 299
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 300
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 301
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public isAllCalendarsChecked()Z
    .locals 6

    .prologue
    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, checkedNum:I
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    if-eqz v3, :cond_1

    .line 317
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v3}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 318
    .local v2, iter:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 320
    .local v1, id:Ljava/lang/Integer;
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v3, v1}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    .end local v1           #id:Ljava/lang/Integer;
    .end local v2           #iter:Ljava/util/Iterator;
    :cond_1
    const-string v3, "MultiCalendarsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Size of mSelected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-virtual {v5}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", checkedNum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->getCount()I

    move-result v3

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 154
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 155
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    const-string v2, "item"

    invoke-direct {v0, v2}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, htcItemTag:Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    return-object v1
.end method

.method public saveAllCalendars(Z)V
    .locals 5
    .parameter "bNeedCloseProgressDialog"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 310
    iget-object v4, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 311
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v3

    .line 310
    goto :goto_0
.end method

.method public setIntoCalendarDB(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;

    invoke-virtual {v3}, Lcom/htc/htccalendarwidgets/SimpleHtcListItemSeparable;->getId()I

    move-result v0

    .line 259
    .local v0, calendarId:I
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 260
    .local v1, checked:Z
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 262
    :goto_0
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    if-eqz v1, :cond_2

    .line 267
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget v3, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    .line 273
    :goto_1
    const v3, 0x7f0c0007

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 274
    .local v2, chkBox:Landroid/widget/CheckBox;
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    return v1

    .line 260
    .end local v2           #chkBox:Landroid/widget/CheckBox;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 270
    :cond_2
    iget-object v3, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mSelected:Lcom/htc/htccalendarwidgets/SyncedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Lcom/htc/htccalendarwidgets/SyncedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget v3, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    add-int/lit8 v3, v3, -0x1

    sput v3, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mCheckedNum:I

    goto :goto_1
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 81
    check-cast p1, Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    .end local p1
    iput-object p1, p0, Lcom/htc/htccalendarwidgets/MultiCalendarsAdapter;->mParentActivity:Lcom/htc/htccalendarwidgets/ManageCalendarsActivity;

    .line 82
    return-void
.end method
