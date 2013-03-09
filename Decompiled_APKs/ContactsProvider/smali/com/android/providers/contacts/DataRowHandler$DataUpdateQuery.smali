.class public interface abstract Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/DataRowHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataUpdateQuery"
.end annotation


# static fields
.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final MIMETYPE:I = 0x2

.field public static final RAW_CONTACT_ID:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "raw_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
