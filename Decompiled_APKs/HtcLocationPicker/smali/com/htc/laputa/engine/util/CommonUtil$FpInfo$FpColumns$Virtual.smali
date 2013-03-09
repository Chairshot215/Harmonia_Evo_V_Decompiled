.class public final Lcom/htc/laputa/engine/util/CommonUtil$FpInfo$FpColumns$Virtual;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/CommonUtil$FpInfo$FpColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Virtual"
.end annotation


# static fields
.field public static final ARRAY:[Ljava/lang/String; = null

.field public static final AUDIO_PATH:Ljava/lang/String; = "audio_path"

.field public static final DATA_SOURCE:Ljava/lang/String; = "datasource"

.field public static final LATITUDE_DOUBLE:Ljava/lang/String; = "latitude_double"

.field public static final LONGITUDE_DOUBLE:Ljava/lang/String; = "longitude_double"

.field public static final PIC_BYTES:Ljava/lang/String; = "pic_bytes"

.field public static final PIC_PATH:Ljava/lang/String; = "pic_path"

.field public static final TAG:Ljava/lang/String; = "tag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 430
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "latitude_double"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "longitude_double"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pic_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pic_path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "audio_path"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datasource"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tag"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$FpInfo$FpColumns$Virtual;->ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 412
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
