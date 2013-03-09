.class public final Lcom/futuredial/pim/Calendar$Events;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/futuredial/pim/BaseColumns;
.implements Lcom/futuredial/pim/Calendar$EventsColumns;
.implements Lcom/futuredial/pim/Calendar$CalendarsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Events"
.end annotation


# static fields
.field private static final ATTENDEES_COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = ""

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;

.field private static final FETCH_ENTRY_COLUMNS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 598
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v2

    const-string v1, "_sync_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/futuredial/pim/Calendar$Events;->FETCH_ENTRY_COLUMNS:[Ljava/lang/String;

    .line 602
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "attendeeType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/futuredial/pim/Calendar$Events;->ATTENDEES_COLUMNS:[Ljava/lang/String;

    .line 635
    invoke-static {v3}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "events"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 638
    invoke-static {v3}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "deleted_events"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$Events;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 612
    sget-object v1, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, ""

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 617
    sget-object v1, Lcom/futuredial/pim/Calendar$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, ""

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
