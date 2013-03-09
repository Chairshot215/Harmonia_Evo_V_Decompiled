.class public interface abstract Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncEventQuery;
.super Ljava/lang/Object;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncEventQuery"
.end annotation


# static fields
.field public static final COLUMN_DTSTART:I = 0x2

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_SYNC_ID:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "account_type=? AND account_name=?"

.field public static final SELECTION_BIRTHDAYS:Ljava/lang/String; = "account_type=? AND account_name=? AND _sync_id LIKE \'%-birthday\'"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 675
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncEventQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
