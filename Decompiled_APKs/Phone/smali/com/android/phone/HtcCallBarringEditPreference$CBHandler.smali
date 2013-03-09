.class Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;
.super Landroid/os/Handler;
.source "HtcCallBarringEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCallBarringEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CBHandler"
.end annotation


# static fields
.field private static final MESSAGE_QUERY_CB:I = 0x0

.field private static final MESSAGE_UPDATE_CB:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCallBarringEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/HtcCallBarringEditPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/HtcCallBarringEditPreference;Lcom/android/phone/HtcCallBarringEditPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;-><init>(Lcom/android/phone/HtcCallBarringEditPreference;)V

    return-void
.end method

.method private handleException(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 312
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 314
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 316
    .local v2, exception:Ljava/lang/Throwable;
    if-eqz v2, :cond_3

    .line 318
    instance-of v4, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v4, :cond_2

    .line 319
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .end local v2           #exception:Ljava/lang/Throwable;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 320
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->DUE_TO_FDN:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_0

    .line 321
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v6, 0x2711

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 352
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    .line 324
    .restart local v1       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->NEGATIVE_PW_CHECK:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_1

    .line 325
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v6, 0x2715

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0

    .line 328
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->NUM_OF_PW_ATTEMPTS_VIOLATION:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v6, 0x2716

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0

    .line 334
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v6, 0x12c

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0

    .line 337
    .restart local v2       #exception:Ljava/lang/Throwable;
    :cond_3
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v4, v4, Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 347
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v6, 0x190

    invoke-interface {v4, v5, v6}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    goto :goto_0

    .line 352
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleGetCBMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 226
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 227
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 228
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 229
    .local v2, exception:Ljava/lang/Throwable;
    instance-of v5, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_2

    .line 230
    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .end local v2           #exception:Ljava/lang/Throwable;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    .line 231
    .local v1, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v5, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-static {v5, v3}, Lcom/android/phone/HtcCallBarringEditPreference;->access$112(Lcom/android/phone/HtcCallBarringEditPreference;I)I

    .line 233
    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #getter for: Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I
    invoke-static {v5}, Lcom/android/phone/HtcCallBarringEditPreference;->access$100(Lcom/android/phone/HtcCallBarringEditPreference;)I

    move-result v5

    const/4 v6, 0x3

    if-gt v5, v6, :cond_2

    .line 234
    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CallBarring hit error, mFacility : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #getter for: Lcom/android/phone/HtcCallBarringEditPreference;->mFacility:I
    invoke-static {v7}, Lcom/android/phone/HtcCallBarringEditPreference;->access$200(Lcom/android/phone/HtcCallBarringEditPreference;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retryCount : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #getter for: Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I
    invoke-static {v7}, Lcom/android/phone/HtcCallBarringEditPreference;->access$100(Lcom/android/phone/HtcCallBarringEditPreference;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/HtcCallBarringEditPreference;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/HtcCallBarringEditPreference;->access$300(Lcom/android/phone/HtcCallBarringEditPreference;Ljava/lang/String;)V

    .line 235
    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-nez v6, :cond_1

    :goto_0
    invoke-virtual {v5, v3}, Lcom/android/phone/HtcCallBarringEditPreference;->queryCB(Z)V

    .line 253
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    :goto_1
    return-void

    .restart local v1       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    move v3, v4

    .line 235
    goto :goto_0

    .line 241
    .end local v1           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #setter for: Lcom/android/phone/HtcCallBarringEditPreference;->retryCount:I
    invoke-static {v5, v4}, Lcom/android/phone/HtcCallBarringEditPreference;->access$102(Lcom/android/phone/HtcCallBarringEditPreference;I)I

    .line 244
    iget v5, p1, Landroid/os/Message;->arg2:I

    if-nez v5, :cond_3

    .line 245
    iget-object v4, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v4, v4, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-interface {v4, v5, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 250
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->handleException(Landroid/os/Message;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->updateStateByResultMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 247
    :cond_3
    iget-object v3, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v3, v3, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v5, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-interface {v3, v5, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    goto :goto_2
.end method

.method private handleUpdateCBMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 257
    iget-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v2, v2, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Lcom/htc/preference/HtcPreference;Z)V

    .line 258
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->handleException(Landroid/os/Message;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 261
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 262
    .local v1, exception:Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 263
    iget-object v2, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #getter for: Lcom/android/phone/HtcCallBarringEditPreference;->mParrent:Lcom/android/phone/HtcCallBarringEditPreference$Parrent;
    invoke-static {v2}, Lcom/android/phone/HtcCallBarringEditPreference;->access$400(Lcom/android/phone/HtcCallBarringEditPreference;)Lcom/android/phone/HtcCallBarringEditPreference$Parrent;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/phone/HtcCallBarringEditPreference$Parrent;->queryAll(Z)V

    .line 266
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #exception:Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method private updateStateByResultMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 269
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 270
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 275
    .local v2, facility:I
    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [I

    move-object v1, v6

    check-cast v1, [I

    .line 276
    .local v1, cbInfo:[I
    const/4 v4, 0x0

    .line 278
    .local v4, info:I
    if-eqz v1, :cond_0

    array-length v6, v1

    if-nez v6, :cond_1

    .line 282
    :cond_0
    iget-object v6, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    iget-object v6, v6, Lcom/android/phone/HtcCallBarringEditPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v7, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/16 v8, 0x190

    invoke-interface {v6, v7, v8}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Lcom/htc/preference/HtcPreference;I)V

    .line 299
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    array-length v5, v1

    .local v5, length:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 285
    aget v6, v1, v3

    or-int/2addr v4, v6

    .line 284
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 293
    :cond_2
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_3

    .line 294
    iget-object v6, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    #calls: Lcom/android/phone/HtcCallBarringEditPreference;->setEnabled(II)V
    invoke-static {v6, v2, v4}, Lcom/android/phone/HtcCallBarringEditPreference;->access$500(Lcom/android/phone/HtcCallBarringEditPreference;II)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v6, p0, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->this$0:Lcom/android/phone/HtcCallBarringEditPreference;

    const/4 v7, 0x0

    #calls: Lcom/android/phone/HtcCallBarringEditPreference;->setEnabled(II)V
    invoke-static {v6, v2, v7}, Lcom/android/phone/HtcCallBarringEditPreference;->access$500(Lcom/android/phone/HtcCallBarringEditPreference;II)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    .line 215
    .local v0, what:I
    if-nez v0, :cond_1

    .line 216
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->handleGetCBMessage(Landroid/os/Message;)V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/phone/HtcCallBarringEditPreference$CBHandler;->handleUpdateCBMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
