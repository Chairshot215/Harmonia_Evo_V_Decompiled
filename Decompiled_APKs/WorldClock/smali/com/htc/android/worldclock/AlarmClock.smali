.class public Lcom/htc/android/worldclock/AlarmClock;
.super Lcom/htc/android/worldclock/CloseMenuIME;
.source "AlarmClock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;,
        Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;,
        Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;,
        Lcom/htc/android/worldclock/AlarmClock$UIHandler;
    }
.end annotation


# static fields
.field protected static final ADD_ALARM_ID:I = 0x1

.field static final DELETE_ALARM:I = 0x2

.field protected static final DELETE_ID:I = 0x2

.field static final FAIL_QUERYING:I = 0x3

.field public static final MAX_ALARM_COUNT:I = 0xa

.field static final NO_DB:I = 0x2

.field static final REQUEST_ADD:I = 0x0

.field static final REQUEST_DEL:I = 0x1

.field static final REQUEST_SETTINGS:I = 0x2

.field protected static final SETTINGS_ID:I = 0x3

.field static final SET_ALARM:I = 0x1


# instance fields
.field private final WHAT_ON_ALARMADAPTER:I

.field private final WHAT_ON_ALARMCLOCK:I

.field private final WHAT_ON_INIT:I

.field private m24HourMode:Z

.field protected mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

.field protected mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

.field private mAlarmChanged:Z

.field protected mAlarmCount:I

.field protected mAlarmsList:Lcom/htc/widget/HtcListView;

.field protected mChildMode:Z

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDaysAbbr:[Ljava/lang/CharSequence;

.field protected mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

.field private mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHeaderView:Landroid/view/View;

.field protected mLooper:Landroid/os/Looper;

.field private mStartWeekDay:I

.field private mStopped:Z

.field private mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

.field private final mUIHandler:Landroid/os/Handler;

.field protected myList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/worldclock/AlarmItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Lcom/htc/android/worldclock/CloseMenuIME;-><init>()V

    .line 59
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mChildMode:Z

    .line 64
    const/16 v0, 0xc8

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock;->WHAT_ON_INIT:I

    .line 65
    const/16 v0, 0xc9

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock;->WHAT_ON_ALARMCLOCK:I

    .line 66
    const/16 v0, 0xca

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock;->WHAT_ON_ALARMADAPTER:I

    .line 69
    iput v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    .line 81
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mLooper:Landroid/os/Looper;

    .line 83
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    .line 85
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z

    .line 86
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChanged:Z

    .line 87
    new-instance v0, Lcom/htc/android/worldclock/AlarmClock$UIHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/android/worldclock/AlarmClock$UIHandler;-><init>(Lcom/htc/android/worldclock/AlarmClock;Lcom/htc/android/worldclock/AlarmClock$1;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mUIHandler:Landroid/os/Handler;

    .line 88
    iput-boolean v1, p0, Lcom/htc/android/worldclock/AlarmClock;->m24HourMode:Z

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStartWeekDay:I

    .line 724
    new-instance v0, Lcom/htc/android/worldclock/AlarmClock$7;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmClock$7;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->onInitParent()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/worldclock/AlarmClock;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->updateAlarmClock()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/android/worldclock/AlarmClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/worldclock/AlarmClock;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->m24HourMode:Z

    return v0
.end method

.method static synthetic access$500(Lcom/htc/android/worldclock/AlarmClock;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStartWeekDay:I

    return v0
.end method

.method static synthetic access$602(Lcom/htc/android/worldclock/AlarmClock;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChanged:Z

    return p1
.end method

.method static synthetic access$700(Lcom/htc/android/worldclock/AlarmClock;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkAlarmChange()V
    .locals 2

    .prologue
    .line 342
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 343
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChanged:Z

    if-eqz v0, :cond_0

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChanged:Z

    .line 345
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    :cond_0
    return-void
.end method

.method private initHandler()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 159
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlarmClock"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandlerThread:Landroid/os/HandlerThread;

    .line 160
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 161
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mLooper:Landroid/os/Looper;

    .line 162
    new-instance v0, Lcom/htc/android/worldclock/AlarmClock$2;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/worldclock/AlarmClock$2;-><init>(Lcom/htc/android/worldclock/AlarmClock;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method private onInitParent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 181
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 182
    invoke-static {p0}, Lcom/htc/android/worldclock/PreferencesUtil;->getStartWeekDay(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStartWeekDay:I

    .line 183
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->updateMyList()V

    .line 186
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    new-instance v0, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    .line 188
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/htc/android/worldclock/Alarms$AlarmColumns;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    :cond_0
    new-instance v0, Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    iput-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    .line 194
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 198
    :cond_1
    return-void
.end method

.method private parse(Landroid/database/Cursor;)Lcom/htc/android/worldclock/AlarmItem;
    .locals 4
    .parameter "cur"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 264
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 265
    new-instance v0, Lcom/htc/android/worldclock/AlarmItem;

    invoke-direct {v0}, Lcom/htc/android/worldclock/AlarmItem;-><init>()V

    .line 266
    .local v0, item:Lcom/htc/android/worldclock/AlarmItem;
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aId:I

    .line 267
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aHour:I

    .line 268
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aMinutes:I

    .line 269
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aDaysOfWeek:I

    .line 270
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aEnabled:Z

    .line 271
    const/4 v1, 0x6

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aVibrate:Z

    .line 272
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aDescription:Ljava/lang/String;

    .line 273
    const/16 v1, 0x8

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/android/worldclock/AlarmItem;->aAlert:Ljava/lang/String;

    .line 274
    const/16 v1, 0x9

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v2, v0, Lcom/htc/android/worldclock/AlarmItem;->aSnoozed:Z

    .line 275
    return-object v0

    :cond_0
    move v1, v3

    .line 270
    goto :goto_0

    :cond_1
    move v1, v3

    .line 271
    goto :goto_1

    :cond_2
    move v2, v3

    .line 274
    goto :goto_2
.end method

.method private setCurrentDay()V
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 227
    invoke-static {p0}, Lcom/htc/android/worldclock/Alarms;->get24HourMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->m24HourMode:Z

    .line 228
    return-void
.end method

.method private updateAlarmAdapter()V
    .locals 2

    .prologue
    .line 221
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 222
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 223
    return-void
.end method

.method private updateAlarmClock()V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 212
    iget-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->updateMyList()V

    .line 217
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->updateAlarmAdapter()V

    goto :goto_0
.end method

.method private updateMyList()V
    .locals 5

    .prologue
    .line 282
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 283
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->setCurrentDay()V

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, alarmCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/android/worldclock/Alarms;->getAlarmsCursor(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 292
    :goto_0
    if-eqz v1, :cond_5

    .line 293
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 294
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 299
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 300
    const/4 v3, 0x0

    .line 302
    .local v3, next:Z
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->parse(Landroid/database/Cursor;)Lcom/htc/android/worldclock/AlarmItem;

    move-result-object v0

    .line 304
    .local v0, ai:Lcom/htc/android/worldclock/AlarmItem;
    :try_start_1
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 305
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 313
    :goto_2
    if-nez v3, :cond_0

    .line 315
    .end local v0           #ai:Lcom/htc/android/worldclock/AlarmItem;
    .end local v3           #next:Z
    :cond_1
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 316
    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    .line 319
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 320
    const/4 v1, 0x0

    .line 330
    :goto_3
    return-void

    .line 296
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    goto :goto_1

    .line 308
    .restart local v0       #ai:Lcom/htc/android/worldclock/AlarmItem;
    .restart local v3       #next:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 310
    :catch_0
    move-exception v2

    .line 311
    .local v2, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_2

    .line 323
    .end local v0           #ai:Lcom/htc/android/worldclock/AlarmItem;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #next:Z
    :cond_5
    new-instance v4, Lcom/htc/android/worldclock/AlarmClock$3;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/AlarmClock$3;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    invoke-virtual {p0, v4}, Lcom/htc/android/worldclock/AlarmClock;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 288
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 250
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 251
    iget v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 252
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->showDialog(I)V

    .line 258
    :goto_0
    return-void

    .line 254
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 255
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "alarm_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/android/worldclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 94
    const-string v3, "[ATS][com.htc.android.worldclock][select_tage][complete]"

    invoke-static {v3}, Lcom/htc/android/worldclock/htclog/HtcLog;->d(Ljava/lang/String;)V

    .line 95
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_0

    .line 98
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->showDialog(I)V

    .line 155
    :goto_0
    return-void

    .line 102
    :cond_0
    const v3, 0x7f030002

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->setContentView(I)V

    .line 104
    iget-boolean v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mChildMode:Z

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getParent()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/htc/android/worldclock/WorldClockTabControl;

    invoke-virtual {v3}, Lcom/htc/android/worldclock/WorldClockTabControl;->initBackground()V

    .line 108
    :cond_1
    const v3, 0x7f0b0006

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 109
    .local v1, headerText:Lcom/htc/widget/HeaderBarText;
    const v3, 0x7f080040

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 110
    invoke-virtual {v1, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 111
    const v3, 0x7f0b0007

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    .line 112
    .local v0, headerBarAddImage:Lcom/htc/widget/HeaderBarImage;
    invoke-virtual {v0, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 113
    const v3, 0x7f08008b

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 114
    const v3, 0x208087b

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 115
    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-virtual {v0, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 118
    const v3, 0x7f0b001e

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 119
    .local v2, ll:Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 121
    const v3, 0x7f0b0008

    invoke-virtual {p0, v3}, Lcom/htc/android/worldclock/AlarmClock;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListView;

    iput-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    .line 122
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HtcListView;->setVerticalScrollBarEnabled(Z)V

    .line 124
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 126
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 127
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    new-instance v4, Lcom/htc/android/worldclock/AlarmClock$1;

    invoke-direct {v4, p0}, Lcom/htc/android/worldclock/AlarmClock$1;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 147
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mDaysAbbr:[Ljava/lang/CharSequence;

    .line 149
    new-instance v3, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-direct {v3, p0, v4}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;-><init>(Lcom/htc/android/worldclock/AlarmClock;Ljava/util/ArrayList;)V

    iput-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    .line 150
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    iget-object v4, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 153
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->initHandler()V

    .line 154
    iget-object v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v1, 0x7f08005e

    const v3, 0x7f080016

    const v2, 0x1080027

    .line 646
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 647
    packed-switch p1, :pswitch_data_0

    .line 680
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 649
    :pswitch_1
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080044

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/worldclock/AlarmClock$4;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmClock$4;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_2
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/htc/android/worldclock/AlarmClock$5;

    invoke-direct {v2, p0}, Lcom/htc/android/worldclock/AlarmClock$5;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 670
    :pswitch_3
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080066

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080068

    invoke-virtual {p0, v1}, Lcom/htc/android/worldclock/AlarmClock;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/htc/android/worldclock/AlarmClock$6;

    invoke-direct {v1, p0}, Lcom/htc/android/worldclock/AlarmClock$6;-><init>(Lcom/htc/android/worldclock/AlarmClock;)V

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 417
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 421
    const v1, 0x7f080043

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 422
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x208031d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 423
    const v1, 0x7f080019

    invoke-interface {p1, v4, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 424
    const v1, 0x2080323

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 425
    const/4 v1, 0x3

    const v2, 0x7f080026

    invoke-interface {p1, v5, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 426
    const v1, 0x2080336

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 428
    return v4
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 354
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onDestroy()V

    .line 356
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 366
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mUIHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 369
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 373
    :cond_2
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mContentResolver:Landroid/content/ContentResolver;

    .line 374
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmChangeObserver:Lcom/htc/android/worldclock/AlarmClock$AlarmChangeObserver;

    .line 375
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mFormatChangeObserver:Lcom/htc/android/worldclock/AlarmClock$FormatChangeObserver;

    .line 377
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mDaysAbbr:[Ljava/lang/CharSequence;

    .line 378
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    invoke-virtual {v0}, Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;->onDestroy()V

    .line 379
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmAdapter:Lcom/htc/android/worldclock/AlarmClock$AlarmTimeAdapter;

    .line 380
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmsList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    iput-object v2, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    .line 385
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 386
    return-void
.end method

.method protected onInitChild()V
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 203
    invoke-virtual {p0}, Lcom/htc/android/worldclock/AlarmClock;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/android/worldclock/WorldClockTabControl;

    .line 204
    .local v0, tabs:Lcom/htc/android/worldclock/WorldClockTabControl;
    if-eqz v0, :cond_0

    .line 205
    iget-object v1, p0, Lcom/htc/android/worldclock/AlarmClock;->mTabCallback:Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;

    invoke-virtual {v0, v1}, Lcom/htc/android/worldclock/WorldClockTabControl;->setTabCallback(Lcom/htc/android/worldclock/WorldClockTabControl$TabCallback;)V

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->updateAlarmAdapter()V

    .line 208
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 434
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    move v1, v2

    .line 457
    :goto_1
    return v1

    .line 436
    :pswitch_0
    const-string v2, "ANALYTIC_WorldClock"

    const-string v3, "[AlarmClock]DELETE_ID"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/htc/android/worldclock/DeleteAlarm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 438
    .local v0, intent:Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/android/worldclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 441
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v3, "ANALYTIC_WorldClock"

    const-string v4, "[AlarmClock]ADD_ALARM_ID"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v3, p0, Lcom/htc/android/worldclock/AlarmClock;->mAlarmCount:I

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 443
    invoke-virtual {p0, v2}, Lcom/htc/android/worldclock/AlarmClock;->showDialog(I)V

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/htc/android/worldclock/SetAlarm;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 446
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v3, "alarm_id"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    invoke-virtual {p0, v0, v1}, Lcom/htc/android/worldclock/AlarmClock;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 451
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    const-string v1, "ANALYTIC_WorldClock"

    const-string v3, "[AlarmClock]SETTINGS_ID"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/android/worldclock/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 453
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/android/worldclock/AlarmClock;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 390
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 391
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onPause()V

    .line 392
    invoke-static {}, Lcom/htc/android/worldclock/ToastMaster;->cancelToast()V

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z

    .line 394
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 398
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 399
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 405
    :goto_0
    iget-object v0, p0, Lcom/htc/android/worldclock/AlarmClock;->myList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 406
    invoke-interface {p1, v1, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 411
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/android/worldclock/CloseMenuIME;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 402
    :cond_1
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_0

    .line 408
    :cond_2
    invoke-interface {p1, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 334
    invoke-static {}, Lcom/htc/android/worldclock/htclog/HtcLog;->traceFunc()V

    .line 335
    invoke-super {p0}, Lcom/htc/android/worldclock/CloseMenuIME;->onResume()V

    .line 336
    invoke-static {p0}, Lcom/htc/android/worldclock/HtcStorageChecker;->checkStorageFull(Landroid/app/Activity;)V

    .line 337
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/worldclock/AlarmClock;->mStopped:Z

    .line 338
    invoke-direct {p0}, Lcom/htc/android/worldclock/AlarmClock;->checkAlarmChange()V

    .line 339
    return-void
.end method
