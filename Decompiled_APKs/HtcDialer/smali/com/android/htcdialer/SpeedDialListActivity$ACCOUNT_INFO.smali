.class final Lcom/android/htcdialer/SpeedDialListActivity$ACCOUNT_INFO;
.super Ljava/lang/Object;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ACCOUNT_INFO"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_ACCOUNT:I = 0x0

.field public static final WHERE:Ljava/lang/String; = "_id=%d"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ext_account_Type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/SpeedDialListActivity$ACCOUNT_INFO;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
