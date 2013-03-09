.class public final Landroid/provider/HtcUnionContact$ContactMethodInfo;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactMethodInfo"
.end annotation


# static fields
.field public static final AUX_DATA_COLUMN:I = 0x4

.field public static final DATA_COLUMN:I = 0x2

.field public static final ID_COLUMN:I = 0x0

.field public static final ISPROMARY_COLUMN:I = 0x5

.field public static final KIND_COLUMN:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final TYPE_COLUMN:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "kind"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "aux_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "isprimary"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/HtcUnionContact$ContactMethodInfo;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
