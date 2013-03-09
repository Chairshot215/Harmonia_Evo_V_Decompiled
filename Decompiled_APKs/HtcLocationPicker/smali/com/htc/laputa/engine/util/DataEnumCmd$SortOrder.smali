.class public final enum Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;
.super Ljava/lang/Enum;
.source "DataEnumCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/laputa/engine/util/DataEnumCmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SortOrder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

.field public static final enum CREATETIME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

.field public static final enum DISTANCE:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

.field public static final enum NAME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->NAME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    new-instance v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    const-string v1, "DISTANCE"

    invoke-direct {v0, v1, v3}, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->DISTANCE:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    new-instance v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    const-string v1, "CREATETIME"

    invoke-direct {v0, v1, v4}, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->CREATETIME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    sget-object v1, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->NAME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->DISTANCE:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->CREATETIME:Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->$VALUES:[Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;
    .locals 1
    .parameter "name"

    .prologue
    .line 29
    const-class v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    return-object v0
.end method

.method public static values()[Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->$VALUES:[Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    invoke-virtual {v0}, [Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/laputa/engine/util/DataEnumCmd$SortOrder;

    return-object v0
.end method
