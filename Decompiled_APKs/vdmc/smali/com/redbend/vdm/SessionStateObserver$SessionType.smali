.class public final enum Lcom/redbend/vdm/SessionStateObserver$SessionType;
.super Ljava/lang/Enum;
.source "SessionStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/SessionStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/SessionStateObserver$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionType;

.field public static final enum BOOTSTRAP:Lcom/redbend/vdm/SessionStateObserver$SessionType;

.field public static final enum DL:Lcom/redbend/vdm/SessionStateObserver$SessionType;

.field public static final enum DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

.field public static final enum DS:Lcom/redbend/vdm/SessionStateObserver$SessionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    const-string v1, "BOOTSTRAP"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/SessionStateObserver$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->BOOTSTRAP:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    .line 20
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    const-string v1, "DM"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/SessionStateObserver$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    .line 22
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    const-string v1, "DL"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/SessionStateObserver$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DL:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    .line 24
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    const-string v1, "DS"

    invoke-direct {v0, v1, v5}, Lcom/redbend/vdm/SessionStateObserver$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DS:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/redbend/vdm/SessionStateObserver$SessionType;

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->BOOTSTRAP:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DL:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DS:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->$VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static fromInt(I)Lcom/redbend/vdm/SessionStateObserver$SessionType;
    .locals 5
    .parameter "i"

    .prologue
    .line 27
    invoke-static {}, Lcom/redbend/vdm/SessionStateObserver$SessionType;->values()[Lcom/redbend/vdm/SessionStateObserver$SessionType;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/SessionStateObserver$SessionType;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 28
    .local v3, type:Lcom/redbend/vdm/SessionStateObserver$SessionType;
    invoke-virtual {v3}, Lcom/redbend/vdm/SessionStateObserver$SessionType;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 31
    .end local v3           #type:Lcom/redbend/vdm/SessionStateObserver$SessionType;
    :goto_1
    return-object v3

    .line 27
    .restart local v3       #type:Lcom/redbend/vdm/SessionStateObserver$SessionType;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v3           #type:Lcom/redbend/vdm/SessionStateObserver$SessionType;
    :cond_1
    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/SessionStateObserver$SessionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/SessionStateObserver$SessionType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionType;->$VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionType;

    invoke-virtual {v0}, [Lcom/redbend/vdm/SessionStateObserver$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/SessionStateObserver$SessionType;

    return-object v0
.end method
