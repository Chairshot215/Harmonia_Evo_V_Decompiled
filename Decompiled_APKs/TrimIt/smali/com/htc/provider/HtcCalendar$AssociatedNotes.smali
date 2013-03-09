.class public final Lcom/htc/provider/HtcCalendar$AssociatedNotes;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssociatedNotes"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/provider/HtcCalendar$AssociatedNotes$EventsColumns;
    }
.end annotation


# static fields
.field public static final ALL_EVENTS_AT_TIME:Ljava/lang/String; = "AllEventsAtTime"

.field public static ALL_EVENTS_AT_TIME_CONTENT_URI:Landroid/net/Uri; = null

.field public static final ASSOCIATE_NOTES_AT_TIME:Ljava/lang/String; = "AssociatedNotesAtTime"

.field public static ASSOCIATE_NOTES_AT_TIME_CONTENT_URI:Landroid/net/Uri; = null

.field public static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field public static final NOT_ASSOCIATE_NOTES_AT_TIME:Ljava/lang/String; = "NotAssociatedNotesAtTime"

.field public static NOT_ASSOCIATE_NOTES_AT_TIME_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    sget-object v0, Lcom/htc/provider/HtcCalendar;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "AssociatedNotesAtTime"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->ASSOCIATE_NOTES_AT_TIME_CONTENT_URI:Landroid/net/Uri;

    .line 41
    sget-object v0, Lcom/htc/provider/HtcCalendar;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "NotAssociatedNotesAtTime"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->NOT_ASSOCIATE_NOTES_AT_TIME_CONTENT_URI:Landroid/net/Uri;

    .line 47
    sget-object v0, Lcom/htc/provider/HtcCalendar;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "AllEventsAtTime"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->ALL_EVENTS_AT_TIME_CONTENT_URI:Landroid/net/Uri;

    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "begine_time"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "is_all_day"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "is_associated_note"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/provider/HtcCalendar$AssociatedNotes;->EVENTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
