.class final Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x2

.field public static final ACCOUNT_TYPE:I = 0x3

.field public static final AUTHORITY:I = 0x1

.field public static final COLUMNS:[Ljava/lang/String;

.field public static final DIRECTORY_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 6652
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "authority"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "accountType"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$DirectoryQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6651
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
