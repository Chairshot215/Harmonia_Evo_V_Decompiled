.class interface abstract Lcom/android/htccontacts/HtcViewContactDetailActivity$StatusQuery;
.super Ljava/lang/Object;
.source "HtcViewContactDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcViewContactDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "StatusQuery"
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String;

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status_res_package"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "status_icon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "status_label"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "status_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "mode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/HtcViewContactDetailActivity$StatusQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
