.class public final Lcom/futuredial/pim/Calendar$BusyBits;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Lcom/futuredial/pim/Calendar$BusyBitsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/futuredial/pim/Calendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BusyBits"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTERVALS_PER_DAY:I = 0x18

.field public static final MINUTES_PER_BUSY_INTERVAL:I = 0x3c

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 812
    invoke-static {v3}, Lcom/futuredial/pim/FDUri;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "busybits/when"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/futuredial/pim/Calendar$BusyBits;->CONTENT_URI:Landroid/net/Uri;

    .line 814
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "day"

    aput-object v2, v0, v1

    const-string v1, "busyBits"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "allDayCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/futuredial/pim/Calendar$BusyBits;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;II)Landroid/database/Cursor;
    .locals 8
    .parameter "cr"
    .parameter "startDay"
    .parameter "numDays"

    .prologue
    const/4 v3, 0x0

    .line 832
    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    .line 839
    :goto_0
    return-object v3

    .line 835
    :cond_0
    add-int v0, p1, p2

    add-int/lit8 v7, v0, -0x1

    .line 836
    .local v7, endDay:I
    sget-object v0, Lcom/futuredial/pim/Calendar$BusyBits;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 837
    .local v6, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p1

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 838
    int-to-long v0, v7

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 839
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/futuredial/pim/Calendar$BusyBits;->PROJECTION:[Ljava/lang/String;

    const-string v5, "day"

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0
.end method
