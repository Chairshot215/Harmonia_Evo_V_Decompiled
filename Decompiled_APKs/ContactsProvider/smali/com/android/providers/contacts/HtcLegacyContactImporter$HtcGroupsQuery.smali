.class public interface abstract Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcGroupsQuery;
.super Ljava/lang/Object;
.source "HtcLegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/HtcLegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "HtcGroupsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final ID:I = 0x0

.field public static final NAME:I = 0x1

.field public static final NOTES:I = 0x2

.field public static final PHOTO:I = 0x8

.field public static final SHOULD_SYNC:I = 0x3

.field public static final SYSTEM_ID:I = 0x4

.field public static final TABLE:Ljava/lang/String; = "groups"

.field public static final _SYNC_ACCOUNT:I = 0x5

.field public static final _SYNC_DIRTY:I = 0x7

.field public static final _SYNC_ID:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 111
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "notes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_sync_dirty"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/HtcLegacyContactImporter$HtcGroupsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
