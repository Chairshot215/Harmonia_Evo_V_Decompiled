.class public final enum Lcom/redbend/vdm/PLStorage$AccessMode;
.super Ljava/lang/Enum;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/PLStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/PLStorage$AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/PLStorage$AccessMode;

.field public static final enum READ:Lcom/redbend/vdm/PLStorage$AccessMode;

.field public static final enum WRITE:Lcom/redbend/vdm/PLStorage$AccessMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/redbend/vdm/PLStorage$AccessMode;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/PLStorage$AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/PLStorage$AccessMode;->READ:Lcom/redbend/vdm/PLStorage$AccessMode;

    .line 23
    new-instance v0, Lcom/redbend/vdm/PLStorage$AccessMode;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/PLStorage$AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/PLStorage$AccessMode;->WRITE:Lcom/redbend/vdm/PLStorage$AccessMode;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/redbend/vdm/PLStorage$AccessMode;

    sget-object v1, Lcom/redbend/vdm/PLStorage$AccessMode;->READ:Lcom/redbend/vdm/PLStorage$AccessMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/PLStorage$AccessMode;->WRITE:Lcom/redbend/vdm/PLStorage$AccessMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/redbend/vdm/PLStorage$AccessMode;->$VALUES:[Lcom/redbend/vdm/PLStorage$AccessMode;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/PLStorage$AccessMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/redbend/vdm/PLStorage$AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/PLStorage$AccessMode;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/PLStorage$AccessMode;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/redbend/vdm/PLStorage$AccessMode;->$VALUES:[Lcom/redbend/vdm/PLStorage$AccessMode;

    invoke-virtual {v0}, [Lcom/redbend/vdm/PLStorage$AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/PLStorage$AccessMode;

    return-object v0
.end method
