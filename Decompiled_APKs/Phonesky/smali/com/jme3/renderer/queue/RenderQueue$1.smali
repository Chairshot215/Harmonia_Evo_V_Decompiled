.class synthetic Lcom/jme3/renderer/queue/RenderQueue$1;
.super Ljava/lang/Object;
.source "RenderQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/renderer/queue/RenderQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

.field static final synthetic $SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 225
    invoke-static {}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->values()[Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    :try_start_0
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Inherit:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_0
    :try_start_1
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_1
    :try_start_2
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_2
    :try_start_3
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_3
    :try_start_4
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    .line 190
    :goto_4
    invoke-static {}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->values()[Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    :try_start_5
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Gui:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    :try_start_6
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    :try_start_7
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Sky:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    :try_start_8
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Transparent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    :try_start_9
    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$Bucket:[I

    sget-object v1, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Translucent:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    invoke-virtual {v1}, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_9
    return-void

    :catch_0
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    goto :goto_5

    .line 225
    :catch_5
    move-exception v0

    goto :goto_4

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_2

    :catch_8
    move-exception v0

    goto :goto_1

    :catch_9
    move-exception v0

    goto :goto_0
.end method
