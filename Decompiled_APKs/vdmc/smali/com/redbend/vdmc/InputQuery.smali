.class public Lcom/redbend/vdmc/InputQuery;
.super Ljava/lang/Object;
.source "InputQuery.java"

# interfaces
.implements Lcom/redbend/vdm/MmiInputQuery;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "InputQuery"

.field private static me:Lcom/redbend/vdmc/InputQuery;


# instance fields
.field private observer:Lcom/redbend/vdm/MmiObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/InputQuery;->me:Lcom/redbend/vdmc/InputQuery;

    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/MmiObserver;)V
    .locals 0
    .parameter "obs"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/redbend/vdmc/InputQuery;->observer:Lcom/redbend/vdm/MmiObserver;

    .line 15
    return-void
.end method

.method public static getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/InputQuery;
    .locals 1
    .parameter "obs"

    .prologue
    .line 18
    sget-object v0, Lcom/redbend/vdmc/InputQuery;->me:Lcom/redbend/vdmc/InputQuery;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/redbend/vdmc/InputQuery;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/InputQuery;-><init>(Lcom/redbend/vdm/MmiObserver;)V

    sput-object v0, Lcom/redbend/vdmc/InputQuery;->me:Lcom/redbend/vdmc/InputQuery;

    .line 21
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/InputQuery;->me:Lcom/redbend/vdmc/InputQuery;

    return-object v0
.end method


# virtual methods
.method public InputCancel()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/redbend/vdmc/InputQuery;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0}, Lcom/redbend/vdm/MmiObserver;->notifyCancelEvent()V

    .line 30
    return-void
.end method

.method public InputResult(Ljava/lang/String;)V
    .locals 1
    .parameter "szResult"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/redbend/vdmc/InputQuery;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0, p1}, Lcom/redbend/vdm/MmiObserver;->notifyInputResult(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public display(Lcom/redbend/vdm/MmiViewContext;Lcom/redbend/vdm/MmiInputQuery$InputType;Lcom/redbend/vdm/MmiInputQuery$EchoType;ILjava/lang/String;)Lcom/redbend/vdm/MmiResult;
    .locals 3
    .parameter "context"
    .parameter "inputType"
    .parameter "echoType"
    .parameter "maxLength"
    .parameter "defaultInput"

    .prologue
    .line 35
    const-string v0, "InputQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vDM Client InputQuery::display Text = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/redbend/vdm/MmiViewContext;->displayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    const-string v0, "InputQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vDM Client InputQuery::display InputType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/redbend/vdm/MmiInputQuery$InputType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    sget-object v0, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    return-object v0
.end method
