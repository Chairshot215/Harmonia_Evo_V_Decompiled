.class public Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessedMessageInfo"
.end annotation


# instance fields
.field private orgState:Lcom/android/internal/util/State;

.field private state:Lcom/android/internal/util/State;

.field private what:I


# direct methods
.method constructor <init>(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->update(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    return-void
.end method

.method private cn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public getOriginalState()Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->orgState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method public getState()Lcom/android/internal/util/State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method public getWhat()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->what:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->state:Lcom/android/internal/util/State;

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " orgState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->orgState:Lcom/android/internal/util/State;

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->cn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public update(Landroid/os/Message;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    iput v0, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->what:I

    iput-object p2, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->state:Lcom/android/internal/util/State;

    iput-object p3, p0, Lcom/android/internal/util/StateMachine$ProcessedMessageInfo;->orgState:Lcom/android/internal/util/State;

    return-void
.end method
