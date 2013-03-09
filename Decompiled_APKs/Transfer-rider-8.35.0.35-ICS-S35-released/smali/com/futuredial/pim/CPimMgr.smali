.class public Lcom/futuredial/pim/CPimMgr;
.super Ljava/lang/Object;
.source "CPimMgr.java"


# instance fields
.field protected context:Landroid/content/Context;

.field private pim:Lcom/futuredial/pim/CPim;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    .line 15
    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    .line 19
    invoke-virtual {p0, p2}, Lcom/futuredial/pim/CPimMgr;->getInstance(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public DeleteData(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, nRes:I
    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v1}, Lcom/futuredial/pim/CPim;->DeleteWrittenData()I

    move-result v0

    .line 97
    :cond_0
    return v0
.end method

.method public SetAccount(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "sType"
    .parameter "sName"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v0, p1, p2}, Lcom/futuredial/pim/CPim;->SetAccount(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    return-void
.end method

.method public addNewOnePim(ILcom/futuredial/publicobj/Item;Z)I
    .locals 2
    .parameter "type"
    .parameter "objItem"
    .parameter "bWrite"

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    .local v0, nRes:I
    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    if-eqz v1, :cond_0

    .line 60
    if-nez p1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v1, p2, p3}, Lcom/futuredial/pim/CPim;->addnewItem(Lcom/futuredial/publicobj/Item;Z)I

    move-result v0

    .line 71
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    if-eqz p2, :cond_0

    .line 67
    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    invoke-virtual {v1, p2, p3}, Lcom/futuredial/pim/CPim;->addnewItem(Lcom/futuredial/publicobj/Item;Z)I

    move-result v0

    goto :goto_0
.end method

.method public getInstance(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 31
    new-instance v0, Lcom/futuredial/pim/G2Phonebook;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Phonebook;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    .line 53
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 34
    new-instance v0, Lcom/futuredial/pim/G2Calendar;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Calendar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 37
    new-instance v0, Lcom/futuredial/pim/G2Sms;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Sms;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 38
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 40
    new-instance v0, Lcom/futuredial/pim/G2BookMark;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2BookMark;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 42
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 44
    :cond_4
    new-instance v0, Lcom/futuredial/pim/G2File;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2File;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 46
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 47
    new-instance v0, Lcom/futuredial/pim/G2Task;

    iget-object v1, p0, Lcom/futuredial/pim/CPimMgr;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/futuredial/pim/G2Task;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0

    .line 51
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    goto :goto_0
.end method

.method public getPim()Lcom/futuredial/pim/CPim;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/futuredial/pim/CPimMgr;->pim:Lcom/futuredial/pim/CPim;

    return-object v0
.end method
