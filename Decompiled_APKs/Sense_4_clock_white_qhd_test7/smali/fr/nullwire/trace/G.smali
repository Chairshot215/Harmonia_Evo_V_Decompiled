.class public Lfr/nullwire/trace/G;
.super Ljava/lang/Object;


# static fields
.field public static ANDROID_VERSION:Ljava/lang/String;

.field public static APP_PACKAGE:Ljava/lang/String;

.field public static APP_VERSION:Ljava/lang/String;

.field public static FILES_PATH:Ljava/lang/String;

.field public static PHONE_MODEL:Ljava/lang/String;

.field public static TraceVersion:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v1, "unknown"

    const/4 v0, 0x0

    sput-object v0, Lfr/nullwire/trace/G;->FILES_PATH:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lfr/nullwire/trace/G;->APP_VERSION:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lfr/nullwire/trace/G;->APP_PACKAGE:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lfr/nullwire/trace/G;->PHONE_MODEL:Ljava/lang/String;

    const-string v0, "unknown"

    sput-object v1, Lfr/nullwire/trace/G;->ANDROID_VERSION:Ljava/lang/String;

    const-string v0, "http://trace.nullwire.com/collect/"

    sput-object v0, Lfr/nullwire/trace/G;->URL:Ljava/lang/String;

    const-string v0, "0.3.0"

    sput-object v0, Lfr/nullwire/trace/G;->TraceVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
