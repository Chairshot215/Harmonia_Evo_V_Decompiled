.class public Lcom/android/settings/framework/graphics/HtcDrawableSelector;
.super Landroid/graphics/drawable/StateListDrawable;
.source "HtcDrawableSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;,
        Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;
    }
.end annotation


# static fields
.field protected static final EMPTY_STATE_SET:[I = null

.field protected static final FOCUSED_STATE_SET:[I = null

.field protected static final PRESSED_STATE_SET:[I = null

.field protected static final STATE_ENABLED:I = 0x101009e

.field protected static final STATE_FOCUSED:I = 0x101009c

.field protected static final STATE_PRESSED:I = 0x10100a7

.field protected static final STATE_WINDOW_FOCUSED:I = 0x101009d


# instance fields
.field private mOnStateChangedListener:Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-array v0, v2, [I

    sput-object v0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->EMPTY_STATE_SET:[I

    .line 100
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->PRESSED_STATE_SET:[I

    .line 107
    new-array v0, v3, [I

    const v1, 0x101009c

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->FOCUSED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 47
    return-void
.end method

.method private stateSetMatches([II)Z
    .locals 2
    .parameter "stateSet"
    .parameter "state"

    .prologue
    .line 180
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 181
    aget v1, p1, v0

    if-ne v1, p2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 185
    :goto_1
    return v1

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onStateChange([I)Z
    .locals 3
    .parameter "stateSet"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->mOnStateChangedListener:Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;

    if-nez v2, :cond_0

    .line 132
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    .line 157
    :goto_0
    return v2

    .line 135
    :cond_0
    new-instance v1, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;

    invoke-direct {v1}, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;-><init>()V

    .line 139
    .local v1, params:Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;
    const v2, 0x101009e

    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->stateSetMatches([II)Z

    move-result v0

    .line 140
    .local v0, matched:Z
    iput-boolean v0, v1, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;->isEnabled:Z

    .line 143
    const v2, 0x101009c

    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->stateSetMatches([II)Z

    move-result v0

    .line 144
    iput-boolean v0, v1, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;->isFocused:Z

    .line 147
    const v2, 0x10100a7

    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->stateSetMatches([II)Z

    move-result v0

    .line 148
    iput-boolean v0, v1, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;->isPressed:Z

    .line 151
    const v2, 0x101009d

    invoke-direct {p0, p1, v2}, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->stateSetMatches([II)Z

    move-result v0

    .line 152
    iput-boolean v0, v1, Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;->isWindowFocused:Z

    .line 155
    iget-object v2, p0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->mOnStateChangedListener:Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;

    invoke-interface {v2, v1}, Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;->onStateChanged(Lcom/android/settings/framework/graphics/HtcDrawableSelector$EventParams;)V

    .line 157
    invoke-super {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->onStateChange([I)Z

    move-result v2

    goto :goto_0
.end method

.method public setOnStateChangedListener(Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/settings/framework/graphics/HtcDrawableSelector;->mOnStateChangedListener:Lcom/android/settings/framework/graphics/HtcDrawableSelector$OnStateChangedListener;

    .line 125
    return-void
.end method
