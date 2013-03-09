.class public final enum Lcom/jme3/audio/AudioParam;
.super Ljava/lang/Enum;
.source "AudioParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/audio/AudioParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/AudioParam;

.field public static final enum Direction:Lcom/jme3/audio/AudioParam;

.field public static final enum DryFilter:Lcom/jme3/audio/AudioParam;

.field public static final enum InnerAngle:Lcom/jme3/audio/AudioParam;

.field public static final enum IsDirectional:Lcom/jme3/audio/AudioParam;

.field public static final enum IsPositional:Lcom/jme3/audio/AudioParam;

.field public static final enum Looping:Lcom/jme3/audio/AudioParam;

.field public static final enum MaxDistance:Lcom/jme3/audio/AudioParam;

.field public static final enum OuterAngle:Lcom/jme3/audio/AudioParam;

.field public static final enum Pitch:Lcom/jme3/audio/AudioParam;

.field public static final enum Position:Lcom/jme3/audio/AudioParam;

.field public static final enum RefDistance:Lcom/jme3/audio/AudioParam;

.field public static final enum ReverbEnabled:Lcom/jme3/audio/AudioParam;

.field public static final enum ReverbFilter:Lcom/jme3/audio/AudioParam;

.field public static final enum Velocity:Lcom/jme3/audio/AudioParam;

.field public static final enum Volume:Lcom/jme3/audio/AudioParam;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Volume"

    invoke-direct {v0, v1, v3}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    .line 5
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Pitch"

    invoke-direct {v0, v1, v4}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    .line 6
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Looping"

    invoke-direct {v0, v1, v5}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    .line 7
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Position"

    invoke-direct {v0, v1, v6}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    .line 8
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "IsPositional"

    invoke-direct {v0, v1, v7}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    .line 9
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Direction"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    .line 10
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "IsDirectional"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    .line 11
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "Velocity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    .line 12
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "OuterAngle"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    .line 13
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "InnerAngle"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    .line 14
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "RefDistance"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    .line 15
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "MaxDistance"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    .line 16
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "DryFilter"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    .line 17
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "ReverbFilter"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    .line 18
    new-instance v0, Lcom/jme3/audio/AudioParam;

    const-string v1, "ReverbEnabled"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioParam;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    .line 3
    const/16 v0, 0xf

    new-array v0, v0, [Lcom/jme3/audio/AudioParam;

    sget-object v1, Lcom/jme3/audio/AudioParam;->Volume:Lcom/jme3/audio/AudioParam;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/audio/AudioParam;->Pitch:Lcom/jme3/audio/AudioParam;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/audio/AudioParam;->Looping:Lcom/jme3/audio/AudioParam;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/audio/AudioParam;->Position:Lcom/jme3/audio/AudioParam;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/audio/AudioParam;->IsPositional:Lcom/jme3/audio/AudioParam;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/audio/AudioParam;->Direction:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/audio/AudioParam;->IsDirectional:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/audio/AudioParam;->Velocity:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/audio/AudioParam;->OuterAngle:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/audio/AudioParam;->InnerAngle:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/audio/AudioParam;->RefDistance:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/audio/AudioParam;->MaxDistance:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/audio/AudioParam;->DryFilter:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/audio/AudioParam;->ReverbFilter:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/audio/AudioParam;->ReverbEnabled:Lcom/jme3/audio/AudioParam;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/audio/AudioParam;->$VALUES:[Lcom/jme3/audio/AudioParam;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/AudioParam;
    .locals 1
    .parameter

    .prologue
    .line 3
    const-class v0, Lcom/jme3/audio/AudioParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioParam;

    return-object v0
.end method

.method public static values()[Lcom/jme3/audio/AudioParam;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/jme3/audio/AudioParam;->$VALUES:[Lcom/jme3/audio/AudioParam;

    invoke-virtual {v0}, [Lcom/jme3/audio/AudioParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/AudioParam;

    return-object v0
.end method
