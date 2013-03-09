.class public Lcom/htc/lmw/Wizard;
.super Ljava/lang/Object;
.source "Wizard.java"


# static fields
.field public static PAGES:[Ljava/lang/Class;

.field private static instance:Lcom/htc/lmw/Wizard;

.field private static m_isInActivityTransaction:Z

.field public static final phoneCriticalPages:[Ljava/lang/Class;

.field public static final phonePages:[Ljava/lang/Class;


# instance fields
.field private context:Landroid/content/Context;

.field private currentActivity:Landroid/app/Activity;

.field private currentStep:I

.field private isLowMemory:Z

.field private subActivityParent:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-array v0, v5, [Ljava/lang/Class;

    const-class v1, Lcom/htc/lmw/steps/CleanCache$PhoneActivity;

    aput-object v1, v0, v2

    const-class v1, Lcom/htc/lmw/steps/ApplicationStorage$PhoneActivity;

    aput-object v1, v0, v3

    const-class v1, Lcom/htc/lmw/steps/MailAndMessages$PhoneActivity;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/lmw/Wizard;->phonePages:[Ljava/lang/Class;

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/htc/lmw/steps/LowMemoryIntro$PhoneActivity;

    aput-object v1, v0, v2

    const-class v1, Lcom/htc/lmw/steps/CleanCache$PhoneActivity;

    aput-object v1, v0, v3

    const-class v1, Lcom/htc/lmw/steps/Uninstall$PhoneActivity;

    aput-object v1, v0, v4

    const-class v1, Lcom/htc/lmw/steps/MoveToSdCard$PhoneActivity;

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/lmw/Wizard;->phoneCriticalPages:[Ljava/lang/Class;

    .line 40
    sget-object v0, Lcom/htc/lmw/Wizard;->phonePages:[Ljava/lang/Class;

    sput-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lmw/Wizard;->instance:Lcom/htc/lmw/Wizard;

    .line 46
    sput-boolean v2, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lmw/Wizard;->subActivityParent:Ljava/lang/Class;

    .line 45
    iput v1, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    .line 49
    iput-boolean v1, p0, Lcom/htc/lmw/Wizard;->isLowMemory:Z

    .line 54
    iput-object p1, p0, Lcom/htc/lmw/Wizard;->context:Landroid/content/Context;

    .line 55
    sget-object v0, Lcom/htc/lmw/Wizard;->phonePages:[Ljava/lang/Class;

    sput-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/htc/lmw/Wizard;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/htc/lmw/Wizard;->instance:Lcom/htc/lmw/Wizard;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    new-instance v0, Lcom/htc/lmw/Wizard;

    invoke-direct {v0, p0}, Lcom/htc/lmw/Wizard;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/lmw/Wizard;->instance:Lcom/htc/lmw/Wizard;

    .line 61
    return-void
.end method


# virtual methods
.method public back()V
    .locals 2

    .prologue
    .line 99
    sget-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    if-nez v0, :cond_1

    .line 102
    iget v0, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    if-lez v0, :cond_2

    .line 103
    sget-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v1, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lmw/Wizard;->startActivity(Ljava/lang/Class;)V

    .line 107
    :cond_0
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    .line 109
    :cond_1
    return-void

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public finishSubActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 132
    sget-boolean v1, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    if-nez v1, :cond_1

    .line 134
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    .line 136
    .local v0, resumed:Z
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 138
    sget-object v1, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v2, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/htc/lmw/Wizard;->subActivityParent:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v2, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/lmw/Wizard;->startActivity(Ljava/lang/Class;)V

    .line 146
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    .line 148
    .end local v0           #resumed:Z
    :cond_1
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    return v0
.end method

.method protected getLastStep()I
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/htc/lmw/ExternalStorageObserver;->isMediaMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method handleActivity(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, step:I
    sget-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    .local v0, arr$:[Ljava/lang/Class;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 165
    .local v3, page:Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 167
    iput v4, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    .line 168
    iput-object p1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    .line 174
    .end local v3           #page:Ljava/lang/Class;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/lmw/Wizard;->updateProgressBar(Landroid/app/Activity;)V

    .line 175
    return-void

    .line 171
    .restart local v3       #page:Ljava/lang/Class;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isLowMemory()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/htc/lmw/Wizard;->isLowMemory:Z

    return v0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 85
    sget-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    if-nez v0, :cond_0

    .line 88
    iget v0, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    sget-object v1, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 89
    sget-object v0, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v1, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/lmw/Wizard;->startActivity(Ljava/lang/Class;)V

    .line 90
    iget-object v0, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setLowMemory(Z)V
    .locals 0
    .parameter "isLowMemory"

    .prologue
    .line 206
    iput-boolean p1, p0, Lcom/htc/lmw/Wizard;->isLowMemory:Z

    .line 208
    return-void
.end method

.method public start(Landroid/app/Activity;)V
    .locals 4
    .parameter "activityContext"

    .prologue
    .line 75
    sget-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    .line 79
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/lmw/Wizard;->context:Landroid/content/Context;

    sget-object v2, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v3, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v2, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    :cond_0
    return-void
.end method

.method startActivity(Ljava/lang/Class;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/lmw/Wizard;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 156
    iget-object v1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public startSubActivity(Ljava/lang/Class;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 118
    sget-boolean v1, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    if-nez v1, :cond_1

    .line 120
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/lmw/Wizard;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 122
    sget-object v1, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    iget v2, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/htc/lmw/Wizard;->subActivityParent:Ljava/lang/Class;

    .line 123
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lcom/htc/lmw/Wizard;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    .line 128
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public transactionFinished()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/lmw/Wizard;->m_isInActivityTransaction:Z

    .line 114
    return-void
.end method

.method updateProgressBar(Landroid/app/Activity;)V
    .locals 8
    .parameter "activity"

    .prologue
    const/4 v7, -0x2

    .line 179
    const v5, 0x7f070012

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 180
    .local v3, progressBar:Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 183
    const-string v5, "btn_circle_pressed"

    const v6, 0x20800e4

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, pressedButtonId:I
    const-string v5, "btn_circle"

    const v6, 0x20800e0

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 188
    .local v4, restedButtonId:I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v5, Lcom/htc/lmw/Wizard;->PAGES:[Ljava/lang/Class;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 191
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/htc/lmw/Wizard;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, bubble:Landroid/widget/ImageView;
    iget v5, p0, Lcom/htc/lmw/Wizard;->currentStep:I

    if-gt v1, v5, :cond_0

    move v5, v2

    :goto_1
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 193
    invoke-virtual {v3, v0, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v5, v4

    .line 192
    goto :goto_1

    .line 196
    .end local v0           #bubble:Landroid/widget/ImageView;
    .end local v1           #i:I
    .end local v2           #pressedButtonId:I
    .end local v4           #restedButtonId:I
    :cond_1
    return-void
.end method
