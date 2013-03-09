.class public final enum Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;
.super Ljava/lang/Enum;
.source "TouchGestureControlOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CENTER:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum DOWN:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum DOWNLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum DOWNRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field private static final synthetic ENUM$VALUES:[Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum LEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum RIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum UP:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum UPLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

.field public static final enum UPRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "UPLEFT"

    invoke-direct {v0, v1, v3}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "UP"

    invoke-direct {v0, v1, v4}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UP:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "UPRIGHT"

    invoke-direct {v0, v1, v5}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v6}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->LEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v7}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->CENTER:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->RIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "DOWNLEFT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "DOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWN:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    new-instance v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    const-string v1, "DOWNRIGHT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    .line 21
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    sget-object v1, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UP:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->UPRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->LEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->CENTER:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->RIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNLEFT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWN:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->DOWNRIGHT:Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->ENUM$VALUES:[Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    return-object v0
.end method

.method public static values()[Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;->ENUM$VALUES:[Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    array-length v1, v0

    new-array v2, v1, [Lcom/googlecode/eyesfree/widget/TouchGestureControlOverlay$Gesture;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
