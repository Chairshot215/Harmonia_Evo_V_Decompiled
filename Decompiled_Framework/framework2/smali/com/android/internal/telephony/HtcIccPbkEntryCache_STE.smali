.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_STE.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final DBG:Z = true

.field static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field static final EVENT_LOAD_PB_ADN_DONE:I = 0x8

.field static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_STE"


# instance fields
.field private mIsloading:Z

.field private mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhoneBookEntriesLength:[I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:I

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private pollingContext:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhoneBookEntriesLength:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5

    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    if-eq v3, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "HtcIccPbkEntryCache_STE"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySimPbkWaiter()V
    .locals 3

    const/4 v2, 0x0

    const-string v1, "notifySimPbkWaiter"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    aput v5, v3, v5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    if-ge v0, v3, :cond_1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v0, v2, 0xa

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    if-le v0, v3, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "AdnFull"

    invoke-direct {p0, p6, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-wide v1

    :cond_0
    iput-object p1, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    iput-object p2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    iput-object p5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    aput-object p3, v4, v6

    const/16 v4, 0x2b

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const/16 v4, 0x91

    iput v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    :goto_1
    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v4, v5, p6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v4, 0x4

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v1, v4

    goto :goto_0

    :cond_1
    const/16 v4, 0x81

    iput v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_1
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v2, v3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    iput v5, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    iput-object v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    iput p1, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v2, v3, p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    return-void
.end method

.method public dispose()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    const-string v4, "HtcIccPbkEntryCache_STE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    const-string v4, "HtcIccPbkEntryCache_STE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    if-eqz v3, :cond_2

    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method getFirstEmptyPbkRecord()Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getPBKEntrisLength()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhoneBookEntriesLength:[I

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v16, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v16

    if-lez v16, :cond_1

    const-string v16, "gsm.usim.anr.max-no"

    const-string v17, "1"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEmailNums()I

    move-result v16

    if-lez v16, :cond_2

    const-string v16, "gsm.usim.email.max-no"

    const-string v17, "1"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0xc0

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v5, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    const/4 v12, 0x1

    :cond_3
    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    const/16 v17, 0x6f3a

    const/16 v18, 0x8

    const/16 v19, 0x6f3a

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(III)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1
    const-string v16, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/AsyncResult;

    move-object/from16 v4, v16

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, [I

    move-object/from16 v14, v16

    check-cast v14, [I

    array-length v0, v14

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    const/16 v16, 0x0

    aget v10, v14, v16

    const/16 v16, 0xe

    move/from16 v0, v16

    if-ge v10, v0, :cond_4

    const/4 v10, 0x0

    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "maxAlphaTagLength is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const-string v16, "gsm.usim.alpha-tag.length"

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifySimPbkWaiter()V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v10, v10, -0xe

    goto :goto_1

    :cond_5
    const-string v16, "get wrong EF record size format"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v16, "get EF-ADN record size failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v16, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    iget-object v9, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/telephony/PhoneBookMemory;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "get PB length:total="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  used="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget v0, v9, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    iget v0, v9, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    iget v0, v9, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUsed:I

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "get PB length:total="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "  used="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUsed:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_7

    new-instance v6, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v6}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    add-int/lit8 v16, v8, 0x1

    move/from16 v0, v16

    iput v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    move/from16 v16, v0

    if-lez v16, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollPBList()V

    goto/16 :goto_0

    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v16, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :cond_9
    const-string v16, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mTotal:I

    const/16 v16, 0x0

    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v16, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    const-string v16, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v18, v16, v17

    add-int/lit8 v18, v18, -0x1

    aput v18, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->pollingContext:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    const-string v16, "load PB complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    new-instance v16, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v16, v0

    const/16 v17, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(I)Landroid/os/Message;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_a
    const-string v16, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iget-object v6, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_b
    const-string v16, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v16, v0

    if-eqz v16, :cond_c

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/CommandException;

    check-cast v16, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v7, v0, :cond_c

    const-string v16, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const-string v16, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v16, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    iget-object v6, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    iget v0, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_d
    const-string v16, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v16, v0

    if-eqz v16, :cond_e

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/internal/telephony/CommandException;

    check-cast v16, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v16, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    if-ne v7, v0, :cond_e

    const-string v16, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const-string v16, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const-string v16, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Message;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    add-int/lit8 v17, v13, -0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_f
    const-string v16, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    const-string v16, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v3, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookMemory(Landroid/os/Message;)V

    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mIsloading:Z

    goto :goto_0
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1

    const-string v0, "Does not support it"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->log(Ljava/lang/String;)V

    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    if-nez v0, :cond_0

    const-string v2, "error"

    invoke-direct {p0, p7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    iput-object p3, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    iput-object p6, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    aput-object p4, v2, v4

    const/16 v2, 0x2b

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    rem-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {v2, v3, p7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mMsgNumber:I

    invoke-virtual {p0, v2, v3, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_STE;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0x81

    iput v2, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_1
.end method
