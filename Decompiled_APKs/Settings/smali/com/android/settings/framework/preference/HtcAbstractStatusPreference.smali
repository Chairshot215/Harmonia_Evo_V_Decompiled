.class public abstract Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractStatusPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnResumeListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnPauseListener;
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;


# static fields
.field private static final MESSAGE_ON_GET_SUMMARY:I = 0x1

.field private static final MESSAGE_ON_SET_SUMMARY:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mNonUIHandler:Landroid/os/Handler;

.field private mSummary:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->initialize(Landroid/content/Context;)V

    .line 92
    return-void
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setKey(Ljava/lang/String;)V

    .line 114
    .end local v1           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v1

    .line 121
    .restart local v1       #text:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 126
    :cond_2
    const-string v2, " "

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSelectable(Z)V

    .line 128
    return-void
.end method


# virtual methods
.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected abstract isConstantSummary()Z
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 227
    iput-object p2, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUIHandler:Landroid/os/Handler;

    .line 228
    iput-object p3, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 229
    return-void
.end method

.method protected onGetSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string v0, " "

    return-object v0
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 235
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v1, p0, :cond_0

    .line 236
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->isConstantSummary()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 240
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onGetSummary()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    .line 243
    :cond_2
    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    iget-object v3, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mSummary:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public final onHandleUIMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 254
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/framework/os/HtcMessageParcel;

    .line 262
    .local v0, parcel:Lcom/android/settings/framework/os/HtcMessageParcel;
    iget-object v2, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->id:Ljava/lang/Object;

    if-ne v2, p0, :cond_0

    .line 266
    iget-object v1, v0, Lcom/android/settings/framework/os/HtcMessageParcel;->args:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->onSetSummary(Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 278
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->updateSummary()V

    .line 283
    return-void
.end method

.method protected onSetSummary(Ljava/lang/String;)V
    .locals 0
    .parameter "summary"

    .prologue
    .line 216
    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method protected updateSummary()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to update the summary."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected updateSummary(Ljava/lang/String;)V
    .locals 3
    .parameter "summary"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->mUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/framework/os/HtcMessageParcel;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/framework/os/HtcMessageParcel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractStatusPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to update the summary."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
