.class public Lcom/android/providers/calendar/HtcCalendarProvider;
.super Lcom/android/providers/calendar/CalendarProvider2;
.source "HtcCalendarProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;
    }
.end annotation


# static fields
.field private static final ACTION_CALENDARS_PICKER_CHANGED:Ljava/lang/String; = "action.calendars.picker.changed"

.field private static final ACTION_EVENT_CHANGED:Ljava/lang/String; = "com.htc.calendar.event_changed"

.field public static final HTC_CAL_EXTEND_BASE:I = 0x1f4

.field public static final HTC_CAL_EXTEND_EAS_BASE:I = 0x258

.field public static final HTC_CAL_EXTEND_NOTE_BASE:I = 0x320

.field public static final HTC_CAL_EXTEND_PCSC_BASE:I = 0x2bc

.field public static final HTC_EXTEND_SEGMENT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HtcCalendarProvider"


# instance fields
.field private implList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/calendar/AbsHtcFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterImpl_app:Lcom/android/providers/calendar/HtcFilterImpl_app;

.field private mFilterImpl_eas:Lcom/android/providers/calendar/HtcFilterImpl_eas;

.field private mFilterImpl_google:Lcom/android/providers/calendar/HtcFilterImpl_google;

.field private mFilterImpl_note:Lcom/android/providers/calendar/HtcFilterImpl_note;

.field private mFilterImpl_pcsc:Lcom/android/providers/calendar/HtcFilterImpl_pcsc;

.field private mHtcIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/providers/calendar/CalendarProvider2;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/android/providers/calendar/HtcCalendarProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/calendar/HtcCalendarProvider$1;-><init>(Lcom/android/providers/calendar/HtcCalendarProvider;)V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    .line 338
    return-void
.end method

.method private htcInit()V
    .locals 3

    .prologue
    .line 68
    const-string v1, "HtcCalendarProvider"

    const-string v2, ">>>"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "HtcCalendarProvider"

    const-string v2, ">>>"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "HtcCalendarProvider"

    const-string v2, "HTC-CALENDAR-PROVIDER-INIT"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "HtcCalendarProvider"

    const-string v2, "<<<"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "HtcCalendarProvider"

    const-string v2, "<<<"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "action.calendars.picker.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    new-instance v1, Lcom/android/providers/calendar/HtcFilterImpl_google;

    invoke-direct {v1}, Lcom/android/providers/calendar/HtcFilterImpl_google;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_google:Lcom/android/providers/calendar/HtcFilterImpl_google;

    .line 80
    new-instance v1, Lcom/android/providers/calendar/HtcFilterImpl_app;

    invoke-direct {v1}, Lcom/android/providers/calendar/HtcFilterImpl_app;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_app:Lcom/android/providers/calendar/HtcFilterImpl_app;

    .line 81
    new-instance v1, Lcom/android/providers/calendar/HtcFilterImpl_eas;

    invoke-direct {v1}, Lcom/android/providers/calendar/HtcFilterImpl_eas;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_eas:Lcom/android/providers/calendar/HtcFilterImpl_eas;

    .line 82
    new-instance v1, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;

    invoke-direct {v1}, Lcom/android/providers/calendar/HtcFilterImpl_pcsc;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_pcsc:Lcom/android/providers/calendar/HtcFilterImpl_pcsc;

    .line 83
    new-instance v1, Lcom/android/providers/calendar/HtcFilterImpl_note;

    invoke-direct {v1}, Lcom/android/providers/calendar/HtcFilterImpl_note;-><init>()V

    iput-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_note:Lcom/android/providers/calendar/HtcFilterImpl_note;

    .line 85
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_google:Lcom/android/providers/calendar/HtcFilterImpl_google;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_app:Lcom/android/providers/calendar/HtcFilterImpl_app;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_eas:Lcom/android/providers/calendar/HtcFilterImpl_eas;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_pcsc:Lcom/android/providers/calendar/HtcFilterImpl_pcsc;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->implList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mFilterImpl_note:Lcom/android/providers/calendar/HtcFilterImpl_note;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method


# virtual methods
.method protected deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 160
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;

    move-result-object v0

    .line 161
    .local v0, target:Lcom/android/providers/calendar/AbsHtcFilter;
    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/providers/calendar/AbsHtcFilter;->handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 169
    :goto_0
    return v1

    .line 164
    :catch_0
    move-exception v1

    .line 169
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/providers/calendar/CalendarProvider2;->deleteInTransaction(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 197
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;

    move-result-object v0

    .line 199
    .local v0, target:Lcom/android/providers/calendar/AbsHtcFilter;
    if-eqz v0, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/providers/calendar/AbsHtcFilter;->handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v1

    .line 206
    :cond_0
    invoke-super {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 3
    .parameter "uri"
    .parameter "values"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 136
    invoke-virtual {p0, p2}, Lcom/android/providers/calendar/HtcCalendarProvider;->appendPlaintextValue(Landroid/content/ContentValues;)V

    .line 138
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;

    move-result-object v1

    .line 139
    .local v1, target:Lcom/android/providers/calendar/AbsHtcFilter;
    const/4 v0, 0x0

    .line 140
    .local v0, resultUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 142
    :try_start_0
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/calendar/AbsHtcFilter;->handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 151
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v2

    .line 151
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/calendar/CalendarProvider2;->insertInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/providers/calendar/CalendarProvider2;->onCreate()Z

    move-result v0

    .line 95
    .local v0, createResult:Z
    if-nez v0, :cond_0

    .line 96
    const-string v1, "HtcCalendarProvider"

    const-string v2, "CalendarProvider2 create fail!!"

    invoke-static {v1, v2}, Lcom/android/providers/calendar/debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    .line 101
    .end local v0           #createResult:Z
    :goto_0
    return v0

    .line 99
    .restart local v0       #createResult:Z
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/calendar/HtcCalendarProvider;->htcInit()V

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2;->mDbHelper:Lcom/android/providers/calendar/CalendarDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/calendar/CalendarDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 110
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 111
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v8, 0x0

    .line 112
    .local v8, groupBy:Ljava/lang/String;
    const/4 v9, 0x0

    .line 114
    .local v9, limit:Ljava/lang/String;
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;

    move-result-object v0

    .line 115
    .local v0, target:Lcom/android/providers/calendar/AbsHtcFilter;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 117
    :try_start_0
    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/calendar/AbsHtcFilter;->handle_Query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 130
    :goto_0
    return-object v1

    .line 126
    :catch_0
    move-exception v1

    .line 130
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider2;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method protected sendUpdateNotification(Z)V
    .locals 0
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2;->sendUpdateNotification(Z)V

    .line 217
    return-void
.end method

.method protected updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 6
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "callerIsSyncAdapter"

    .prologue
    .line 179
    invoke-virtual {p0, p2}, Lcom/android/providers/calendar/HtcCalendarProvider;->appendPlaintextValue(Landroid/content/ContentValues;)V

    .line 181
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getMatchTarget(Landroid/net/Uri;)Lcom/android/providers/calendar/AbsHtcFilter;

    move-result-object v0

    .line 182
    .local v0, target:Lcom/android/providers/calendar/AbsHtcFilter;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 184
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/calendar/AbsHtcFilter;->handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 191
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v1

    .line 191
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/calendar/CalendarProvider2;->updateInTransaction(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result v1

    goto :goto_0
.end method

.method protected updateTimezoneDependentFields()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/HtcCalendarProvider;Lcom/android/providers/calendar/HtcCalendarProvider$1;)V

    iput-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    .line 333
    iget-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    invoke-virtual {v0}, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->start()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/android/providers/calendar/HtcCalendarProvider;->mHtcTimezoneCheckerThread:Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;

    invoke-virtual {v0}, Lcom/android/providers/calendar/HtcCalendarProvider$HtcTimezoneCheckerThread;->requestTimezoneCheck()V

    .line 336
    return-void
.end method

.method protected verifyAccounts()V
    .locals 5

    .prologue
    .line 311
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/calendar/HtcCalendarProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 312
    .local v0, am:Landroid/accounts/AccountManager;
    if-nez v0, :cond_0

    .line 313
    const-string v2, "HtcCalendarProvider"

    const-string v3, "AccountManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    .end local v0           #am:Landroid/accounts/AccountManager;
    :goto_0
    return-void

    .line 316
    .restart local v0       #am:Landroid/accounts/AccountManager;
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 317
    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/providers/calendar/HtcCalendarProvider;->onAccountsUpdated([Landroid/accounts/Account;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 318
    .end local v0           #am:Landroid/accounts/AccountManager;
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcCalendarProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "verifyAccounts exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
