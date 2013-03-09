.class public Lcom/htc/widget/profile/HtcFxButtonAgent;
.super Ljava/lang/Object;
.source "HtcFxButtonAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/profile/HtcFxButtonAgent$1;,
        Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;,
        Lcom/htc/widget/profile/HtcFxButtonAgent$ButtonListener;,
        Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButton:Lcom/htc/fusion/fx/controls/FxButton;

.field private mInternalListener:Ljava/lang/Object;

.field private mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

.field private mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/htc/widget/profile/HtcFxButtonAgent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/htc/fusion/fx/FxControl;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lcom/htc/widget/profile/HtcFxButtonAgent;->setButton(Lcom/htc/fusion/fx/FxControl;)V

    .line 55
    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/fusion/fx/controls/FxButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/profile/HtcFxButtonAgent;)Lcom/htc/fusion/fx/controls/FxSettingButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    return-object v0
.end method


# virtual methods
.method public getButton()Lcom/htc/fusion/fx/FxControl;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 67
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    goto :goto_0

    .line 67
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(Lcom/htc/fusion/fx/FxControl;)V
    .locals 3
    .parameter "button"

    .prologue
    const/4 v2, 0x0

    .line 76
    instance-of v0, p1, Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_0

    .line 77
    iput-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 78
    check-cast p1, Lcom/htc/fusion/fx/controls/FxButton;

    .end local p1
    iput-object p1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 79
    new-instance v0, Lcom/htc/widget/profile/HtcFxButtonAgent$ButtonListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/profile/HtcFxButtonAgent$ButtonListener;-><init>(Lcom/htc/widget/profile/HtcFxButtonAgent;Lcom/htc/widget/profile/HtcFxButtonAgent$1;)V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    .line 80
    iget-object v1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    check-cast v0, Lcom/htc/widget/profile/HtcFxButtonAgent$ButtonListener;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    :goto_0
    return-void

    .line 83
    .restart local p1
    :cond_0
    instance-of v0, p1, Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_1

    .line 84
    iput-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    .line 85
    check-cast p1, Lcom/htc/fusion/fx/controls/FxSettingButton;

    .end local p1
    iput-object p1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    .line 86
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->initialize(I)V

    .line 87
    new-instance v0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;

    invoke-direct {v0, p0, v2}, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;-><init>(Lcom/htc/widget/profile/HtcFxButtonAgent;Lcom/htc/widget/profile/HtcFxButtonAgent$1;)V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    .line 88
    iget-object v1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    check-cast v0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->bindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_0

    .line 92
    .restart local p1
    :cond_1
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fusion control: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setButtonState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxSettingButton;->setState(I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    const-string v1, "FxButton does not support setButtonInitialState(int)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    return-void
.end method

.method public setOnClickListener(Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 112
    if-eqz p1, :cond_0

    .line 113
    iput-object p1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mListener:Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v0, v3}, Lcom/htc/fusion/fx/controls/FxButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :goto_1
    iput-object v3, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    if-eqz v0, :cond_2

    .line 118
    iget-object v1, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mSettingButton:Lcom/htc/fusion/fx/controls/FxSettingButton;

    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    check-cast v0, Lcom/htc/widget/profile/HtcFxButtonAgent$SettingButtonListener;

    invoke-virtual {v1, v0}, Lcom/htc/fusion/fx/controls/FxSettingButton;->unbindClick(Lcom/htc/fusion/fx/IMessageListener;)V

    goto :goto_1

    .line 121
    :cond_2
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    const-string v1, "Invalid button type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t mButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t mSettingButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mButton:Lcom/htc/fusion/fx/controls/FxButton;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v0, Lcom/htc/widget/profile/HtcFxButtonAgent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t mInternalListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/profile/HtcFxButtonAgent;->mInternalListener:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
