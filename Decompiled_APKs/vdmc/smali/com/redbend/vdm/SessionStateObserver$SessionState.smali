.class public final enum Lcom/redbend/vdm/SessionStateObserver$SessionState;
.super Ljava/lang/Enum;
.source "SessionStateObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/redbend/vdm/SessionStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/redbend/vdm/SessionStateObserver$SessionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionState;

.field public static final enum ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

.field public static final enum COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

.field public static final enum STARTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v2}, Lcom/redbend/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    .line 42
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;

    const-string v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/redbend/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    .line 44
    new-instance v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;

    const-string v1, "ABORTED"

    invoke-direct {v0, v1, v4}, Lcom/redbend/vdm/SessionStateObserver$SessionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/redbend/vdm/SessionStateObserver$SessionState;

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->STARTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;->$VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionState;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static fromInt(I)Lcom/redbend/vdm/SessionStateObserver$SessionState;
    .locals 5
    .parameter "i"

    .prologue
    .line 47
    invoke-static {}, Lcom/redbend/vdm/SessionStateObserver$SessionState;->values()[Lcom/redbend/vdm/SessionStateObserver$SessionState;

    move-result-object v0

    .local v0, arr$:[Lcom/redbend/vdm/SessionStateObserver$SessionState;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 48
    .local v3, state:Lcom/redbend/vdm/SessionStateObserver$SessionState;
    invoke-virtual {v3}, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ordinal()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 51
    .end local v3           #state:Lcom/redbend/vdm/SessionStateObserver$SessionState;
    :goto_1
    return-object v3

    .line 47
    .restart local v3       #state:Lcom/redbend/vdm/SessionStateObserver$SessionState;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v3           #state:Lcom/redbend/vdm/SessionStateObserver$SessionState;
    :cond_1
    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/redbend/vdm/SessionStateObserver$SessionState;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;

    return-object v0
.end method

.method public static values()[Lcom/redbend/vdm/SessionStateObserver$SessionState;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/redbend/vdm/SessionStateObserver$SessionState;->$VALUES:[Lcom/redbend/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, [Lcom/redbend/vdm/SessionStateObserver$SessionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/redbend/vdm/SessionStateObserver$SessionState;

    return-object v0
.end method
