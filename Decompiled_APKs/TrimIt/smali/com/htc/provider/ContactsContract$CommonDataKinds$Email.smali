.class public final Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;
.super Ljava/lang/Object;
.source "ContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Email"
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field public static final COLUMN_ADDRESS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_DISPLAY_NAME:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_ID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_PRIMARY:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_RAW_CONTACT_ID:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_TYPE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final SELECTION_CONTACT:Ljava/lang/String; = ""

.field private static final SELECTION_CONTACT_PRIMARY:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 736
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/provider/ContactsContract$CommonDataKinds$Email;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getEmailCursorAndLocateAtPrimary(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 1
    .parameter "resolver"
    .parameter "contactId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 785
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;->getEmailCursorAndLocateAtPrimary(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static queryContactEmailAddresses(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 1
    .parameter "resolver"
    .parameter "contactId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 770
    invoke-static {p0, p1, p2}, Lcom/htc/provider/HtcContactsContract$CommonDataKinds$Email;->queryContactEmailAddresses(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
