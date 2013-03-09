.class public interface abstract Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/LegacyContactImporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "PhonesQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final ISPRIMARY:I = 0x4

.field public static final LABEL:I = 0x3

.field public static final NUMBER:I = 0x2

.field public static final PERSON:I = 0x0

.field public static final TABLE:Ljava/lang/String; = "phones"

.field public static final TYPE:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1010
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "person"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
