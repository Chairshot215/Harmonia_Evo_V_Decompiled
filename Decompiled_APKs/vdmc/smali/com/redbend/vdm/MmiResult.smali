.class public final enum Lcom/redbend/vdm/MmiResult;
.super Ljava/lang/Enum;
.source "MmiResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/MmiResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/MmiResult;

.field public static final enum ERROR:Lcom/redbend/vdm/MmiResult;

.field public static final enum OK:Lcom/redbend/vdm/MmiResult;

.field public static final enum TEXT_TOO_LONG:Lcom/redbend/vdm/MmiResult;

.field public static final enum TOO_MANY_OPTIONS:Lcom/redbend/vdm/MmiResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/redbend/vdm/MmiResult;

    const-string v1, "OK"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/MmiResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    .line 15
    new-instance v0, Lcom/redbend/vdm/MmiResult;

    const-string v1, "TEXT_TOO_LONG"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/MmiResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiResult;->TEXT_TOO_LONG:Lcom/redbend/vdm/MmiResult;

    .line 17
    new-instance v0, Lcom/redbend/vdm/MmiResult;

    const-string v1, "TOO_MANY_OPTIONS"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/MmiResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiResult;->TOO_MANY_OPTIONS:Lcom/redbend/vdm/MmiResult;

    .line 19
    new-instance v0, Lcom/redbend/vdm/MmiResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v5}, Lcom/redbend/vdm/MmiResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/MmiResult;->ERROR:Lcom/redbend/vdm/MmiResult;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/redbend/vdm/MmiResult;

    sget-object v1, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/MmiResult;->TEXT_TOO_LONG:Lcom/redbend/vdm/MmiResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/MmiResult;->TOO_MANY_OPTIONS:Lcom/redbend/vdm/MmiResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/MmiResult;->ERROR:Lcom/redbend/vdm/MmiResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/redbend/vdm/MmiResult;->$VALUES:[Lcom/redbend/vdm/MmiResult;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/MmiResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 11
    const-class v0, Lcom/redbend/vdm/MmiResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/MmiResult;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/MmiResult;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/redbend/vdm/MmiResult;->$VALUES:[Lcom/redbend/vdm/MmiResult;

    invoke-virtual {v0}, [Lcom/redbend/vdm/MmiResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/MmiResult;

    return-object v0
.end method
