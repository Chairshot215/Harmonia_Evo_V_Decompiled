.class public final Lcom/android/internal/telephony/IccContract$IccPhonebook;
.super Ljava/lang/Object;
.source "IccContract.java"

# interfaces
.implements Lcom/android/internal/telephony/IccContract$IccPhonebookColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IccPhonebook"
.end annotation


# static fields
.field public static final COLUMN_EMAILS:I = 0x6

.field public static final COLUMN_HIDDEN:I = 0x2

.field public static final COLUMN_NAME:I = 0x0

.field public static final COLUMN_NAMES:[Ljava/lang/String; = null

.field public static final COLUMN_NUMBER:I = 0x1

.field public static final COLUMN_NUMBER1:I = 0x4

.field public static final COLUMN_NUMBER2:I = 0x5

.field public static final COLUMN_RECORD_NUMBER:I = 0x3

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/android/internal/telephony/IccContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "phonebook"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "recordNumber"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number1"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "number2"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
