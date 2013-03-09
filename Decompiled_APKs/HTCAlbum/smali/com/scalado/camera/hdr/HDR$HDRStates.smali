.class final enum Lcom/scalado/camera/hdr/HDR$HDRStates;
.super Ljava/lang/Enum;
.source "HDR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr/HDR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HDRStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/camera/hdr/HDR$HDRStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/scalado/camera/hdr/HDR$HDRStates;

.field public static final enum CAPTURING:Lcom/scalado/camera/hdr/HDR$HDRStates;

.field public static final enum FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

.field public static final enum READY:Lcom/scalado/camera/hdr/HDR$HDRStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/scalado/camera/hdr/HDR$HDRStates;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/scalado/camera/hdr/HDR$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    .line 91
    new-instance v0, Lcom/scalado/camera/hdr/HDR$HDRStates;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v3}, Lcom/scalado/camera/hdr/HDR$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr/HDR$HDRStates;

    .line 92
    new-instance v0, Lcom/scalado/camera/hdr/HDR$HDRStates;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/scalado/camera/hdr/HDR$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scalado/camera/hdr/HDR$HDRStates;

    sget-object v1, Lcom/scalado/camera/hdr/HDR$HDRStates;->READY:Lcom/scalado/camera/hdr/HDR$HDRStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/camera/hdr/HDR$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr/HDR$HDRStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/camera/hdr/HDR$HDRStates;->FINISHED:Lcom/scalado/camera/hdr/HDR$HDRStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->$VALUES:[Lcom/scalado/camera/hdr/HDR$HDRStates;

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

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/camera/hdr/HDR$HDRStates;
    .locals 1
    .parameter "name"

    .prologue
    .line 89
    const-class v0, Lcom/scalado/camera/hdr/HDR$HDRStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scalado/camera/hdr/HDR$HDRStates;

    return-object v0
.end method

.method public static values()[Lcom/scalado/camera/hdr/HDR$HDRStates;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/scalado/camera/hdr/HDR$HDRStates;->$VALUES:[Lcom/scalado/camera/hdr/HDR$HDRStates;

    invoke-virtual {v0}, [Lcom/scalado/camera/hdr/HDR$HDRStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/scalado/camera/hdr/HDR$HDRStates;

    return-object v0
.end method
