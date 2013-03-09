.class public Lcom/android/commands/monkey/MonkeyKeyEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyKeyEvent.java"


# instance fields
.field private keyEvent:Landroid/view/KeyEvent;

.field private mAction:I

.field private mDeviceId:I

.field private mDownTime:J

.field private mEventTime:J

.field private mKeyCode:I

.field private mMetaState:I

.field private mRepeatCount:I

.field private mScancode:I


# direct methods
.method public constructor <init>(II)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    iput p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iput p2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    iput p5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iput p6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iput p8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iput p10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    iput p7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iput p9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iput v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iput-wide v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method private getEvent()Landroid/view/KeyEvent;
    .locals 11

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    if-gez v0, :cond_1

    new-instance v0, Landroid/view/KeyEvent;

    iget v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v2, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0

    :cond_1
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    iget-wide v3, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    iget v6, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    iget v7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mRepeatCount:I

    iget v8, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mMetaState:I

    iget v9, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDeviceId:I

    iget v10, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mScancode:I

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    iput-object v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->keyEvent:Landroid/view/KeyEvent;

    goto :goto_0
.end method


# virtual methods
.method public getAction()I
    .locals 1

    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    return v0
.end method

.method public getDownTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    return-wide v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    return-wide v0
.end method

.method public getKeyCode()I
    .locals 1

    iget v0, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    return v0
.end method

.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le p3, v4, :cond_0

    iget v5, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mAction:I

    if-ne v5, v4, :cond_1

    const-string v2, "ACTION_UP"

    :goto_0
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":Sending Key ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    // "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-static {v7}, Lcom/android/commands/monkey/MonkeySourceRandom;->getKeyName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getEvent()Landroid/view/KeyEvent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    return v3

    :cond_1
    const-string v2, "ACTION_DOWN"

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":Sending Key ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mKeyCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "    // Unknown key event"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v1

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    move v3, v4

    goto :goto_2
.end method

.method public isThrottlable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/commands/monkey/MonkeyKeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDownTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mDownTime:J

    return-void
.end method

.method public setEventTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/commands/monkey/MonkeyKeyEvent;->mEventTime:J

    return-void
.end method
