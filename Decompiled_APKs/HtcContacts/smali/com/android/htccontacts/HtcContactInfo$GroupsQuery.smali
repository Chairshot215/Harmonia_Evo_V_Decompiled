.class interface abstract Lcom/android/htccontacts/HtcContactInfo$GroupsQuery;
.super Ljava/lang/Object;
.source "HtcContactInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcContactInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "GroupsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final GroupIsReadOnly:I = 0x2

.field public static final TITLE:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "group_is_read_only"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcContactInfo$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
