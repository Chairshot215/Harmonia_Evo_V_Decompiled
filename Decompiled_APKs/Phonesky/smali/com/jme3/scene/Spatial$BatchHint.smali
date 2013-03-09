.class public final enum Lcom/jme3/scene/Spatial$BatchHint;
.super Ljava/lang/Enum;
.source "Spatial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/scene/Spatial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BatchHint"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/scene/Spatial$BatchHint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Always:Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Inherit:Lcom/jme3/scene/Spatial$BatchHint;

.field public static final enum Never:Lcom/jme3/scene/Spatial$BatchHint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 106
    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Inherit"

    invoke-direct {v0, v1, v2}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    .line 110
    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Always"

    invoke-direct {v0, v1, v3}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Always:Lcom/jme3/scene/Spatial$BatchHint;

    .line 114
    new-instance v0, Lcom/jme3/scene/Spatial$BatchHint;

    const-string v1, "Never"

    invoke-direct {v0, v1, v4}, Lcom/jme3/scene/Spatial$BatchHint;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    .line 101
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/jme3/scene/Spatial$BatchHint;

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Inherit:Lcom/jme3/scene/Spatial$BatchHint;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Always:Lcom/jme3/scene/Spatial$BatchHint;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jme3/scene/Spatial$BatchHint;->$VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

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
    .line 101
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/scene/Spatial$BatchHint;
    .locals 1
    .parameter

    .prologue
    .line 101
    const-class v0, Lcom/jme3/scene/Spatial$BatchHint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial$BatchHint;

    return-object v0
.end method

.method public static values()[Lcom/jme3/scene/Spatial$BatchHint;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->$VALUES:[Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {v0}, [Lcom/jme3/scene/Spatial$BatchHint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/scene/Spatial$BatchHint;

    return-object v0
.end method
