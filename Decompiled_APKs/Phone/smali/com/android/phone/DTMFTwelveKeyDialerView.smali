.class Lcom/android/phone/DTMFTwelveKeyDialerView;
.super Landroid/widget/LinearLayout;
.source "DTMFTwelveKeyDialerView.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/DTMFTwelveKeyDialerView"


# instance fields
.field private mButtonGrid:Lcom/android/phone/ButtonGridLayout;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method private applyThemeOnFinishInflate()V
    .locals 6

    .prologue
    .line 133
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    const-string v2, "htc_btn_dial_delete"

    const-string v3, "drawable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 138
    .local v0, resid:I
    const v2, 0x202016a

    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "phone_accumulator_bg"

    const-string v4, "drawable"

    const-string v5, "com.android.phone"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 145
    const v2, 0x7f080081

    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 103
    const-string v0, "PHONE/DTMFTwelveKeyDialerView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 79
    .local v0, keyCode:I
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v1, :cond_0

    .line 80
    packed-switch v0, :pswitch_data_0

    .line 89
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, res:Landroid/content/res/Resources;
    const v3, 0x7f080085

    invoke-virtual {p0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 119
    .local v0, keypad:Landroid/view/View;
    const v3, 0x7f0b0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 120
    .local v2, visible:I
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 121
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 124
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/android/phone/view/OnVisibilityChangedListener;->onVisibilityChanged(Landroid/view/View;I)V

    .line 158
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 159
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 68
    return-void
.end method

.method public setKeysBackgroundResource(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 100
    return-void
.end method

.method public setOnVisibilityChangedListener(Lcom/android/phone/view/OnVisibilityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerView;->mOnVisibilityChangedListener:Lcom/android/phone/view/OnVisibilityChangedListener;

    .line 151
    return-void
.end method
