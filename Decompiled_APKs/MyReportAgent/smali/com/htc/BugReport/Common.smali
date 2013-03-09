.class public Lcom/htc/BugReport/Common;
.super Ljava/lang/Object;
.source "Common.java"


# static fields
.field public static SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter; = null

.field public static final STR_DATA_PATH:Ljava/lang/String; = "/data"

.field public static final STR_KEY_ADMIN_AREA:Ljava/lang/String; = "AdminArea"

.field public static final STR_KEY_LOCALITY:Ljava/lang/String; = "Locality"

.field public static final STR_KEY_SUBADMIN_AREA:Ljava/lang/String; = "SubAdminArea"

.field public static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/htc/BugReport/Common$1;

    invoke-direct {v0}, Lcom/htc/BugReport/Common$1;-><init>()V

    sput-object v0, Lcom/htc/BugReport/Common;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
