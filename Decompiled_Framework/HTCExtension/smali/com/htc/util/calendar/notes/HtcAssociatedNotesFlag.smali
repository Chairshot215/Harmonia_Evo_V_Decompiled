.class public interface abstract Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;
.super Ljava/lang/Object;
.source "HtcAssociatedNotesFlag.java"


# static fields
.field public static final ASSOCIATE_NOTE_FALSE:Ljava/lang/Long;

.field public static final ASSOCIATE_NOTE_TRUE:Ljava/lang/Long;

.field public static final ASSOCIATE_NOTE_UNKNOWN:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;->ASSOCIATE_NOTE_UNKNOWN:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;->ASSOCIATE_NOTE_FALSE:Ljava/lang/Long;

    new-instance v0, Ljava/lang/Long;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    sput-object v0, Lcom/htc/util/calendar/notes/HtcAssociatedNotesFlag;->ASSOCIATE_NOTE_TRUE:Ljava/lang/Long;

    return-void
.end method
