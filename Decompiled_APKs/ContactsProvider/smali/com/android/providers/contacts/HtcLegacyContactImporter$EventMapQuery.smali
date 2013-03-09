.class public interface abstract Lcom/android/providers/contacts/HtcLegacyContactImporter$EventMapQuery;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "EventMapQuery"
.end annotation


# static fields
.field public static final CHECK:I = 0x6

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final END_TIME:I = 0x5

.field public static final EVENT_ID:I = 0x3

.field public static final ID:I = 0x0

.field public static final PERSON:I = 0x2

.field public static final SOURCE:I = 0x7

.field public static final START_TIME:I = 0x4

.field public static final TABLE:Ljava/lang/String; = "events_map"

.field public static final TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 161
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "start_time"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "source"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$EventMapQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
