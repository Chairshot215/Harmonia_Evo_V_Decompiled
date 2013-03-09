.class final Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;
.super Ljava/lang/Object;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmailQuery"
.end annotation


# static fields
.field public static final ADDRESS:I = 0x2

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final ID:I = 0x0

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final SELECTION:Ljava/lang/String; = "mimetype_id=? AND data1 NOT NULL"

.field public static final TABLE:Ljava/lang/String; = "data"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 3256
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3250
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
