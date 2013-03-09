.class public Lcom/htc/pen/PenEvent;
.super Ljava/lang/Object;
.source "PenEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final PEN_ACTION_DOWN:I = 0x1e

.field public static final PEN_ACTION_MOVE:I = 0x20

.field public static final PEN_ACTION_UP:I = 0x1f

.field public static final PEN_BUTTON1:I = 0x29

.field public static final PEN_BUTTON2:I = 0x2a

.field public static final PEN_BUTTON_NONE:I = 0x28

.field private static final PEN_FEATURE:Ljava/lang/String; = "android.hardware.touchscreen.pen"

.field public static final PEN_MOVE_BUTTON1_DOWN:I = 0x105

.field public static final PEN_MOVE_BUTTON1_UP:I = 0x106

.field public static final PEN_MOVE_BUTTON2_DOWN:I = 0x205

.field public static final PEN_MOVE_BUTTON2_UP:I = 0x206

.field public static final SOURCE_PEN_TOUCHSCREEN:I = 0x4002

.field private static final TAG:Ljava/lang/String; = "PenEvent"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PenAction(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, -0x1

    .line 121
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    const/16 v2, 0x4002

    if-ne v1, v2, :cond_0

    .line 132
    :goto_0
    return v0

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 126
    :pswitch_0
    const/16 v0, 0x1e

    goto :goto_0

    .line 128
    :pswitch_1
    const/16 v0, 0x1f

    goto :goto_0

    .line 130
    :pswitch_2
    const/16 v0, 0x20

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static PenButton(Landroid/view/MotionEvent;)I
    .locals 2
    .parameter "event"

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_0

    .line 137
    const/4 v0, -0x1

    .line 144
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    const/16 v0, 0x28

    goto :goto_0

    .line 141
    :pswitch_0
    const/16 v0, 0x29

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static enablePenEvent(Landroid/app/Activity;Z)V
    .locals 8
    .parameter "act"
    .parameter "bEnable"

    .prologue
    .line 86
    const-string v3, "PenEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enablePenFunction, act="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    if-nez p0, :cond_0

    .line 90
    const-string v3, "PenEvent"

    const-string v4, "enablePenFunction, act is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    const-class v3, Landroid/view/Window;

    const-string v4, "enablePenLinstener"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 99
    .local v0, Window_enablePenListener:Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 102
    .end local v0           #Window_enablePenListener:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 104
    .local v2, nsme:Ljava/lang/NoSuchMethodException;
    const-string v3, "PenEvent"

    const-string v4, "NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    .end local v2           #nsme:Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Ljava/lang/IllegalAccessException;
    const-string v3, "PenEvent"

    const-string v4, "IllegalAccessException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "PenEvent"

    const-string v4, "InvocationTargetException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hasPenEvent(Landroid/app/Activity;)Z
    .locals 2
    .parameter "act"

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen.pen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPenEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v0

    const/16 v1, 0x4002

    if-ne v0, v1, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
