.class public interface abstract Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$DataQuery;
.super Ljava/lang/Object;
.source "AbstractContactDbWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/provider/contact/AbstractContactDbWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataQuery"
.end annotation


# static fields
.field public static final COLUMN_DATA1:I = 0x3

.field public static final COLUMN_DATA2:I = 0x4

.field public static final COLUMN_DATA3:I = 0x5

.field public static final COLUMN_DATA4:I = 0x6

.field public static final COLUMN_DISPLAY_NAME:I = 0x3

.field public static final COLUMN_EMAIL_ADDRESS:I = 0x3

.field public static final COLUMN_EMAIL_TYPE:I = 0x4

.field public static final COLUMN_FAMILY_NAME:I = 0x5

.field public static final COLUMN_GIVEN_NAME:I = 0x4

.field public static final COLUMN_ID:I = 0x0

.field public static final COLUMN_MIMETYPE:I = 0x2

.field public static final COLUMN_PHONE_NUMBER:I = 0x3

.field public static final COLUMN_PHONE_TYPE:I = 0x4

.field public static final COLUMN_SOURCE_ID:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "raw_contact_id=?"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sourceid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "data2"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data3"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "data4"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/opensense/provider/contact/AbstractContactDbWriter$DataQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
