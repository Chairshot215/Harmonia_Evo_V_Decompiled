.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "CallsQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATE:I = 0x2

.field public static final DURATION:I = 0x3

.field public static final ID:I = 0x0

.field public static final NAME:I = 0x6

.field public static final NEW:I = 0x5

.field public static final NUMBER:I = 0x1

.field public static final NUMBER_LABEL:I = 0x8

.field public static final NUMBER_TYPE:I = 0x7

.field public static final TABLE:Ljava/lang/String; = "calls"

.field public static final TYPE:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1318
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "new"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "numbertype"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "numberlabel"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
