.class abstract Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 130
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 133
    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 134
    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 140
    iput-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public abstract getButtonId()I
.end method

.method public abstract getButtonImageId(Z)I
.end method

.method public abstract getIndicatorId()I
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 298
    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 314
    :goto_0
    return v0

    .line 308
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 247
    iget-boolean v0, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 248
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 267
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 268
    iget-boolean v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 269
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 272
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 280
    :cond_1
    return-void

    .line 250
    :pswitch_0
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 251
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 254
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 255
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 258
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 259
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 262
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 263
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 273
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 274
    iput-boolean v4, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 275
    iget-object v1, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter "context"
    .parameter "views"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonId()I

    move-result v0

    .line 203
    .local v0, buttonId:I
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getIndicatorId()I

    move-result v1

    .line 204
    .local v1, indicatorId:I
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getPosition()I

    move-result v2

    .line 205
    .local v2, pos:I
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 233
    :goto_0
    :pswitch_0
    return-void

    .line 207
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 208
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 213
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$500()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 222
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 224
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$600()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getButtonImageId(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 228
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$400()[I

    move-result-object v3

    aget v3, v3, v2

    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 149
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 150
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 164
    iget-boolean v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_2

    .line 169
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 174
    :goto_1
    return-void

    .line 152
    :pswitch_1
    const/4 v1, 0x0

    .line 153
    goto :goto_0

    .line 155
    :pswitch_2
    const/4 v1, 0x1

    .line 156
    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 171
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->mInTransition:Z

    .line 172
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 150
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
