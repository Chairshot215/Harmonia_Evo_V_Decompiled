.class public final enum Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
.super Ljava/lang/Enum;
.source "RenderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/queue/RenderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShadowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

.field public static final enum Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Off"

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 146
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Cast"

    invoke-direct {v0, v1, v3}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 151
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Receive"

    invoke-direct {v0, v1, v4}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 156
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "CastAndReceive"

    invoke-direct {v0, v1, v5}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 161
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const-string v1, "Inherit"

    invoke-direct {v0, v1, v6}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    .line 136
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

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
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1
    .parameter

    .prologue
    .line 136
    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method

.method public static values()[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v0}, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    return-object v0
.end method
