.class public abstract Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;
.super Lcom/htc/preference/HtcCheckBoxPreference;
.source "HtcAbstractCheckboxPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeInBackgroundListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_ENABLED:I = 0x4

.field private static final MESSAGE_ON_GET_VALUE:I = 0x1

.field private static final MESSAGE_ON_SET_VALUE:I = 0x2

.field private static final MESSAGE_ON_UPDATE_STATE:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNonUIHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->initialize(Landroid/content/Context;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected final dispatchEnabledMessage(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 345
    :goto_0
    return-void

    .line 342
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to enable/disbale the checkbox"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchGetValueMessage()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to update the state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final dispatchSetValueMessage()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 323
    :goto_0
    return-void

    .line 320
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract getCustomDatabaseDefaultValue()Z
.end method

.method protected abstract getCustomDatabaseKey()Ljava/lang/String;
.end method

.method protected abstract getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOff()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummaryOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setKey(Ljava/lang/String;)V

    .line 144
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomSummaryOn()Ljava/lang/String;

    move-result-object v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 168
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomSummaryOff()Ljava/lang/String;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_5

    .line 170
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setSummaryOff(Ljava/lang/CharSequence;)V

    .line 174
    :cond_5
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setPersistent(Z)V

    .line 175
    return-void
.end method

.method protected onChange(Z)Z
    .locals 1
    .parameter "newState"

    .prologue
    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method protected final onClick()V
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 269
    .local v0, newValue:Z
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->onChange(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 275
    :goto_1
    return-void

    .line 268
    .end local v0           #newValue:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 272
    .restart local v0       #newValue:Z
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setChecked(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->dispatchSetValueMessage()V

    goto :goto_1
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 287
    iput-object p2, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    .line 288
    iput-object p3, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 289
    return-void
.end method

.method public final onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "msg"

    .prologue
    .line 350
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v4, p0, :cond_0

    .line 351
    const/4 v4, 0x0

    .line 387
    :goto_0
    return v4

    .line 354
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 355
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomDatabaseTable()Lcom/android/settings/framework/database/HtcDatabaseTable;

    move-result-object v2

    .line 356
    .local v2, table:Lcom/android/settings/framework/database/HtcDatabaseTable;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomDatabaseKey()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->getCustomDatabaseDefaultValue()Z

    move-result v3

    .line 359
    .local v3, value:Z
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 381
    :goto_1
    iget-object v4, p0, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    new-instance v6, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 387
    const/4 v4, 0x1

    goto :goto_0

    .line 361
    :pswitch_0
    sget-object v4, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v2, v4, :cond_1

    .line 362
    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 366
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->onHandledGetValueMessage(Z)V

    goto :goto_1

    .line 364
    :cond_1
    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_2

    .line 370
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->isChecked()Z

    move-result v3

    .line 371
    sget-object v4, Lcom/android/settings/framework/database/HtcDatabaseTable;->SYSTEM:Lcom/android/settings/framework/database/HtcDatabaseTable;

    if-ne v2, v4, :cond_2

    .line 372
    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 376
    :goto_3
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->onHandledSetValueMessage(Z)V

    goto :goto_1

    .line 374
    :cond_2
    invoke-static {v0, v1, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_3

    .line 359
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
    const/4 v3, 0x0

    .line 408
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v4, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 416
    .local v1, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v4, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v4, p0, :cond_0

    .line 420
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 438
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 426
    :pswitch_0
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 427
    .local v2, state:Z
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setChecked(Z)V

    goto :goto_1

    .line 434
    .end local v2           #state:Z
    :pswitch_1
    iget-object v3, v1, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 435
    .local v0, enabled:Z
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->setEnabled(Z)V

    goto :goto_1

    .line 420
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
    .line 396
    return-void
.end method

.method protected onHandledSetValueMessage(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 404
    return-void
.end method

.method public final onResumeInBackground(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->updateState()V

    .line 279
    return-void
.end method

.method public final updateState()V
    .locals 0

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractCheckboxPreference;->dispatchGetValueMessage()V

    .line 250
    return-void
.end method
