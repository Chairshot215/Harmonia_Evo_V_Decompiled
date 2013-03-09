.class public final Landroid/provider/Contacts$GroupsMemberCount;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupsMemberCount"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "name ASC"

.field public static final GROUP_ID:Ljava/lang/String; = "_id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_MEMBER_COUNT:Ljava/lang/String; = "count"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_NAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final GROUP_SYNC_ID:Ljava/lang/String; = "syncid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://contacts/GGroupList"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Contacts$GroupsMemberCount;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
