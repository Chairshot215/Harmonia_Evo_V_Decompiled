.class public final enum Lcom/htc/sunny2/common/CacheItem$IOTYPE;
.super Ljava/lang/Enum;
.source "CacheItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/common/CacheItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IOTYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/sunny2/common/CacheItem$IOTYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public static final enum PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public static final enum PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

.field public static final enum REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const-string v1, "PUSH"

    invoke-direct {v0, v1, v2}, Lcom/htc/sunny2/common/CacheItem$IOTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    new-instance v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const-string v1, "PULL"

    invoke-direct {v0, v1, v3}, Lcom/htc/sunny2/common/CacheItem$IOTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    new-instance v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v4}, Lcom/htc/sunny2/common/CacheItem$IOTYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PUSH:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->PULL:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->REMOVE:Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->$VALUES:[Lcom/htc/sunny2/common/CacheItem$IOTYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/htc/sunny2/common/CacheItem$IOTYPE;
    .locals 1

    const-class v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    return-object v0
.end method

.method public static values()[Lcom/htc/sunny2/common/CacheItem$IOTYPE;
    .locals 1

    sget-object v0, Lcom/htc/sunny2/common/CacheItem$IOTYPE;->$VALUES:[Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    invoke-virtual {v0}, [Lcom/htc/sunny2/common/CacheItem$IOTYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/sunny2/common/CacheItem$IOTYPE;

    return-object v0
.end method
