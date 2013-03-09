.class public final enum Lcom/jme3/audio/ListenerParam;
.super Ljava/lang/Enum;
.source "ListenerParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/audio/ListenerParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/ListenerParam;

.field public static final enum Position:Lcom/jme3/audio/ListenerParam;

.field public static final enum Rotation:Lcom/jme3/audio/ListenerParam;

.field public static final enum Velocity:Lcom/jme3/audio/ListenerParam;

.field public static final enum Volume:Lcom/jme3/audio/ListenerParam;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Position"

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    .line 37
    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Velocity"

    invoke-direct {v0, v1, v3}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    .line 38
    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Rotation"

    invoke-direct {v0, v1, v4}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    .line 39
    new-instance v0, Lcom/jme3/audio/ListenerParam;

    const-string v1, "Volume"

    invoke-direct {v0, v1, v5}, Lcom/jme3/audio/ListenerParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    .line 35
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/audio/ListenerParam;

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Position:Lcom/jme3/audio/ListenerParam;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Velocity:Lcom/jme3/audio/ListenerParam;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Rotation:Lcom/jme3/audio/ListenerParam;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/audio/ListenerParam;->Volume:Lcom/jme3/audio/ListenerParam;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/audio/ListenerParam;->$VALUES:[Lcom/jme3/audio/ListenerParam;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/ListenerParam;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/jme3/audio/ListenerParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/ListenerParam;

    return-object v0
.end method

.method public static values()[Lcom/jme3/audio/ListenerParam;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/jme3/audio/ListenerParam;->$VALUES:[Lcom/jme3/audio/ListenerParam;

    invoke-virtual {v0}, [Lcom/jme3/audio/ListenerParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/ListenerParam;

    return-object v0
.end method
