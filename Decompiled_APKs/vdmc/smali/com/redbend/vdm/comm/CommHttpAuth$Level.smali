.class public final enum Lcom/redbend/vdm/comm/CommHttpAuth$Level;
.super Ljava/lang/Enum;
.source "CommHttpAuth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/comm/CommHttpAuth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/comm/CommHttpAuth$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/comm/CommHttpAuth$Level;

.field public static final enum BASIC:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

.field public static final enum DIGEST:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

.field public static final enum NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 19
    new-instance v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    const-string v1, "BASIC"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->BASIC:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 21
    new-instance v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    const-string v1, "DIGEST"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->DIGEST:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    sget-object v1, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->BASIC:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->DIGEST:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->$VALUES:[Lcom/redbend/vdm/comm/CommHttpAuth$Level;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static fromInt(I)Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    .locals 5
    .parameter "i"

    .prologue
    .line 24
    invoke-static {}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->values()[Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 25
    .local v2, l:Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    invoke-virtual {v2}, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 29
    .end local v2           #l:Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    :goto_1
    return-object v2

    .line 24
    .restart local v2       #l:Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    .end local v2           #l:Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    :cond_1
    sget-object v2, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->NONE:Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/comm/CommHttpAuth$Level;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/redbend/vdm/comm/CommHttpAuth$Level;->$VALUES:[Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    invoke-virtual {v0}, [Lcom/redbend/vdm/comm/CommHttpAuth$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/comm/CommHttpAuth$Level;

    return-object v0
.end method
