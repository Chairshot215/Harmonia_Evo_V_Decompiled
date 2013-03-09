.class public Lcom/redbend/vdmc/MmiEngine;
.super Ljava/lang/Object;
.source "MmiEngine.java"

# interfaces
.implements Lcom/redbend/vdm/MmiFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public createChoiceListDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiChoiceList;
    .locals 1
    .parameter "observer"

    .prologue
    .line 24
    invoke-static {p1}, Lcom/redbend/vdmc/ChoiceList;->getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/ChoiceList;

    move-result-object v0

    return-object v0
.end method

.method public createConfirmationDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiConfirmation;
    .locals 1
    .parameter "observer"

    .prologue
    .line 16
    invoke-static {p1}, Lcom/redbend/vdmc/Confirmation;->getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/Confirmation;

    move-result-object v0

    return-object v0
.end method

.method public createInfoMsgDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiInfoMsg;
    .locals 1
    .parameter "observer"

    .prologue
    .line 12
    invoke-static {p1}, Lcom/redbend/vdmc/InfoMsg;->getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/InfoMsg;

    move-result-object v0

    return-object v0
.end method

.method public createInputQueryDlg(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdm/MmiInputQuery;
    .locals 1
    .parameter "observer"

    .prologue
    .line 20
    invoke-static {p1}, Lcom/redbend/vdmc/InputQuery;->getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/InputQuery;

    move-result-object v0

    return-object v0
.end method

.method public createProgress(I)Lcom/redbend/vdm/MmiProgress;
    .locals 1
    .parameter "total"

    .prologue
    .line 28
    invoke-static {}, Lcom/redbend/vdmc/ProgressDialog;->getInstance()Lcom/redbend/vdmc/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
