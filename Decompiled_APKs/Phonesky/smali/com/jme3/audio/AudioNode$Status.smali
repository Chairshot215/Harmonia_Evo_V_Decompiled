.class public final enum Lcom/jme3/audio/AudioNode$Status;
.super Ljava/lang/Enum;
.source "AudioNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/audio/AudioNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/audio/AudioNode$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/audio/AudioNode$Status;

.field public static final enum Paused:Lcom/jme3/audio/AudioNode$Status;

.field public static final enum Playing:Lcom/jme3/audio/AudioNode$Status;

.field public static final enum Stopped:Lcom/jme3/audio/AudioNode$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    new-instance v0, Lcom/jme3/audio/AudioNode$Status;

    const-string v1, "Playing"

    invoke-direct {v0, v1, v2}, Lcom/jme3/audio/AudioNode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioNode$Status;->Playing:Lcom/jme3/audio/AudioNode$Status;

    .line 99
    new-instance v0, Lcom/jme3/audio/AudioNode$Status;

    const-string v1, "Paused"

    invoke-direct {v0, v1, v3}, Lcom/jme3/audio/AudioNode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioNode$Status;->Paused:Lcom/jme3/audio/AudioNode$Status;

    .line 106
    new-instance v0, Lcom/jme3/audio/AudioNode$Status;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v4}, Lcom/jme3/audio/AudioNode$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/audio/AudioNode$Status;

    sget-object v1, Lcom/jme3/audio/AudioNode$Status;->Playing:Lcom/jme3/audio/AudioNode$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/audio/AudioNode$Status;->Paused:Lcom/jme3/audio/AudioNode$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/audio/AudioNode$Status;->Stopped:Lcom/jme3/audio/AudioNode$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/audio/AudioNode$Status;->$VALUES:[Lcom/jme3/audio/AudioNode$Status;

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
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/audio/AudioNode$Status;
    .locals 1
    .parameter

    .prologue
    .line 89
    const-class v0, Lcom/jme3/audio/AudioNode$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/audio/AudioNode$Status;

    return-object v0
.end method

.method public static values()[Lcom/jme3/audio/AudioNode$Status;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/jme3/audio/AudioNode$Status;->$VALUES:[Lcom/jme3/audio/AudioNode$Status;

    invoke-virtual {v0}, [Lcom/jme3/audio/AudioNode$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/audio/AudioNode$Status;

    return-object v0
.end method
