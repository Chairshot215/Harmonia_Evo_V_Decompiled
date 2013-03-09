.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataDeleteQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONCRETE_COLUMNS:[Ljava/lang/String; = null

.field public static final DATA1:I = 0x4

.field public static final DATA2:I = 0x6

.field public static final IS_PRIMARY:I = 0x3

.field public static final IS_SUPER_PRIMARY:I = 0x5

.field public static final MIMETYPE:I = 0x1

.field public static final RAW_CONTACT_ID:I = 0x2

.field public static final TABLE:Ljava/lang/String; = "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data._id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "raw_contact_id"

    aput-object v1, v0, v5

    const-string v1, "is_primary"

    aput-object v1, v0, v6

    const-string v1, "data1"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
