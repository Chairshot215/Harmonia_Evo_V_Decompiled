.class public Lcom/htc/idlescreen/base/widget/RingAnimation;
.super Ljava/lang/Object;
.source "RingAnimation.java"


# static fields
.field public static final MARKER_BOUNCE:Ljava/lang/String; = "touch_bounce"

.field public static final MARKER_DROP:Ljava/lang/String; = "drop"

.field public static final MARKER_DROP1:Ljava/lang/String; = "drop_1"

.field public static final MARKER_DROP2:Ljava/lang/String; = "drop_2"

.field public static final MARKER_DROP3:Ljava/lang/String; = "drop_3"

.field public static final MARKER_DROP4:Ljava/lang/String; = "drop_4"

.field public static final MARKER_DROP_ACTIVATE:Ljava/lang/String; = "drop_activate"

.field public static final MARKER_DROP_DEACTIVATE:Ljava/lang/String; = "drop_deactivate"

.field public static final MARKER_DROP_INDICATE:Ljava/lang/String; = "Drop_indicate"

.field public static final MARKER_DROP_INDICATE1:Ljava/lang/String; = "Drop_indicate_1"

.field public static final MARKER_DROP_INDICATE2:Ljava/lang/String; = "Drop_indicate_2"

.field public static final MARKER_DROP_INDICATE3:Ljava/lang/String; = "Drop_indicate_3"

.field public static final MARKER_DROP_INDICATE4:Ljava/lang/String; = "Drop_indicate_4"

.field public static final MARKER_DROP_OUT:Ljava/lang/String; = "drop_out"

.field public static final MARKER_DROP_OUT1:Ljava/lang/String; = "drop_out_1"

.field public static final MARKER_DROP_OUT2:Ljava/lang/String; = "drop_out_2"

.field public static final MARKER_DROP_OUT3:Ljava/lang/String; = "drop_out_3"

.field public static final MARKER_DROP_OUT4:Ljava/lang/String; = "drop_out_4"

.field public static final MARKER_DROP_OVER:Ljava/lang/String; = "drop_over"

.field public static final MARKER_DROP_OVER1:Ljava/lang/String; = "drop_over_1"

.field public static final MARKER_DROP_OVER2:Ljava/lang/String; = "drop_over_2"

.field public static final MARKER_DROP_OVER3:Ljava/lang/String; = "drop_over_3"

.field public static final MARKER_DROP_OVER4:Ljava/lang/String; = "drop_over_4"


# instance fields
.field private final mBase:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final mBounce:Lcom/htc/fusion/fx/Marker;

.field private final mDropActivate:Lcom/htc/fusion/fx/Marker;

.field private final mDropDeactivate:Lcom/htc/fusion/fx/Marker;

.field mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 7
    .parameter "base"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/idlescreen/base/widget/RingDropMotion;

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    .line 56
    iput-object p1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 58
    const-string v0, "touch_bounce"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBounce:Lcom/htc/fusion/fx/Marker;

    .line 59
    const-string v0, "drop_deactivate"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropDeactivate:Lcom/htc/fusion/fx/Marker;

    .line 60
    const-string v0, "drop_activate"

    invoke-virtual {p1, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropActivate:Lcom/htc/fusion/fx/Marker;

    .line 67
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "drop_over"

    const-string v4, "drop_out"

    const-string v5, "Drop_indicate"

    const-string v6, "drop"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "drop_over_1"

    const-string v4, "drop_out_1"

    const-string v5, "Drop_indicate_1"

    const-string v6, "drop_1"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 79
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "drop_over_2"

    const-string v4, "drop_out_2"

    const-string v5, "Drop_indicate_2"

    const-string v6, "drop_2"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "drop_over_3"

    const-string v4, "drop_out_3"

    const-string v5, "Drop_indicate_3"

    const-string v6, "drop_3"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 91
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v3, "drop_over_4"

    const-string v4, "drop_out_4"

    const-string v5, "Drop_indicate_4"

    const-string v6, "drop_4"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->getRingDropMotion(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/idlescreen/base/widget/RingDropMotion;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    return-void
.end method


# virtual methods
.method public bounce()V
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "touch_bounce"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBounce:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBounce:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 132
    return-void
.end method

.method public drop(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 176
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    aget-object v0, v1, p1

    .line 177
    .local v0, motion:Lcom/htc/idlescreen/base/widget/RingDropMotion;
    if-nez v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->drop()V

    .line 184
    :cond_1
    return-void
.end method

.method public dropActivate()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop_activate"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropActivate:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropActivate:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 140
    return-void
.end method

.method public dropDeactivate()V
    .locals 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v1, "drop_deactivate"

    iget-object v2, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropDeactivate:Lcom/htc/fusion/fx/Marker;

    iget v2, v2, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iget-object v3, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropDeactivate:Lcom/htc/fusion/fx/Marker;

    iget v3, v3, Lcom/htc/fusion/fx/Marker;->EndFrame:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fusion/fx/FxTimelineControl;->playWithName(Ljava/lang/String;II)V

    .line 136
    return-void
.end method

.method public dropIndicate(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    aget-object v0, v1, p1

    .line 166
    .local v0, motion:Lcom/htc/idlescreen/base/widget/RingDropMotion;
    if-nez v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 169
    :cond_0
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->dropIndicate()V

    .line 173
    :cond_1
    return-void
.end method

.method public dropOut(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    aget-object v0, v1, p1

    .line 155
    .local v0, motion:Lcom/htc/idlescreen/base/widget/RingDropMotion;
    if-nez v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 158
    :cond_0
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->dropOut()V

    .line 162
    :cond_1
    return-void
.end method

.method public dropOver(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    aget-object v0, v1, p1

    .line 144
    .local v0, motion:Lcom/htc/idlescreen/base/widget/RingDropMotion;
    if-nez v0, :cond_0

    .line 145
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mDropMotions:[Lcom/htc/idlescreen/base/widget/RingDropMotion;

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 147
    :cond_0
    if-eqz v0, :cond_1

    .line 148
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/RingDropMotion;->dropOver()V

    .line 151
    :cond_1
    return-void
.end method

.method public init(Lcom/htc/fusion/fx/MessageListener;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxPlaybackInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/FxPlaybackInfo;>;"
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 100
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 120
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxTimelineControl;->stop()V

    .line 121
    const-string v0, "lock_still"

    .line 122
    .local v0, lockStill:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "lock_still"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->containsMarker(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const-string v2, "lock_still"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->playMarker(Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxTimelineControl;->setFrame(F)V

    goto :goto_0
.end method

.method public setVibility(Z)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 117
    return-void
.end method

.method public uninit()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/idlescreen/base/widget/RingAnimation;->mBase:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 104
    return-void
.end method
