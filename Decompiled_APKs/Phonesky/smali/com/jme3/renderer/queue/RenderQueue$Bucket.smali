.class public final enum Lcom/jme3/renderer/queue/RenderQueue$Bucket;
.super Ljava/lang/Enum;
.source "RenderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/queue/RenderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bucket"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/renderer/queue/RenderQueue$Bucket;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

.field public static final enum Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Opaque"

    invoke-direct {v0, v1, v3}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 95
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Transparent"

    invoke-direct {v0, v1, v4}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 104
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Sky"

    invoke-direct {v0, v1, v5}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 113
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Translucent"

    invoke-direct {v0, v1, v6}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 123
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Gui"

    invoke-direct {v0, v1, v7}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 129
    new-instance v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    const-string v1, "Inherit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    .line 78
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

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
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 1
    .parameter

    .prologue
    .line 78
    const-class v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object v0
.end method

.method public static values()[Lcom/jme3/renderer/queue/RenderQueue$Bucket;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->$VALUES:[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v0}, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    return-object v0
.end method
