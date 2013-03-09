.class public final enum Lcom/jme3/system/JmeContext$Type;
.super Ljava/lang/Enum;
.source "JmeContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/system/JmeContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/system/JmeContext$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/system/JmeContext$Type;

.field public static final enum Canvas:Lcom/jme3/system/JmeContext$Type;

.field public static final enum Display:Lcom/jme3/system/JmeContext$Type;

.field public static final enum Headless:Lcom/jme3/system/JmeContext$Type;

.field public static final enum OffscreenSurface:Lcom/jme3/system/JmeContext$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/jme3/system/JmeContext$Type;

    const-string v1, "Display"

    invoke-direct {v0, v1, v2}, Lcom/jme3/system/JmeContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    .line 66
    new-instance v0, Lcom/jme3/system/JmeContext$Type;

    const-string v1, "Canvas"

    invoke-direct {v0, v1, v3}, Lcom/jme3/system/JmeContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/JmeContext$Type;->Canvas:Lcom/jme3/system/JmeContext$Type;

    .line 74
    new-instance v0, Lcom/jme3/system/JmeContext$Type;

    const-string v1, "OffscreenSurface"

    invoke-direct {v0, v1, v4}, Lcom/jme3/system/JmeContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/JmeContext$Type;->OffscreenSurface:Lcom/jme3/system/JmeContext$Type;

    .line 81
    new-instance v0, Lcom/jme3/system/JmeContext$Type;

    const-string v1, "Headless"

    invoke-direct {v0, v1, v5}, Lcom/jme3/system/JmeContext$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jme3/system/JmeContext$Type;

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Display:Lcom/jme3/system/JmeContext$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Canvas:Lcom/jme3/system/JmeContext$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->OffscreenSurface:Lcom/jme3/system/JmeContext$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/system/JmeContext$Type;->Headless:Lcom/jme3/system/JmeContext$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/jme3/system/JmeContext$Type;->$VALUES:[Lcom/jme3/system/JmeContext$Type;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/system/JmeContext$Type;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/jme3/system/JmeContext$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/system/JmeContext$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/system/JmeContext$Type;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/jme3/system/JmeContext$Type;->$VALUES:[Lcom/jme3/system/JmeContext$Type;

    invoke-virtual {v0}, [Lcom/jme3/system/JmeContext$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/system/JmeContext$Type;

    return-object v0
.end method
