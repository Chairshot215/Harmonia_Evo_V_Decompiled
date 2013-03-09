.class public final Landroid/provider/HtcCalendarContract$CalendarEntity;
.super Ljava/lang/Object;
.source "HtcCalendarContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/HtcCalendarContract$SyncColumns;
.implements Landroid/provider/HtcCalendarContract$CalendarColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcCalendarContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CalendarEntity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/HtcCalendarContract$CalendarEntity$EntityIteratorImpl;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.calendar/calendar_entities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcCalendarContract$CalendarEntity;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .locals 1

    new-instance v0, Landroid/provider/HtcCalendarContract$CalendarEntity$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/HtcCalendarContract$CalendarEntity$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
