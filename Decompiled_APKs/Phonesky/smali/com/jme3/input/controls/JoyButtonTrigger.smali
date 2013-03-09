.class public Lcom/jme3/input/controls/JoyButtonTrigger;
.super Ljava/lang/Object;
.source "JoyButtonTrigger.java"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buttonId:I

.field private final joyId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/jme3/input/controls/JoyButtonTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/input/controls/JoyButtonTrigger;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static joyButtonHash(II)I
    .locals 2
    .parameter "joyId"
    .parameter "joyButton"

    .prologue
    .line 53
    sget-boolean v0, Lcom/jme3/input/controls/JoyButtonTrigger;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_1
    mul-int/lit16 v0, p0, 0x800

    or-int/lit16 v0, v0, 0x600

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public triggerHashCode()I
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->joyId:I

    iget v1, p0, Lcom/jme3/input/controls/JoyButtonTrigger;->buttonId:I

    invoke-static {v0, v1}, Lcom/jme3/input/controls/JoyButtonTrigger;->joyButtonHash(II)I

    move-result v0

    return v0
.end method
