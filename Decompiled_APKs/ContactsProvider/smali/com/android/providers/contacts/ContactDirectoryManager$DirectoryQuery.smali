.class final Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;
.super Ljava/lang/Object;
.source "ContactDirectoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactDirectoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0x0

.field public static final ACCOUNT_TYPE:I = 0x1

.field public static final DISPLAY_NAME:I = 0x2

.field public static final EXPORT_SUPPORT:I = 0x4

.field public static final PHOTO_SUPPORT:I = 0x6

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SHORTCUT_SUPPORT:I = 0x5

.field public static final TYPE_RESOURCE_ID:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "accountName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "accountType"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exportSupport"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "shortcutSupport"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photoSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactDirectoryManager$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
