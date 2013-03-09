.class public Lcom/jme3/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"

# interfaces
.implements Lcom/jme3/input/RawInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/input/InputManager$Mapping;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private axisDeadZone:F

.field private final axisValues:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final bindings:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/input/InputManager$Mapping;",
            ">;>;"
        }
    .end annotation
.end field

.field private cursorPos:Lcom/jme3/math/Vector2f;

.field private eventsPermitted:Z

.field private firstTime:J

.field private frameDelta:J

.field private frameTPF:F

.field private inputQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/input/event/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final joystick:Lcom/jme3/input/JoyInput;

.field private joysticks:[Lcom/jme3/input/Joystick;

.field private final keys:Lcom/jme3/input/KeyInput;

.field private lastLastUpdateTime:J

.field private lastUpdateTime:J

.field private final mappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/jme3/input/InputManager$Mapping;",
            ">;"
        }
    .end annotation
.end field

.field private final mouse:Lcom/jme3/input/MouseInput;

.field private mouseVisible:Z

.field private final pressedButtons:Lcom/jme3/util/IntMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/IntMap",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private rawListenerArray:[Lcom/jme3/input/RawInputListener;

.field private rawListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jme3/input/RawInputListener;",
            ">;"
        }
    .end annotation
.end field

.field private safeMode:Z

.field private final touch:Lcom/jme3/input/TouchInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/jme3/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/jme3/input/InputManager;->$assertionsDisabled:Z

    .line 85
    const-class v0, Lcom/jme3/input/InputManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/input/InputManager;->logger:Ljava/util/logging/Logger;

    return-void

    .line 83
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/jme3/input/MouseInput;Lcom/jme3/input/KeyInput;Lcom/jme3/input/JoyInput;Lcom/jme3/input/TouchInput;)V
    .locals 3
    .parameter "mouse"
    .parameter "keys"
    .parameter "joystick"
    .parameter "touch"

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    .line 92
    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    .line 93
    iput-wide v0, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    .line 94
    iput-wide v0, p0, Lcom/jme3/input/InputManager;->firstTime:J

    .line 95
    iput-boolean v2, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/input/InputManager;->mouseVisible:Z

    .line 97
    iput-boolean v2, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    .line 98
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    .line 99
    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-direct {v0}, Lcom/jme3/math/Vector2f;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    .line 101
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    .line 103
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    .line 104
    new-instance v0, Lcom/jme3/util/IntMap;

    invoke-direct {v0}, Lcom/jme3/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Ljava/util/ArrayList;

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/input/InputManager;->rawListenerArray:[Lcom/jme3/input/RawInputListener;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    .line 132
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Mouse or keyboard cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1
    iput-object p2, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    .line 137
    iput-object p1, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    .line 138
    iput-object p3, p0, Lcom/jme3/input/InputManager;->joystick:Lcom/jme3/input/JoyInput;

    .line 139
    iput-object p4, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    .line 141
    invoke-interface {p2, p0}, Lcom/jme3/input/KeyInput;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    .line 142
    invoke-interface {p1, p0}, Lcom/jme3/input/MouseInput;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    .line 143
    if-eqz p3, :cond_2

    .line 144
    invoke-interface {p3, p0}, Lcom/jme3/input/JoyInput;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    .line 145
    invoke-interface {p3, p0}, Lcom/jme3/input/JoyInput;->loadJoysticks(Lcom/jme3/input/InputManager;)[Lcom/jme3/input/Joystick;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/input/InputManager;->joysticks:[Lcom/jme3/input/Joystick;

    .line 147
    :cond_2
    if-eqz p4, :cond_3

    .line 148
    invoke-interface {p4, p0}, Lcom/jme3/input/TouchInput;->setInputListener(Lcom/jme3/input/RawInputListener;)V

    .line 151
    :cond_3
    invoke-interface {p2}, Lcom/jme3/input/KeyInput;->getInputTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/jme3/input/InputManager;->firstTime:J

    .line 152
    return-void
.end method

.method private computeAnalogValue(J)F
    .locals 5
    .parameter "timeDelta"

    .prologue
    const/high16 v0, 0x3f80

    .line 175
    iget-boolean v1, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    :cond_1
    long-to-float v1, p1

    iget-wide v2, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private getRawListenerArray()[Lcom/jme3/input/RawInputListener;
    .locals 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListenerArray:[Lcom/jme3/input/RawInputListener;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListeners:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/jme3/input/InputManager;->rawListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/jme3/input/RawInputListener;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/input/RawInputListener;

    iput-object v0, p0, Lcom/jme3/input/InputManager;->rawListenerArray:[Lcom/jme3/input/RawInputListener;

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->rawListenerArray:[Lcom/jme3/input/RawInputListener;

    return-object v0
.end method

.method private invokeActions(IZ)V
    .locals 10
    .parameter "hash"
    .parameter "pressed"

    .prologue
    .line 155
    iget-object v8, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v8, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 156
    .local v6, maps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    if-nez v6, :cond_1

    .line 172
    :cond_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 161
    .local v7, size:I
    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 162
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/input/InputManager$Mapping;

    .line 163
    .local v5, mapping:Lcom/jme3/input/InputManager$Mapping;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v4

    .line 164
    .local v4, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 165
    .local v3, listenerSize:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 166
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/controls/InputListener;

    .line 167
    .local v2, listener:Lcom/jme3/input/controls/InputListener;
    instance-of v8, v2, Lcom/jme3/input/controls/ActionListener;

    if-eqz v8, :cond_2

    .line 168
    check-cast v2, Lcom/jme3/input/controls/ActionListener;

    .end local v2           #listener:Lcom/jme3/input/controls/InputListener;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v2, v8, p2, v9}, Lcom/jme3/input/controls/ActionListener;->onAction(Ljava/lang/String;ZF)V

    .line 165
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 161
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private invokeAnalogs(IFZ)V
    .locals 10
    .parameter "hash"
    .parameter "value"
    .parameter "isAxis"

    .prologue
    .line 226
    iget-object v8, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v8, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 227
    .local v6, maps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    if-nez v6, :cond_1

    .line 248
    :cond_0
    return-void

    .line 231
    :cond_1
    if-nez p3, :cond_2

    .line 232
    iget v8, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr p2, v8

    .line 235
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 236
    .local v7, size:I
    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 237
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/input/InputManager$Mapping;

    .line 238
    .local v5, mapping:Lcom/jme3/input/InputManager$Mapping;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v4

    .line 239
    .local v4, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 240
    .local v3, listenerSize:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_4

    .line 241
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/controls/InputListener;

    .line 242
    .local v2, listener:Lcom/jme3/input/controls/InputListener;
    instance-of v8, v2, Lcom/jme3/input/controls/AnalogListener;

    if-eqz v8, :cond_3

    .line 244
    check-cast v2, Lcom/jme3/input/controls/AnalogListener;

    .end local v2           #listener:Lcom/jme3/input/controls/InputListener;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v2, v8, p2, v9}, Lcom/jme3/input/controls/AnalogListener;->onAnalog(Ljava/lang/String;FF)V

    .line 240
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 236
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private invokeAnalogsAndActions(IFZ)V
    .locals 13
    .parameter "hash"
    .parameter "value"
    .parameter "applyTpf"

    .prologue
    .line 251
    iget v9, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    cmpg-float v9, p2, v9

    if-gez v9, :cond_2

    .line 252
    if-nez p3, :cond_1

    const/4 v9, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v9}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    .line 284
    :cond_0
    return-void

    .line 252
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 256
    :cond_2
    iget-object v9, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, p1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 257
    .local v6, maps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    if-eqz v6, :cond_0

    .line 261
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, p1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v8, 0x1

    .line 262
    .local v8, valueChanged:Z
    :goto_1
    if-eqz p3, :cond_3

    .line 263
    iget v9, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr p2, v9

    .line 266
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 267
    .local v7, size:I
    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_2
    if-ltz v0, :cond_0

    .line 268
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/input/InputManager$Mapping;

    .line 269
    .local v5, mapping:Lcom/jme3/input/InputManager$Mapping;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v4

    .line 270
    .local v4, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 271
    .local v3, listenerSize:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_3
    if-ltz v1, :cond_7

    .line 272
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/controls/InputListener;

    .line 274
    .local v2, listener:Lcom/jme3/input/controls/InputListener;
    instance-of v9, v2, Lcom/jme3/input/controls/ActionListener;

    if-eqz v9, :cond_4

    if-eqz v8, :cond_4

    move-object v9, v2

    .line 275
    check-cast v9, Lcom/jme3/input/controls/ActionListener;

    #getter for: Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    iget v12, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v9, v10, v11, v12}, Lcom/jme3/input/controls/ActionListener;->onAction(Ljava/lang/String;ZF)V

    .line 278
    :cond_4
    instance-of v9, v2, Lcom/jme3/input/controls/AnalogListener;

    if-eqz v9, :cond_5

    .line 279
    check-cast v2, Lcom/jme3/input/controls/AnalogListener;

    .end local v2           #listener:Lcom/jme3/input/controls/InputListener;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v2, v9, p2, v10}, Lcom/jme3/input/controls/AnalogListener;->onAnalog(Ljava/lang/String;FF)V

    .line 271
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 261
    .end local v0           #i:I
    .end local v1           #j:I
    .end local v3           #listenerSize:I
    .end local v4           #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    .end local v5           #mapping:Lcom/jme3/input/InputManager$Mapping;
    .end local v7           #size:I
    .end local v8           #valueChanged:Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 267
    .restart local v0       #i:I
    .restart local v1       #j:I
    .restart local v3       #listenerSize:I
    .restart local v4       #listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    .restart local v5       #mapping:Lcom/jme3/input/InputManager$Mapping;
    .restart local v7       #size:I
    .restart local v8       #valueChanged:Z
    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private invokeTimedActions(IJZ)V
    .locals 11
    .parameter "hash"
    .parameter "time"
    .parameter "pressed"

    .prologue
    .line 183
    iget-object v9, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, p1}, Lcom/jme3/util/IntMap;->containsKey(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-eqz p4, :cond_2

    .line 188
    iget-object v9, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, p1, v10}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 190
    :cond_2
    iget-object v9, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, p1}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 191
    .local v4, pressTimeObj:Ljava/lang/Long;
    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 196
    .local v2, pressTime:J
    iget-wide v0, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    .line 197
    .local v0, lastUpdate:J
    move-wide v5, p2

    .line 198
    .local v5, releaseTime:J
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    sub-long v7, v5, v9

    .line 200
    .local v7, timeDelta:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_0

    .line 201
    invoke-direct {p0, v7, v8}, Lcom/jme3/input/InputManager;->computeAnalogValue(J)F

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, p1, v9, v10}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    goto :goto_0
.end method

.method private invokeUpdateActions()V
    .locals 13

    .prologue
    .line 207
    iget-object v9, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {v9}, Lcom/jme3/util/IntMap;->size()I

    move-result v9

    if-lez v9, :cond_1

    iget-object v9, p0, Lcom/jme3/input/InputManager;->pressedButtons:Lcom/jme3/util/IntMap;

    invoke-virtual {v9}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/util/IntMap$Entry;

    .line 208
    .local v5, pressedButton:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/lang/Long;>;"
    invoke-virtual {v5}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v1

    .line 210
    .local v1, hash:I
    invoke-virtual {v5}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 211
    .local v3, pressTime:J
    iget-wide v9, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    iget-wide v11, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    sub-long v6, v9, v11

    .line 213
    .local v6, timeDelta:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-lez v9, :cond_0

    .line 214
    invoke-direct {p0, v6, v7}, Lcom/jme3/input/InputManager;->computeAnalogValue(J)F

    move-result v9

    const/4 v10, 0x0

    invoke-direct {p0, v1, v9, v10}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    goto :goto_0

    .line 218
    .end local v1           #hash:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #pressTime:J
    .end local v5           #pressedButton:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/lang/Long;>;"
    .end local v6           #timeDelta:J
    :cond_1
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9}, Lcom/jme3/util/IntMap;->size()I

    move-result v9

    if-lez v9, :cond_2

    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9}, Lcom/jme3/util/IntMap;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/util/IntMap$Entry;

    .line 219
    .local v0, axisValue:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/lang/Float;>;"
    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getKey()I

    move-result v1

    .line 220
    .restart local v1       #hash:I
    invoke-virtual {v0}, Lcom/jme3/util/IntMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 221
    .local v8, value:F
    iget v9, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    mul-float/2addr v9, v8

    const/4 v10, 0x1

    invoke-direct {p0, v1, v9, v10}, Lcom/jme3/input/InputManager;->invokeAnalogs(IFZ)V

    goto :goto_1

    .line 223
    .end local v0           #axisValue:Lcom/jme3/util/IntMap$Entry;,"Lcom/jme3/util/IntMap$Entry<Ljava/lang/Float;>;"
    .end local v1           #hash:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v8           #value:F
    :cond_2
    return-void
.end method

.method private onJoyAxisEventQueued(Lcom/jme3/input/event/JoyAxisEvent;)V
    .locals 12
    .parameter "evt"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 303
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getJoyIndex()I

    move-result v4

    .line 304
    .local v4, joyId:I
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getAxisIndex()I

    move-result v0

    .line 305
    .local v0, axis:I
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyAxisEvent;->getValue()F

    move-result v8

    .line 306
    .local v8, value:F
    iget v9, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_2

    iget v9, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    neg-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_2

    .line 307
    invoke-static {v4, v0, v10}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v2

    .line 308
    .local v2, hash1:I
    invoke-static {v4, v0, v11}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v3

    .line 310
    .local v3, hash2:I
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v2}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    .line 311
    .local v6, val1:Ljava/lang/Float;
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v3}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    .line 313
    .local v7, val2:Ljava/lang/Float;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    .line 314
    invoke-direct {p0, v2, v11}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    .line 316
    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iget v10, p0, Lcom/jme3/input/InputManager;->axisDeadZone:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_1

    .line 317
    invoke-direct {p0, v3, v11}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    .line 320
    :cond_1
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v2}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    .line 321
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v3}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    .line 336
    .end local v2           #hash1:I
    .end local v3           #hash2:I
    .end local v6           #val1:Ljava/lang/Float;
    .end local v7           #val2:Ljava/lang/Float;
    :goto_0
    return-void

    .line 323
    :cond_2
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_3

    .line 324
    invoke-static {v4, v0, v10}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v1

    .line 325
    .local v1, hash:I
    invoke-static {v4, v0, v11}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v5

    .line 326
    .local v5, otherHash:I
    neg-float v9, v8

    invoke-direct {p0, v1, v9, v10}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFZ)V

    .line 327
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    neg-float v10, v8

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v5}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 330
    .end local v1           #hash:I
    .end local v5           #otherHash:I
    :cond_3
    invoke-static {v4, v0, v11}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v1

    .line 331
    .restart local v1       #hash:I
    invoke-static {v4, v0, v10}, Lcom/jme3/input/controls/JoyAxisTrigger;->joyAxisHash(IIZ)I

    move-result v5

    .line 332
    .restart local v5       #otherHash:I
    invoke-direct {p0, v1, v8, v10}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFZ)V

    .line 333
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v9, p0, Lcom/jme3/input/InputManager;->axisValues:Lcom/jme3/util/IntMap;

    invoke-virtual {v9, v5}, Lcom/jme3/util/IntMap;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private onJoyButtonEventQueued(Lcom/jme3/input/event/JoyButtonEvent;)V
    .locals 4
    .parameter "evt"

    .prologue
    .line 354
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->getJoyIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->getButtonIndex()I

    move-result v2

    invoke-static {v1, v2}, Lcom/jme3/input/controls/JoyButtonTrigger;->joyButtonHash(II)I

    move-result v0

    .line 355
    .local v0, hash:I
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    .line 356
    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/JoyButtonEvent;->isPressed()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    .line 357
    return-void
.end method

.method private onKeyEventQueued(Lcom/jme3/input/event/KeyInputEvent;)V
    .locals 4
    .parameter "evt"

    .prologue
    .line 420
    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isRepeating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->getKeyCode()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/input/controls/KeyTrigger;->keyHash(I)I

    move-result v0

    .line 425
    .local v0, hash:I
    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    .line 426
    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/KeyInputEvent;->isPressed()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    goto :goto_0
.end method

.method private onMouseButtonEventQueued(Lcom/jme3/input/event/MouseButtonEvent;)V
    .locals 4
    .parameter "evt"

    .prologue
    .line 402
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getButtonIndex()I

    move-result v1

    invoke-static {v1}, Lcom/jme3/input/controls/MouseButtonTrigger;->mouseButtonHash(I)I

    move-result v0

    .line 403
    .local v0, hash:I
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->isPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/jme3/input/InputManager;->invokeActions(IZ)V

    .line 404
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->isPressed()Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/input/InputManager;->invokeTimedActions(IJZ)V

    .line 405
    return-void
.end method

.method private onMouseMotionEventQueued(Lcom/jme3/input/event/MouseMotionEvent;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/high16 v4, 0x4480

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v1

    if-eqz v1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 377
    .local v0, val:F
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDX()I

    move-result v1

    if-gez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v3, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFZ)V

    .line 379
    .end local v0           #val:F
    :cond_0
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    div-float v0, v1, v4

    .line 381
    .restart local v0       #val:F
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDY()I

    move-result v1

    if-gez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-static {v2, v1}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFZ)V

    .line 383
    .end local v0           #val:F
    :cond_1
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x42c8

    div-float v0, v1, v4

    .line 385
    .restart local v0       #val:F
    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getDeltaWheel()I

    move-result v4

    if-gez v4, :cond_5

    :goto_2
    invoke-static {v1, v2}, Lcom/jme3/input/controls/MouseAxisTrigger;->mouseAxisHash(IZ)I

    move-result v1

    invoke-direct {p0, v1, v0, v3}, Lcom/jme3/input/InputManager;->invokeAnalogsAndActions(IFZ)V

    .line 387
    .end local v0           #val:F
    :cond_2
    return-void

    .restart local v0       #val:F
    :cond_3
    move v1, v3

    .line 377
    goto :goto_0

    :cond_4
    move v1, v3

    .line 381
    goto :goto_1

    :cond_5
    move v2, v3

    .line 385
    goto :goto_2
.end method

.method private processQueue()V
    .locals 10

    .prologue
    .line 758
    iget-object v9, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 759
    .local v8, queueSize:I
    invoke-direct {p0}, Lcom/jme3/input/InputManager;->getRawListenerArray()[Lcom/jme3/input/RawInputListener;

    move-result-object v1

    .line 761
    .local v1, array:[Lcom/jme3/input/RawInputListener;
    move-object v0, v1

    .local v0, arr$:[Lcom/jme3/input/RawInputListener;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_9

    aget-object v7, v0, v4

    .line 762
    .local v7, listener:Lcom/jme3/input/RawInputListener;
    invoke-interface {v7}, Lcom/jme3/input/RawInputListener;->beginInput()V

    .line 764
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v8, :cond_8

    .line 765
    iget-object v9, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/event/InputEvent;

    .line 766
    .local v2, event:Lcom/jme3/input/event/InputEvent;
    invoke-virtual {v2}, Lcom/jme3/input/event/InputEvent;->isConsumed()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 764
    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 770
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_1
    instance-of v9, v2, Lcom/jme3/input/event/MouseMotionEvent;

    if-eqz v9, :cond_2

    .line 771
    check-cast v2, Lcom/jme3/input/event/MouseMotionEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onMouseMotionEvent(Lcom/jme3/input/event/MouseMotionEvent;)V

    goto :goto_2

    .line 772
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_2
    instance-of v9, v2, Lcom/jme3/input/event/KeyInputEvent;

    if-eqz v9, :cond_3

    .line 773
    check-cast v2, Lcom/jme3/input/event/KeyInputEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onKeyEvent(Lcom/jme3/input/event/KeyInputEvent;)V

    goto :goto_2

    .line 774
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_3
    instance-of v9, v2, Lcom/jme3/input/event/MouseButtonEvent;

    if-eqz v9, :cond_4

    .line 775
    check-cast v2, Lcom/jme3/input/event/MouseButtonEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V

    goto :goto_2

    .line 776
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_4
    instance-of v9, v2, Lcom/jme3/input/event/JoyAxisEvent;

    if-eqz v9, :cond_5

    .line 777
    check-cast v2, Lcom/jme3/input/event/JoyAxisEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onJoyAxisEvent(Lcom/jme3/input/event/JoyAxisEvent;)V

    goto :goto_2

    .line 778
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_5
    instance-of v9, v2, Lcom/jme3/input/event/JoyButtonEvent;

    if-eqz v9, :cond_6

    .line 779
    check-cast v2, Lcom/jme3/input/event/JoyButtonEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onJoyButtonEvent(Lcom/jme3/input/event/JoyButtonEvent;)V

    goto :goto_2

    .line 780
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_6
    instance-of v9, v2, Lcom/jme3/input/event/TouchEvent;

    if-eqz v9, :cond_7

    .line 781
    check-cast v2, Lcom/jme3/input/event/TouchEvent;

    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    invoke-interface {v7, v2}, Lcom/jme3/input/RawInputListener;->onTouchEvent(Lcom/jme3/input/event/TouchEvent;)V

    goto :goto_2

    .line 783
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    :cond_7
    sget-boolean v9, Lcom/jme3/input/InputManager;->$assertionsDisabled:Z

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 787
    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    :cond_8
    invoke-interface {v7}, Lcom/jme3/input/RawInputListener;->endInput()V

    .line 761
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 790
    .end local v5           #j:I
    .end local v7           #listener:Lcom/jme3/input/RawInputListener;
    :cond_9
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v8, :cond_12

    .line 791
    iget-object v9, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/event/InputEvent;

    .line 792
    .restart local v2       #event:Lcom/jme3/input/event/InputEvent;
    invoke-virtual {v2}, Lcom/jme3/input/event/InputEvent;->isConsumed()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 790
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 796
    :cond_a
    instance-of v9, v2, Lcom/jme3/input/event/MouseMotionEvent;

    if-eqz v9, :cond_c

    move-object v9, v2

    .line 797
    check-cast v9, Lcom/jme3/input/event/MouseMotionEvent;

    invoke-direct {p0, v9}, Lcom/jme3/input/InputManager;->onMouseMotionEventQueued(Lcom/jme3/input/event/MouseMotionEvent;)V

    .line 815
    :cond_b
    :goto_5
    invoke-virtual {v2}, Lcom/jme3/input/event/InputEvent;->setConsumed()V

    goto :goto_4

    .line 798
    :cond_c
    instance-of v9, v2, Lcom/jme3/input/event/KeyInputEvent;

    if-eqz v9, :cond_d

    move-object v9, v2

    .line 799
    check-cast v9, Lcom/jme3/input/event/KeyInputEvent;

    invoke-direct {p0, v9}, Lcom/jme3/input/InputManager;->onKeyEventQueued(Lcom/jme3/input/event/KeyInputEvent;)V

    goto :goto_5

    .line 800
    :cond_d
    instance-of v9, v2, Lcom/jme3/input/event/MouseButtonEvent;

    if-eqz v9, :cond_e

    move-object v9, v2

    .line 801
    check-cast v9, Lcom/jme3/input/event/MouseButtonEvent;

    invoke-direct {p0, v9}, Lcom/jme3/input/InputManager;->onMouseButtonEventQueued(Lcom/jme3/input/event/MouseButtonEvent;)V

    goto :goto_5

    .line 802
    :cond_e
    instance-of v9, v2, Lcom/jme3/input/event/JoyAxisEvent;

    if-eqz v9, :cond_f

    move-object v9, v2

    .line 803
    check-cast v9, Lcom/jme3/input/event/JoyAxisEvent;

    invoke-direct {p0, v9}, Lcom/jme3/input/InputManager;->onJoyAxisEventQueued(Lcom/jme3/input/event/JoyAxisEvent;)V

    goto :goto_5

    .line 804
    :cond_f
    instance-of v9, v2, Lcom/jme3/input/event/JoyButtonEvent;

    if-eqz v9, :cond_10

    move-object v9, v2

    .line 805
    check-cast v9, Lcom/jme3/input/event/JoyButtonEvent;

    invoke-direct {p0, v9}, Lcom/jme3/input/InputManager;->onJoyButtonEventQueued(Lcom/jme3/input/event/JoyButtonEvent;)V

    goto :goto_5

    .line 806
    :cond_10
    instance-of v9, v2, Lcom/jme3/input/event/TouchEvent;

    if-eqz v9, :cond_11

    move-object v9, v2

    .line 807
    check-cast v9, Lcom/jme3/input/event/TouchEvent;

    invoke-virtual {p0, v9}, Lcom/jme3/input/InputManager;->onTouchEventQueued(Lcom/jme3/input/event/TouchEvent;)V

    goto :goto_5

    .line 809
    :cond_11
    sget-boolean v9, Lcom/jme3/input/InputManager;->$assertionsDisabled:Z

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 818
    .end local v2           #event:Lcom/jme3/input/event/InputEvent;
    :cond_12
    iget-object v9, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 819
    return-void
.end method


# virtual methods
.method public varargs addListener(Lcom/jme3/input/controls/InputListener;[Ljava/lang/String;)V
    .locals 6
    .parameter "listener"
    .parameter "mappingNames"

    .prologue
    .line 481
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 482
    .local v4, mappingName:Ljava/lang/String;
    iget-object v5, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/input/InputManager$Mapping;

    .line 483
    .local v3, mapping:Lcom/jme3/input/InputManager$Mapping;
    if-nez v3, :cond_0

    .line 484
    new-instance v3, Lcom/jme3/input/InputManager$Mapping;

    .end local v3           #mapping:Lcom/jme3/input/InputManager$Mapping;
    invoke-direct {v3, v4}, Lcom/jme3/input/InputManager$Mapping;-><init>(Ljava/lang/String;)V

    .line 485
    .restart local v3       #mapping:Lcom/jme3/input/InputManager$Mapping;
    iget-object v5, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    :cond_0
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 488
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 491
    .end local v3           #mapping:Lcom/jme3/input/InputManager$Mapping;
    .end local v4           #mappingName:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public varargs addMapping(Ljava/lang/String;[Lcom/jme3/input/controls/Trigger;)V
    .locals 10
    .parameter "mappingName"
    .parameter "triggers"

    .prologue
    .line 524
    iget-object v7, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/input/InputManager$Mapping;

    .line 525
    .local v4, mapping:Lcom/jme3/input/InputManager$Mapping;
    if-nez v4, :cond_0

    .line 526
    new-instance v4, Lcom/jme3/input/InputManager$Mapping;

    .end local v4           #mapping:Lcom/jme3/input/InputManager$Mapping;
    invoke-direct {v4, p1}, Lcom/jme3/input/InputManager$Mapping;-><init>(Ljava/lang/String;)V

    .line 527
    .restart local v4       #mapping:Lcom/jme3/input/InputManager$Mapping;
    iget-object v7, p0, Lcom/jme3/input/InputManager;->mappings:Ljava/util/HashMap;

    invoke-virtual {v7, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :cond_0
    move-object v0, p2

    .local v0, arr$:[Lcom/jme3/input/controls/Trigger;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v6, v0, v2

    .line 531
    .local v6, trigger:Lcom/jme3/input/controls/Trigger;
    invoke-interface {v6}, Lcom/jme3/input/controls/Trigger;->triggerHashCode()I

    move-result v1

    .line 532
    .local v1, hash:I
    iget-object v7, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v7, v1}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 533
    .local v5, names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    if-nez v5, :cond_1

    .line 534
    new-instance v5, Ljava/util/ArrayList;

    .end local v5           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 535
    .restart local v5       #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    iget-object v7, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {v7, v1, v5}, Lcom/jme3/util/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_1
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 538
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    #getter for: Lcom/jme3/input/InputManager$Mapping;->triggers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/jme3/input/InputManager$Mapping;->access$200(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_2
    sget-object v7, Lcom/jme3/input/InputManager;->logger:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v9, "Attempted to add mapping \"{0}\" twice to trigger."

    invoke-virtual {v7, v8, v9, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 544
    .end local v1           #hash:I
    .end local v5           #names:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    .end local v6           #trigger:Lcom/jme3/input/controls/Trigger;
    :cond_3
    return-void
.end method

.method public beginInput()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public endInput()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onJoyAxisEvent(Lcom/jme3/input/event/JoyAxisEvent;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JoyInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    return-void
.end method

.method public onJoyButtonEvent(Lcom/jme3/input/event/JoyButtonEvent;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JoyInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public onKeyEvent(Lcom/jme3/input/event/KeyInputEvent;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 433
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    return-void
.end method

.method public onMouseButtonEvent(Lcom/jme3/input/event/MouseButtonEvent;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 411
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 412
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MouseInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseButtonEvent;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 416
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 417
    return-void
.end method

.method public onMouseMotionEvent(Lcom/jme3/input/event/MouseMotionEvent;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MouseInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->cursorPos:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/jme3/input/event/MouseMotionEvent;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    .line 398
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    return-void
.end method

.method public onTouchEvent(Lcom/jme3/input/event/TouchEvent;)V
    .locals 2
    .parameter "evt"

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    if-nez v0, :cond_0

    .line 888
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TouchInput has raised an event at an illegal time."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/jme3/input/InputManager;->inputQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    return-void
.end method

.method public onTouchEventQueued(Lcom/jme3/input/event/TouchEvent;)V
    .locals 10
    .parameter "evt"

    .prologue
    .line 863
    iget-object v8, p0, Lcom/jme3/input/InputManager;->bindings:Lcom/jme3/util/IntMap;

    invoke-virtual {p1}, Lcom/jme3/input/event/TouchEvent;->getKeyCode()I

    move-result v9

    invoke-static {v9}, Lcom/jme3/input/controls/TouchTrigger;->touchHash(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/jme3/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 864
    .local v6, maps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/InputManager$Mapping;>;"
    if-nez v6, :cond_1

    .line 880
    :cond_0
    return-void

    .line 868
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 869
    .local v7, size:I
    add-int/lit8 v0, v7, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 870
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/jme3/input/InputManager$Mapping;

    .line 871
    .local v5, mapping:Lcom/jme3/input/InputManager$Mapping;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->listeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$000(Lcom/jme3/input/InputManager$Mapping;)Ljava/util/ArrayList;

    move-result-object v4

    .line 872
    .local v4, listeners:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/jme3/input/controls/InputListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 873
    .local v3, listenerSize:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    :goto_1
    if-ltz v1, :cond_3

    .line 874
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/input/controls/InputListener;

    .line 875
    .local v2, listener:Lcom/jme3/input/controls/InputListener;
    instance-of v8, v2, Lcom/jme3/input/controls/TouchListener;

    if-eqz v8, :cond_2

    .line 876
    check-cast v2, Lcom/jme3/input/controls/TouchListener;

    .end local v2           #listener:Lcom/jme3/input/controls/InputListener;
    #getter for: Lcom/jme3/input/InputManager$Mapping;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/jme3/input/InputManager$Mapping;->access$100(Lcom/jme3/input/InputManager$Mapping;)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    invoke-interface {v2, v8, p1, v9}, Lcom/jme3/input/controls/TouchListener;->onTouch(Ljava/lang/String;Lcom/jme3/input/event/TouchEvent;F)V

    .line 873
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 869
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public update(F)V
    .locals 7
    .parameter "tpf"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 829
    iput p1, p0, Lcom/jme3/input/InputManager;->frameTPF:F

    .line 833
    const v2, 0x3c75c28f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/jme3/input/InputManager;->safeMode:Z

    .line 835
    iget-object v2, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    invoke-interface {v2}, Lcom/jme3/input/KeyInput;->getInputTimeNanos()J

    move-result-wide v0

    .line 836
    .local v0, currentTime:J
    iget-wide v5, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    sub-long v5, v0, v5

    iput-wide v5, p0, Lcom/jme3/input/InputManager;->frameDelta:J

    .line 838
    iput-boolean v3, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    .line 840
    iget-object v2, p0, Lcom/jme3/input/InputManager;->keys:Lcom/jme3/input/KeyInput;

    invoke-interface {v2}, Lcom/jme3/input/KeyInput;->update()V

    .line 841
    iget-object v2, p0, Lcom/jme3/input/InputManager;->mouse:Lcom/jme3/input/MouseInput;

    invoke-interface {v2}, Lcom/jme3/input/MouseInput;->update()V

    .line 842
    iget-object v2, p0, Lcom/jme3/input/InputManager;->joystick:Lcom/jme3/input/JoyInput;

    if-eqz v2, :cond_0

    .line 843
    iget-object v2, p0, Lcom/jme3/input/InputManager;->joystick:Lcom/jme3/input/JoyInput;

    invoke-interface {v2}, Lcom/jme3/input/JoyInput;->update()V

    .line 845
    :cond_0
    iget-object v2, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    if-eqz v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/jme3/input/InputManager;->touch:Lcom/jme3/input/TouchInput;

    invoke-interface {v2}, Lcom/jme3/input/TouchInput;->update()V

    .line 849
    :cond_1
    iput-boolean v4, p0, Lcom/jme3/input/InputManager;->eventsPermitted:Z

    .line 851
    invoke-direct {p0}, Lcom/jme3/input/InputManager;->processQueue()V

    .line 852
    invoke-direct {p0}, Lcom/jme3/input/InputManager;->invokeUpdateActions()V

    .line 854
    iget-wide v2, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/jme3/input/InputManager;->lastLastUpdateTime:J

    .line 855
    iput-wide v0, p0, Lcom/jme3/input/InputManager;->lastUpdateTime:J

    .line 856
    return-void

    .end local v0           #currentTime:J
    :cond_2
    move v2, v4

    .line 833
    goto :goto_0
.end method
