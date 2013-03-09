.class public final enum Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
.super Ljava/lang/Enum;
.source "CommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/CommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapCoverage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

.field public static final enum MAP_OFFLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

.field public static final enum MAP_ONLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

.field public static final enum MAP_TILESONLY:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

.field public static final enum MAP_UNKNOWN:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 247
    new-instance v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    const-string v1, "MAP_OFFLINE"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_OFFLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    .line 251
    new-instance v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    const-string v1, "MAP_TILESONLY"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_TILESONLY:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    .line 255
    new-instance v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    const-string v1, "MAP_ONLINE"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_ONLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    .line 259
    new-instance v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    const-string v1, "MAP_UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_UNKNOWN:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    .line 242
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    sget-object v1, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_OFFLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_TILESONLY:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_ONLINE:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->MAP_UNKNOWN:Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->$VALUES:[Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
    .locals 1
    .parameter "name"

    .prologue
    .line 242
    const-class v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->$VALUES:[Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/CommonUtil$MapCoverage;

    return-object v0
.end method
