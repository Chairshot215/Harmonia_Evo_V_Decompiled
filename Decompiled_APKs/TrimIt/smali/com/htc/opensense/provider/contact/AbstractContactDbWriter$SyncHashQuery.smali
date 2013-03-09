.class public interface abstract Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;
.super Ljava/lang/Object;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SyncHashQuery"
.end annotation


# static fields
.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_SOURCE_ID:I = 0x1

.field public static final COLUMN_SYNC_HASH:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "account_type=? AND account_name=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 694
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sync1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$SyncHashQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
