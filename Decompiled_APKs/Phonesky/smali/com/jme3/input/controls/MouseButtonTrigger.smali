.class public Lcom/jme3/input/controls/MouseButtonTrigger;
.super Ljava/lang/Object;
.source "MouseButtonTrigger.java"

# interfaces
.implements Lcom/jme3/input/controls/Trigger;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mouseButton:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/jme3/input/controls/MouseButtonTrigger;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/input/controls/MouseButtonTrigger;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mouseButtonHash(I)I
    .locals 1
    .parameter "mouseButton"

    .prologue
    .line 71
    sget-boolean v0, Lcom/jme3/input/controls/MouseButtonTrigger;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p0, :cond_0

    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 72
    :cond_1
    and-int/lit16 v0, p0, 0xff

    or-int/lit16 v0, v0, 0x100

    return v0
.end method


# virtual methods
.method public triggerHashCode()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButton:I

    invoke-static {v0}, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButtonHash(I)I

    move-result v0

    return v0
.end method
