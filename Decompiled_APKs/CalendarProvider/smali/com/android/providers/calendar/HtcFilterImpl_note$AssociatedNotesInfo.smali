.class Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;
.super Ljava/lang/Object;
.source "HtcFilterImpl_note.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/HtcFilterImpl_note;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssociatedNotesInfo"
.end annotation


# instance fields
.field public begin_time:J

.field public end_time:J

.field public event_id:J

.field final synthetic this$0:Lcom/android/providers/calendar/HtcFilterImpl_note;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/HtcFilterImpl_note;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;->this$0:Lcom/android/providers/calendar/HtcFilterImpl_note;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/HtcFilterImpl_note;Lcom/android/providers/calendar/HtcFilterImpl_note$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/HtcFilterImpl_note$AssociatedNotesInfo;-><init>(Lcom/android/providers/calendar/HtcFilterImpl_note;)V

    return-void
.end method
