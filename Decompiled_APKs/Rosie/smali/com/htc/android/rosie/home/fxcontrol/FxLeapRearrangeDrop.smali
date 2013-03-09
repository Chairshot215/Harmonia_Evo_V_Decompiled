.class public Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;
.super Ljava/lang/Object;
.source "FxLeapRearrangeDrop.java"


# static fields
.field public static final DROP_TYPE_LEAP:I = 0x0

.field public static final DROP_TYPE_REMOVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "LeapRearrangeDrop"


# instance fields
.field private mDropType:I

.field private mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

.field private mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

.field private mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropDeActivateListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/FxDraggable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreen:I

.field private mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;


# direct methods
.method public constructor <init>(ILcom/htc/fusion/fx/controls/FxDropControl;)V
    .locals 2
    .parameter "screen"
    .parameter "fxDrag"

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    .line 19
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 20
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mDropType:I

    .line 69
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 82
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropDeActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 99
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    .line 142
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 179
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$5;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$5;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    .line 30
    invoke-virtual {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->setScreen(I)V

    .line 31
    invoke-direct {p0, p2}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->setFxDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/controls/FxDropControl;I)V
    .locals 2
    .parameter "fxDrag"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    .line 19
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 20
    iput-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mDropType:I

    .line 69
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$1;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$1;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 82
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$2;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropDeActivateListener:Lcom/htc/fusion/fx/MessageListener;

    .line 99
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$3;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    .line 142
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$4;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    .line 179
    new-instance v0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$5;

    invoke-direct {v0, p0}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop$5;-><init>(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)V

    iput-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    .line 35
    invoke-direct {p0, p1}, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->setFxDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)V

    .line 36
    iput p2, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mDropType:I

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    return v0
.end method

.method static synthetic access$100(Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;)Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    return-object v0
.end method

.method private setFxDrop(Lcom/htc/fusion/fx/controls/FxDropControl;)V
    .locals 2
    .parameter "fxDrop"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    .line 49
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropActivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropActivateListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 50
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropDeactivateSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropDeActivateListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 51
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 52
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOverSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOverListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 53
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDropControl;->getDropOutSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mOnDropOutListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getFxDrop()Lcom/htc/fusion/fx/controls/FxDropControl;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    return-object v0
.end method

.method public getScreen()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    return v0
.end method

.method public isRemoveType()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 26
    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mDropType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFxLeapRearrangeController(Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;)V
    .locals 0
    .parameter "leapRearrangeController"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxLeapRearrangeController:Lcom/htc/android/rosie/home/fxcontrol/IFxLeapRearrangeController;

    .line 63
    return-void
.end method

.method public setPositionTimeline(Lcom/htc/fusion/fx/FxTimelineControl;)V
    .locals 0
    .parameter "timelinePosition"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mTimelinePosition:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 67
    return-void
.end method

.method public setScreen(I)V
    .locals 0
    .parameter "screen"

    .prologue
    .line 40
    iput p1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/rosie/home/fxcontrol/FxLeapRearrangeDrop;->mFxDrop:Lcom/htc/fusion/fx/controls/FxDropControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
