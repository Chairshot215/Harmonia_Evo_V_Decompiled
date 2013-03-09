.class public final enum Lcom/htc/cscore/util/CSUtil$syncFrequency;
.super Ljava/lang/Enum;
.source "CSUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/util/CSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "syncFrequency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/cscore/util/CSUtil$syncFrequency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_day:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_six_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_three_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_twelve_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum every_two_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum manual:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum push:Lcom/htc/cscore/util/CSUtil$syncFrequency;

.field public static final enum unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "manual"

    invoke-direct {v0, v1, v3}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->manual:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "push"

    invoke-direct {v0, v1, v4}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->push:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_hour"

    invoke-direct {v0, v1, v5}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_two_hours"

    invoke-direct {v0, v1, v6}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_two_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_three_hours"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_three_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_six_hours"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_six_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_twelve_hour"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_twelve_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "every_day"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_day:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    new-instance v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const-string v1, "unknown"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/htc/cscore/util/CSUtil$syncFrequency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/htc/cscore/util/CSUtil$syncFrequency;

    sget-object v1, Lcom/htc/cscore/util/CSUtil$syncFrequency;->manual:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/cscore/util/CSUtil$syncFrequency;->push:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_two_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_three_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_six_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_twelve_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_day:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->$VALUES:[Lcom/htc/cscore/util/CSUtil$syncFrequency;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/cscore/util/CSUtil$syncFrequency;
    .locals 1

    const-class v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;

    return-object v0
.end method

.method public static values()[Lcom/htc/cscore/util/CSUtil$syncFrequency;
    .locals 1

    sget-object v0, Lcom/htc/cscore/util/CSUtil$syncFrequency;->$VALUES:[Lcom/htc/cscore/util/CSUtil$syncFrequency;

    invoke-virtual {v0}, [Lcom/htc/cscore/util/CSUtil$syncFrequency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/cscore/util/CSUtil$syncFrequency;

    return-object v0
.end method
