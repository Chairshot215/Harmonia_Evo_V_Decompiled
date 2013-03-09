.class Lcom/android/providers/calendar/HtcFilterImpl_note$1;
.super Ljava/lang/Object;
.source "HtcFilterImpl_note.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/calendar/HtcFilterImpl_note;->buildAllEventsAtTimeForNotes(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;IZ)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/HtcFilterImpl_note;


# direct methods
.method constructor <init>(Lcom/android/providers/calendar/HtcFilterImpl_note;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/providers/calendar/HtcFilterImpl_note$1;->this$0:Lcom/android/providers/calendar/HtcFilterImpl_note;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 399
    check-cast p1, [Ljava/lang/Object;

    .end local p1
    check-cast p2, [Ljava/lang/Object;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/calendar/HtcFilterImpl_note$1;->compare([Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public compare([Ljava/lang/Object;[Ljava/lang/Object;)I
    .locals 8
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x7

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 401
    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/Long;

    .line 402
    .local v0, valA:Ljava/lang/Long;
    aget-object v1, p2, v4

    check-cast v1, Ljava/lang/Long;

    .line 404
    .local v1, valB:Ljava/lang/Long;
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    .line 409
    :cond_0
    :goto_0
    return v2

    .line 406
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 407
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v2, v3

    goto :goto_0

    .line 409
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0
.end method
