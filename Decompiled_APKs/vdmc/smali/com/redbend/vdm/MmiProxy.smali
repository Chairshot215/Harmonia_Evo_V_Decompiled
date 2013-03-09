.class Lcom/redbend/vdm/MmiProxy;
.super Ljava/lang/Object;
.source "MmiProxy.java"

# interfaces
.implements Lcom/redbend/vdm/MmiObserver;


# instance fields
.field private factory:Lcom/redbend/vdm/MmiFactory;

.field private mmiProgress:Lcom/redbend/vdm/MmiProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 107
    invoke-static {}, Lcom/redbend/vdm/MmiProxy;->initIDs()V

    .line 108
    return-void
.end method

.method constructor <init>(Lcom/redbend/vdm/MmiFactory;)V
    .locals 0
    .parameter "mmiFactory"

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    .line 18
    invoke-direct {p0}, Lcom/redbend/vdm/MmiProxy;->initNative()V

    .line 19
    return-void
.end method

.method private static native initIDs()V
.end method

.method private native initNative()V
.end method


# virtual methods
.method public native destroy()V
.end method

.method protected displayChoiceList(Ljava/lang/String;II[Ljava/lang/String;IZ)I
    .locals 3
    .parameter "displayText"
    .parameter "minDT"
    .parameter "maxDT"
    .parameter "items"
    .parameter "defaultSelection"
    .parameter "isMultipleSelection"

    .prologue
    .line 78
    iget-object v2, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    invoke-interface {v2, p0}, Lcom/redbend/vdm/MmiFactory;->createChoiceListDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiChoiceList;

    move-result-object v0

    .line 79
    .local v0, choiceList:Lcom/redbend/vdm/MmiChoiceList;
    new-instance v2, Lcom/redbend/vdm/MmiViewContext;

    invoke-direct {v2, p1, p2, p3}, Lcom/redbend/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v2, p4, p5, p6}, Lcom/redbend/vdm/MmiChoiceList;->display(Lcom/redbend/vdm/MmiViewContext;[Ljava/lang/String;IZ)Lcom/redbend/vdm/MmiResult;

    move-result-object v1

    .line 81
    .local v1, result:Lcom/redbend/vdm/MmiResult;
    invoke-virtual {v1}, Lcom/redbend/vdm/MmiResult;->ordinal()I

    move-result v2

    return v2
.end method

.method protected displayConfirmation(Ljava/lang/String;III)I
    .locals 4
    .parameter "displayText"
    .parameter "minDT"
    .parameter "maxDT"
    .parameter "defaultCommand"

    .prologue
    .line 59
    iget-object v2, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    invoke-interface {v2, p0}, Lcom/redbend/vdm/MmiFactory;->createConfirmationDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiConfirmation;

    move-result-object v0

    .line 60
    .local v0, confirmation:Lcom/redbend/vdm/MmiConfirmation;
    new-instance v2, Lcom/redbend/vdm/MmiViewContext;

    invoke-direct {v2, p1, p2, p3}, Lcom/redbend/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;->values()[Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;

    move-result-object v3

    aget-object v3, v3, p4

    invoke-interface {v0, v2, v3}, Lcom/redbend/vdm/MmiConfirmation;->display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiConfirmation$ConfirmCommand;)Lcom/redbend/vdm/MmiResult;

    move-result-object v1

    .line 62
    .local v1, result:Lcom/redbend/vdm/MmiResult;
    invoke-virtual {v1}, Lcom/redbend/vdm/MmiResult;->ordinal()I

    move-result v2

    return v2
.end method

.method protected displayInfoMsg(Ljava/lang/String;III)I
    .locals 4
    .parameter "displayText"
    .parameter "minDT"
    .parameter "maxDT"
    .parameter "type"

    .prologue
    .line 52
    iget-object v2, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    invoke-interface {v2, p0}, Lcom/redbend/vdm/MmiFactory;->createInfoMsgDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiInfoMsg;

    move-result-object v0

    .line 53
    .local v0, infoMsg:Lcom/redbend/vdm/MmiInfoMsg;
    new-instance v2, Lcom/redbend/vdm/MmiViewContext;

    invoke-direct {v2, p1, p2, p3}, Lcom/redbend/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lcom/redbend/vdm/MmiInfoMsg$InfoType;->values()[Lcom/redbend/vdm/MmiInfoMsg$InfoType;

    move-result-object v3

    aget-object v3, v3, p4

    invoke-interface {v0, v2, v3}, Lcom/redbend/vdm/MmiInfoMsg;->display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiInfoMsg$InfoType;)Lcom/redbend/vdm/MmiResult;

    move-result-object v1

    .line 55
    .local v1, result:Lcom/redbend/vdm/MmiResult;
    invoke-virtual {v1}, Lcom/redbend/vdm/MmiResult;->ordinal()I

    move-result v2

    return v2
.end method

.method protected displayInputQuery(Ljava/lang/String;IIIIILjava/lang/String;)I
    .locals 7
    .parameter "displayText"
    .parameter "minDT"
    .parameter "maxDT"
    .parameter "inputType"
    .parameter "echoType"
    .parameter "maxLength"
    .parameter "defaultInput"

    .prologue
    .line 68
    iget-object v1, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    invoke-interface {v1, p0}, Lcom/redbend/vdm/MmiFactory;->createInputQueryDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiInputQuery;

    move-result-object v0

    .line 69
    .local v0, inputQuery:Lcom/redbend/vdm/MmiInputQuery;
    new-instance v1, Lcom/redbend/vdm/MmiViewContext;

    invoke-direct {v1, p1, p2, p3}, Lcom/redbend/vdm/MmiViewContext;-><init>(Ljava/lang/String;II)V

    invoke-static {}, Lcom/redbend/vdm/MmiInputQuery$InputType;->values()[Lcom/redbend/vdm/MmiInputQuery$InputType;

    move-result-object v2

    aget-object v2, v2, p4

    invoke-static {}, Lcom/redbend/vdm/MmiInputQuery$EchoType;->values()[Lcom/redbend/vdm/MmiInputQuery$EchoType;

    move-result-object v3

    aget-object v3, v3, p5

    move v4, p6

    move-object v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/redbend/vdm/MmiInputQuery;->display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiInputQuery$InputType;Lcom/redbend/vdm/MmiInputQuery$EchoType;ILjava/lang/String;)Lcom/redbend/vdm/MmiResult;

    move-result-object v6

    .line 72
    .local v6, result:Lcom/redbend/vdm/MmiResult;
    invoke-virtual {v6}, Lcom/redbend/vdm/MmiResult;->ordinal()I

    move-result v1

    return v1
.end method

.method public notfiyChoicelistSelection(I)V
    .locals 0
    .parameter "bitflags"

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyChoicelistSeclectionResult(I)V

    .line 40
    return-void
.end method

.method public notifyCancelEvent()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyCancelEvent()V

    .line 44
    return-void
.end method

.method public notifyConfirmationResult(Z)V
    .locals 0
    .parameter "confirmed"

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyConfirmationResult(Z)V

    .line 32
    return-void
.end method

.method public notifyInfoMsgClosed()V
    .locals 0

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyInfoMsgClosed()V

    .line 28
    return-void
.end method

.method public notifyInputResult(Ljava/lang/String;)V
    .locals 0
    .parameter "userInput"

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyInputResult(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public notifyTimeoutEvent()V
    .locals 0

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/redbend/vdm/MmiProxy;->vdmNotifyTimeoutEvent()V

    .line 48
    return-void
.end method

.method protected updateProgress(II)V
    .locals 1
    .parameter "current"
    .parameter "total"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/redbend/vdm/MmiProxy;->factory:Lcom/redbend/vdm/MmiFactory;

    invoke-interface {v0, p2}, Lcom/redbend/vdm/MmiFactory;->createProgress(I)Lcom/redbend/vdm/MmiProgress;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdm/MmiProxy;->mmiProgress:Lcom/redbend/vdm/MmiProgress;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lcom/redbend/vdm/MmiProxy;->mmiProgress:Lcom/redbend/vdm/MmiProgress;

    invoke-interface {v0, p1, p2}, Lcom/redbend/vdm/MmiProgress;->update(II)V

    .line 93
    :cond_0
    return-void
.end method

.method protected native vdmNotifyCancelEvent()V
.end method

.method protected native vdmNotifyChoicelistSeclectionResult(I)V
.end method

.method protected native vdmNotifyConfirmationResult(Z)V
.end method

.method protected native vdmNotifyInfoMsgClosed()V
.end method

.method protected native vdmNotifyInputResult(Ljava/lang/String;)V
.end method

.method protected native vdmNotifyTimeoutEvent()V
.end method
