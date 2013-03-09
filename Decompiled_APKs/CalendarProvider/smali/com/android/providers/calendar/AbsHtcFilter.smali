.class public abstract Lcom/android/providers/calendar/AbsHtcFilter;
.super Ljava/lang/Object;
.source "AbsHtcFilter.java"


# instance fields
.field protected mProvider:Lcom/android/providers/calendar/CalendarProvider2;

.field protected mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mUriMatcher:Landroid/content/UriMatcher;

    .line 12
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->getInstance()Lcom/android/providers/calendar/CalendarProvider2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/calendar/AbsHtcFilter;->mProvider:Lcom/android/providers/calendar/CalendarProvider2;

    .line 20
    invoke-virtual {p0}, Lcom/android/providers/calendar/AbsHtcFilter;->acquireAdd()V

    .line 21
    return-void
.end method


# virtual methods
.method protected acquireAdd()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/android/providers/calendar/HtcProviderImplContainer;->getInstance()Lcom/android/providers/calendar/HtcProviderImplContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/providers/calendar/HtcProviderImplContainer;->add(Lcom/android/providers/calendar/AbsHtcFilter;)V

    .line 17
    return-void
.end method

.method abstract handle_Delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method abstract handle_Insert(Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method abstract handle_Query(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method abstract handle_Update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method abstract handle_getType(Landroid/net/Uri;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method abstract initMatcher()V
.end method
