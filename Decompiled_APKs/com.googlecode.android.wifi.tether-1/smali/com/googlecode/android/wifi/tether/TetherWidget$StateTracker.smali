.class abstract Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;
.super Ljava/lang/Object;
.source "TetherWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private actualState:Ljava/lang/Boolean;

.field private deferredStateChangeRequestNeeded:Z

.field private inTransition:Z

.field private intendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 47
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    .line 48
    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    .line 54
    iput-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->deferredStateChangeRequestNeeded:Z

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 153
    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    if-eqz v1, :cond_0

    .line 169
    :goto_0
    return v0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 167
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

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

    .line 102
    iget-boolean v0, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 103
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 122
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    if-nez v1, :cond_1

    .line 123
    iget-boolean v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->deferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 124
    const-string v1, "TetherWidget"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 126
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    const-string v1, "TetherWidget"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    :goto_1
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->deferredStateChangeRequestNeeded:Z

    .line 135
    :cond_1
    return-void

    .line 105
    :pswitch_0
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 106
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 109
    :pswitch_1
    iput-boolean v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 110
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 113
    :pswitch_2
    iput-boolean v4, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 114
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 117
    :pswitch_3
    iput-boolean v4, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 118
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->actualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 128
    :cond_2
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 129
    iput-boolean v4, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 130
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 63
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 64
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 77
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    .line 78
    iget-boolean v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    if-eqz v3, :cond_2

    .line 83
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->deferredStateChangeRequestNeeded:Z

    .line 88
    :goto_1
    return-void

    .line 66
    :pswitch_1
    const/4 v1, 0x0

    .line 67
    goto :goto_0

    .line 69
    :pswitch_2
    const/4 v1, 0x1

    .line 70
    goto :goto_0

    .line 72
    :pswitch_3
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->intendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_2
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 85
    :cond_2
    iput-boolean v2, p0, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->inTransition:Z

    .line 86
    invoke-virtual {p0, p1, v1}, Lcom/googlecode/android/wifi/tether/TetherWidget$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 64
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
