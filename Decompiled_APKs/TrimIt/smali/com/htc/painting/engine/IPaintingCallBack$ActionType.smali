.class public final enum Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
.super Ljava/lang/Enum;
.source "IPaintingCallBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/IPaintingCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/painting/engine/IPaintingCallBack$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

.field public static final enum Load:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

.field public static final enum Save:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    const-string v1, "Load"

    invoke-direct {v0, v1, v2}, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Load:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    new-instance v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    const-string v1, "Save"

    invoke-direct {v0, v1, v3}, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Save:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    sget-object v1, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Load:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Save:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->$VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 13
    const-class v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->$VALUES:[Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    invoke-virtual {v0}, [Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    return-object v0
.end method
