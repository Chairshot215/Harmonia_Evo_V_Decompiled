.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "DeletedPeopleQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final TABLE:Ljava/lang/String; = "_deleted_people"

.field public static final _SYNC_ACCOUNT:I = 0x1

.field public static final _SYNC_ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1388
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
