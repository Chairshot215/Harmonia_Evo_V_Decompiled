.class public final enum Lcom/jme3/input/event/TouchEvent$Type;
.super Ljava/lang/Enum;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/input/event/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jme3/input/event/TouchEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum DOWN:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum FLING:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum IDLE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum MOVE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum TAP:Lcom/jme3/input/event/TouchEvent$Type;

.field public static final enum UP:Lcom/jme3/input/event/TouchEvent$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v3}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    .line 49
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "MOVE"

    invoke-direct {v0, v1, v4}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    .line 53
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->UP:Lcom/jme3/input/event/TouchEvent$Type;

    .line 57
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "KEY_DOWN"

    invoke-direct {v0, v1, v6}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    .line 61
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "KEY_UP"

    invoke-direct {v0, v1, v7}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    .line 63
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "FLING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->FLING:Lcom/jme3/input/event/TouchEvent$Type;

    .line 64
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "TAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->TAP:Lcom/jme3/input/event/TouchEvent$Type;

    .line 65
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "DOUBLETAP"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

    .line 66
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "LONGPRESSED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

    .line 71
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_START"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

    .line 75
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_MOVE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    .line 79
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCALE_END"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

    .line 83
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SCROLL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

    .line 87
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "SHOWPRESS"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

    .line 89
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "OUTSIDE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

    .line 90
    new-instance v0, Lcom/jme3/input/event/TouchEvent$Type;

    const-string v1, "IDLE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/jme3/input/event/TouchEvent$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/jme3/input/event/TouchEvent$Type;

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->UP:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->KEY_DOWN:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jme3/input/event/TouchEvent$Type;->KEY_UP:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->FLING:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->TAP:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->DOUBLETAP:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->LONGPRESSED:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_START:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_MOVE:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->SCALE_END:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->SCROLL:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->SHOWPRESS:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->OUTSIDE:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/jme3/input/event/TouchEvent$Type;->IDLE:Lcom/jme3/input/event/TouchEvent$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/jme3/input/event/TouchEvent$Type;->$VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/jme3/input/event/TouchEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/jme3/input/event/TouchEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/jme3/input/event/TouchEvent$Type;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/jme3/input/event/TouchEvent$Type;->$VALUES:[Lcom/jme3/input/event/TouchEvent$Type;

    invoke-virtual {v0}, [Lcom/jme3/input/event/TouchEvent$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/input/event/TouchEvent$Type;

    return-object v0
.end method
