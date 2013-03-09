.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "GroupMembershipQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final GROUP_ID:I = 0x1

.field public static final GROUP_SYNC_ACCOUNT:I = 0x2

.field public static final GROUP_SYNC_ID:I = 0x3

.field public static final PERSON_ID:I = 0x0

.field public static final TABLE:Ljava/lang/String; = "groupmembership"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1228
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "group_sync_account"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "group_sync_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
