.class public Lcom/android/browser/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final BROWSER_BOOKMARK_ADDED:I = 0x111d7

.field public static final BROWSER_PAGE_LOADED:I = 0x111d8

.field public static final BROWSER_TIMEONPAGE:I = 0x111d9


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeBrowserBookmarkAdded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "url"
    .parameter "where"

    .prologue
    .line 23
    const v0, 0x111d7

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 24
    return-void
.end method

.method public static writeBrowserPageLoaded(Ljava/lang/String;J)V
    .locals 4
    .parameter "url"
    .parameter "time"

    .prologue
    .line 27
    const v0, 0x111d8

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 28
    return-void
.end method

.method public static writeBrowserTimeonpage(Ljava/lang/String;J)V
    .locals 4
    .parameter "url"
    .parameter "time"

    .prologue
    .line 31
    const v0, 0x111d9

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 32
    return-void
.end method
