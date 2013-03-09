.class final Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;
.super Ljava/lang/Object;
.source "ContactsProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AddressBookIndexQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_COUNT:I = 0x2

.field public static final COLUMN_LETTER:I = 0x0

.field public static final COLUMN_TITLE:I = 0x1

.field public static final COUNT:Ljava/lang/String; = "count"

.field public static final LETTER:Ljava/lang/String; = "letter"

.field public static final ORDER_BY:Ljava/lang/String; = "letter COLLATE PHONEBOOK"

.field public static final SECTION_HEADING:Ljava/lang/String; = "SUBSTR(%1$s,1,1)"

.field public static final TITLE:Ljava/lang/String; = "title"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 7884
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "letter"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactsProvider2$AddressBookIndexQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7879
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
