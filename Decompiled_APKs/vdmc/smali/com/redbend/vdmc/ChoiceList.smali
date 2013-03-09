.class public Lcom/redbend/vdmc/ChoiceList;
.super Ljava/lang/Object;
.source "ChoiceList.java"

# interfaces
.implements Lcom/redbend/vdm/MmiChoiceList;


# static fields
.field private static me:Lcom/redbend/vdmc/ChoiceList;


# instance fields
.field private nLength:I

.field private observer:Lcom/redbend/vdm/MmiObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/redbend/vdmc/ChoiceList;->me:Lcom/redbend/vdmc/ChoiceList;

    return-void
.end method

.method public constructor <init>(Lcom/redbend/vdm/MmiObserver;)V
    .locals 1
    .parameter "obs"

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbend/vdmc/ChoiceList;->nLength:I

    .line 13
    iput-object p1, p0, Lcom/redbend/vdmc/ChoiceList;->observer:Lcom/redbend/vdm/MmiObserver;

    .line 14
    return-void
.end method

.method public static getInstance(Lcom/redbend/vdm/MmiObserver;)Lcom/redbend/vdmc/ChoiceList;
    .locals 1
    .parameter "obs"

    .prologue
    .line 17
    sget-object v0, Lcom/redbend/vdmc/ChoiceList;->me:Lcom/redbend/vdmc/ChoiceList;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/redbend/vdmc/ChoiceList;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/ChoiceList;-><init>(Lcom/redbend/vdm/MmiObserver;)V

    sput-object v0, Lcom/redbend/vdmc/ChoiceList;->me:Lcom/redbend/vdmc/ChoiceList;

    .line 20
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/ChoiceList;->me:Lcom/redbend/vdmc/ChoiceList;

    return-object v0
.end method


# virtual methods
.method public ChoiceListCancel()V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/redbend/vdmc/ChoiceList;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v0}, Lcom/redbend/vdm/MmiObserver;->notifyCancelEvent()V

    .line 35
    return-void
.end method

.method public ChoiceListSelection(I)V
    .locals 2
    .parameter "nSelect"

    .prologue
    .line 24
    iget v1, p0, Lcom/redbend/vdmc/ChoiceList;->nLength:I

    if-gtz v1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    if-ltz p1, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    .local v0, bitflags:I
    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/redbend/vdmc/ChoiceList;->observer:Lcom/redbend/vdm/MmiObserver;

    invoke-interface {v1, v0}, Lcom/redbend/vdm/MmiObserver;->notfiyChoicelistSelection(I)V

    goto :goto_0
.end method

.method public display(Lcom/redbend/vdm/MmiViewContext;[Ljava/lang/String;IZ)Lcom/redbend/vdm/MmiResult;
    .locals 3
    .parameter "context"
    .parameter "items"
    .parameter "bitflags"
    .parameter "isMultipleSelection"

    .prologue
    .line 43
    array-length v2, p2

    iput v2, p0, Lcom/redbend/vdmc/ChoiceList;->nLength:I

    .line 45
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 46
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_0

    .line 47
    const-string v0, "*"

    .line 45
    .local v0, box:Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v0           #box:Ljava/lang/String;
    :cond_0
    const-string v0, " "

    .restart local v0       #box:Ljava/lang/String;
    goto :goto_1

    .line 53
    .end local v0           #box:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/redbend/vdm/MmiResult;->OK:Lcom/redbend/vdm/MmiResult;

    return-object v2
.end method
