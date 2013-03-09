.class abstract Lcom/htc/home/personalize/opensense/Gesture$Behavior;
.super Ljava/lang/Object;
.source "Gesture.java"

# interfaces
.implements Lcom/htc/home/personalize/opensense/Gesture$IBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/Gesture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Behavior"
.end annotation


# instance fields
.field protected final OFFSET_X:I

.field protected final OFFSET_Y:I

.field protected mBubble:Z

.field final synthetic this$0:Lcom/htc/home/personalize/opensense/Gesture;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/Gesture;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 346
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->this$0:Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->mBubble:Z

    .line 348
    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->OFFSET_X:I

    .line 349
    iput v1, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->OFFSET_Y:I

    return-void
.end method


# virtual methods
.method public analysis(Lcom/htc/home/personalize/opensense/Gesture$Event;)V
    .locals 1
    .parameter "me"

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->mBubble:Z

    .line 353
    return-void
.end method

.method public isBubble()Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->mBubble:Z

    return v0
.end method

.method public stopBubble()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/Gesture$Behavior;->mBubble:Z

    .line 361
    return-void
.end method
