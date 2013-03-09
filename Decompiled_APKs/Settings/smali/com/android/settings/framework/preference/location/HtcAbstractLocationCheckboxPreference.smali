.class public abstract Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAbstractLocationCheckboxPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_GET_VALUE:I = 0x1

.field private static final MESSAGE_ON_SET_VALUE:I = 0x2

.field private static final MESSAGE_ON_UPDATE_ENABLED:I = 0x4

.field private static final MESSAGE_ON_UPDATE_STATE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNonUIHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 113
    return-void
.end method


# virtual methods
.method protected final dispatchGetValueMessage()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to update the state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetEnabledMessage(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetValueMessage()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    :goto_0
    return-void

    .line 270
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, text:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setKey(Ljava/lang/String;)V

    .line 136
    .end local v0           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0       #text:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_4

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 160
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setPersistent(Z)V

    .line 161
    return-void
.end method

.method protected final onClick()V
    .locals 2

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 219
    .local v0, newValue:Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :goto_1
    return-void

    .line 218
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 222
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->dispatchSetValueMessage()V

    goto :goto_1
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 237
    iput-object p2, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    .line 238
    iput-object p3, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 239
    return-void
.end method

.method protected abstract onGetValue()Z
.end method

.method public final onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 309
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 310
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 312
    :cond_0
    const/4 v0, 0x0

    .line 314
    .local v0, value:Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 328
    :goto_1
    iget-object v1, p0, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    new-instance v3, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 334
    const/4 v1, 0x1

    goto :goto_0

    .line 316
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onGetValue()Z

    move-result v0

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onHandledGetValueMessage(Z)V

    goto :goto_1

    .line 321
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->isChecked()Z

    move-result v0

    .line 322
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onSetValue(Z)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->onHandledSetValueMessage(Z)V

    goto :goto_1

    .line 314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onHandleUIMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 381
    :goto_0
    return v3

    .line 358
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 361
    .local v1, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-eq v3, p0, :cond_2

    move v3, v4

    .line 362
    goto :goto_0

    .line 365
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 381
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 371
    :pswitch_0
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 372
    .local v2, state:Z
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    goto :goto_1

    .line 375
    .end local v2           #state:Z
    :pswitch_1
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 376
    .local v0, enabled:Z
    if-nez v0, :cond_3

    .line 377
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setChecked(Z)V

    .line 378
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 365
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onHandledGetValueMessage(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 342
    return-void
.end method

.method protected onHandledSetValueMessage(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 349
    return-void
.end method

.method public final onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->updateState()V

    .line 229
    return-void
.end method

.method protected abstract onSetValue(Z)V
.end method

.method public final updateState()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/location/HtcAbstractLocationCheckboxPreference;->dispatchGetValueMessage()V

    .line 210
    return-void
.end method
