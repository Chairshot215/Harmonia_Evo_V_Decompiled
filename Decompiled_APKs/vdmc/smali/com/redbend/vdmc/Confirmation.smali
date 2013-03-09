.class public Lcom/redbend/vdmc/Confirmation;
.super Ljava/lang/Object;
.source "Confirmation.java"

# interfaces
.implements Lcom/redbend/vdm/MmiConfirmation;


# static fields
.field private static me:Lcom/redbend/vdmc/Confirmation;


# instance fields
.field private observer:Lcom/redbend/vdm/MmiObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/Confirmation;->me:Lcom/redbend/vdmc/Confirmation;

    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/MmiObserver;)V
    .locals 0
    .parameter "obs"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/redbend/vdmc/Confirmation;->observer:Lcom/redbend/vdm/MmiObserver;

    .line 14
    return-void
.end method

.method public static getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/Confirmation;
    .locals 1
    .parameter "obs"

    .prologue
    .line 17
    sget-object v0, Lcom/redbend/vdmc/Confirmation;->me:Lcom/redbend/vdmc/Confirmation;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/redbend/vdmc/Confirmation;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Confirmation;-><init>(Lcom/redbend/vdm/MmiObserver;)V

    sput-object v0, Lcom/redbend/vdmc/Confirmation;->me:Lcom/redbend/vdmc/Confirmation;

    .line 20
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Confirmation;->me:Lcom/redbend/vdmc/Confirmation;

    return-object v0
.end method


# virtual methods
.method public ConfirmCancel()V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/redbend/vdmc/Confirmation;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0}, Lcom/redbend/vdm/MmiObserver;->notifyCancelEvent()V

    .line 29
    return-void
.end method

.method public ConfirmResult(Z)V
    .locals 1
    .parameter "bResult"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/redbend/vdmc/Confirmation;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0, p1}, Lcom/redbend/vdm/MmiObserver;->notifyConfirmationResult(Z)V

    .line 25
    return-void
.end method

.method public display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;)Lcom/redbend/vdm/MmiResult;
    .locals 2
    .parameter "context"
    .parameter "defaultCommand"

    .prologue
    .line 35
    iget-object v0, p1, Lcom/redbend/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 37
    sget-object v0, Lcom/redbend/vdm/MmiResult;->TEXT_TOO_LONG:Lcom/redbend/vdm/MmiResult;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    goto :goto_0
.end method
