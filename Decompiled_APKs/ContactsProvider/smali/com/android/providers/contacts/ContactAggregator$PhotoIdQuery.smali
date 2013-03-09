.class interface abstract Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;
.super Ljava/lang/Object;
.source "ContactAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PhotoIdQuery"
.end annotation


# static fields
.field public static final ACCOUNT_TYPE:I = 0x0

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final DATA_ID:I = 0x1

.field public static final IS_SUPER_PRIMARY:I = 0x2

.field public static final PHOTO_FILE_ID:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2997
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data._id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "is_super_primary"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data14"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    return-void
.end method
