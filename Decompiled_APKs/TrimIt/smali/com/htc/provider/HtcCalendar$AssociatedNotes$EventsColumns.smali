.class public final Lcom/htc/provider/HtcCalendar$AssociatedNotes$EventsColumns;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcCalendar$AssociatedNotes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventsColumns"
.end annotation


# static fields
.field public static final BEGIN_TIME:Ljava/lang/String; = "begine_time"

.field public static final CALENDAR_ID:Ljava/lang/String; = "calendar_id"

.field public static final END_TIME:Ljava/lang/String; = "end_time"

.field public static final EVENT_URI:Ljava/lang/String; = "event_uri"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IS_ALL_DAY:Ljava/lang/String; = "is_all_day"

.field public static final IS_ASSOCIATED_NOTE:Ljava/lang/String; = "is_associated_note"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
