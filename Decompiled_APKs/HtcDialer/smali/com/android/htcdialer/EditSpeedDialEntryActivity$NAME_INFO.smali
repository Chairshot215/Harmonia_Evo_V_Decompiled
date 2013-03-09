.class final Lcom/android/htcdialer/EditSpeedDialEntryActivity$NAME_INFO;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NAME_INFO"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_NAME:I = 0x0

.field public static final COLUMN_SOURCE_ID:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$NAME_INFO;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
