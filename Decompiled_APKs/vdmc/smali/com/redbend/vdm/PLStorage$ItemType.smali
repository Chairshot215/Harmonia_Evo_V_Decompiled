.class public final enum Lcom/redbend/vdm/PLStorage$ItemType;
.super Ljava/lang/Enum;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/PLStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/PLStorage$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/PLStorage$ItemType;

.field public static final enum DLRESUME:Lcom/redbend/vdm/PLStorage$ItemType;

.field public static final enum DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

.field public static final enum RESERVED:Lcom/redbend/vdm/PLStorage$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/redbend/vdm/PLStorage$ItemType;

    const-string v1, "DMTREE"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    .line 36
    new-instance v0, Lcom/redbend/vdm/PLStorage$ItemType;

    const-string v1, "RESERVED"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/PLStorage$ItemType;->RESERVED:Lcom/redbend/vdm/PLStorage$ItemType;

    .line 39
    new-instance v0, Lcom/redbend/vdm/PLStorage$ItemType;

    const-string v1, "DLRESUME"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/PLStorage$ItemType;->DLRESUME:Lcom/redbend/vdm/PLStorage$ItemType;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/PLStorage$ItemType;

    sget-object v1, Lcom/redbend/vdm/PLStorage$ItemType;->DMTREE:Lcom/redbend/vdm/PLStorage$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/PLStorage$ItemType;->RESERVED:Lcom/redbend/vdm/PLStorage$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/PLStorage$ItemType;->DLRESUME:Lcom/redbend/vdm/PLStorage$ItemType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/PLStorage$ItemType;->$VALUES:[Lcom/redbend/vdm/PLStorage$ItemType;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/PLStorage$ItemType;
    .locals 1
    .parameter "name"

    .prologue
    .line 30
    const-class v0, Lcom/redbend/vdm/PLStorage$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/PLStorage$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/PLStorage$ItemType;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/redbend/vdm/PLStorage$ItemType;->$VALUES:[Lcom/redbend/vdm/PLStorage$ItemType;

    invoke-virtual {v0}, [Lcom/redbend/vdm/PLStorage$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/PLStorage$ItemType;

    return-object v0
.end method
