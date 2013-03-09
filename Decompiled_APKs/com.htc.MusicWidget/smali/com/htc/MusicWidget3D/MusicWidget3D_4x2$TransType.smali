.class public final enum Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;
.super Ljava/lang/Enum;
.source "MusicWidget3D_4x2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "TransType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

.field public static final enum Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

.field public static final enum Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    const-string v1, "Trans1"

    invoke-direct {v0, v1, v2}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    .line 74
    new-instance v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    const-string v1, "Trans2"

    invoke-direct {v0, v1, v3}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    .line 72
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans1:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->Trans2:Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->$VALUES:[Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

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
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;
    .locals 1
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    return-object v0
.end method

.method public static values()[Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->$VALUES:[Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    invoke-virtual {v0}, [Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/MusicWidget3D/MusicWidget3D_4x2$TransType;

    return-object v0
.end method
