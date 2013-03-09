.class public final Landroid/provider/HtcUnionContact$Group;
.super Ljava/lang/Object;
.source "HtcUnionContact.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/HtcUnionContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Group"
.end annotation


# static fields
.field public static final GROUPS_NAME_ID_COLUMN_INDEX:I = 0x0

.field public static final GROUPS_NAME_NAME_COLUMN_INDEX:I = 0x1

.field public static final GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

.field public static final GROUP_NAME_PROJECTION:[Ljava/lang/String;

.field public static final QUERY_GROUPS_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://contacts/groups"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/HtcUnionContact$Group;->QUERY_GROUPS_URI:Landroid/net/Uri;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "group_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/HtcUnionContact$Group;->GROUP_CONTAINS_PERSON_PROJECTION:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/HtcUnionContact$Group;->GROUP_NAME_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
