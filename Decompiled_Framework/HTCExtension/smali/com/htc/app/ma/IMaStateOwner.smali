.class public interface abstract Lcom/htc/app/ma/IMaStateOwner;
.super Ljava/lang/Object;
.source "IMaStateOwner.java"


# static fields
.field public static final KEY_ANI_ROTATION_L2P:I = 0x2

.field public static final KEY_ANI_ROTATION_P2L:I = 0x3

.field public static final KEY_ANI_SHIFT_BACKWARD:I = 0x5

.field public static final KEY_ANI_SHIFT_FORWARD:I = 0x4

.field public static final KEY_ORIENTATION:I = 0x1

.field public static final KEY_POSITION:I = 0x7

.field public static final KEY_SHOW:I = 0x6

.field public static final VALUE_CACHE:I = -0x2

.field public static final VALUE_HIDDEN:I = 0x2

.field public static final VALUE_IDLE:I = 0x1

.field public static final VALUE_LANDSCAPE:I = 0x1

.field public static final VALUE_NULL:I = -0x80000000

.field public static final VALUE_PORTRAIT:I = 0x2

.field public static final VALUE_RUNNING:I = 0x2

.field public static final VALUE_SHOWED:I = 0x1

.field public static final VALUE_STACK:I = -0x1


# virtual methods
.method public abstract getState(I)I
.end method

.method public abstract onStateChanged(III)V
.end method

.method public abstract setState(II)V
.end method
