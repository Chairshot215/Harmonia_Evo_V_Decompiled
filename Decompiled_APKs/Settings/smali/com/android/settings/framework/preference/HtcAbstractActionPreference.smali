.class public abstract Lcom/android/settings/framework/preference/HtcAbstractActionPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcAbstractActionPreference.java"

# interfaces
.implements Lcom/android/settings/framework/app/HtcActivityListener$OnHandleMessageListener;
.implements Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/preference/HtcAbstractActionPreference$2;,
        Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    }
.end annotation


# static fields
.field private static final BACK_STACK_PREFS:Ljava/lang/String; = ":android:prefs"

.field private static final MESSAGE_ON_CLICK:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private START_PREFERENCE_FRAGMENT:Ljava/lang/Runnable;

.field private mActivity:Landroid/app/Activity;

.field private mNonUIHandler:Landroid/os/Handler;

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 110
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 389
    new-instance v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$1;-><init>(Lcom/android/settings/framework/preference/HtcAbstractActionPreference;)V

    iput-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->START_PREFERENCE_FRAGMENT:Ljava/lang/Runnable;

    .line 121
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->initialize(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/preference/HtcAbstractActionPreference;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private doBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 283
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method private doStartActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 307
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.ContextImpl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const/high16 v1, 0x1000

    invoke-virtual {p2, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 313
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/content/ActivityNotFoundException;
    sget-object v1, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    const v1, 0x7f0c0064

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private doStartFragment(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 345
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setFragment(Ljava/lang/String;)V

    .line 351
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 356
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/htc/preference/HtcPreferenceActivity;

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->START_PREFERENCE_FRAGMENT:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 382
    :goto_0
    return-void

    .line 368
    :cond_2
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the UI handler to start a fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_3
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.mActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is not instanceof HtcPreferenceActivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 379
    :cond_4
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    const-string v1, "The fragment can not be null when the action type was set to START_FRAGMENT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getInternalCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    .locals 1

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    move-result-object v0

    .line 252
    .local v0, actionType:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    if-eqz v0, :cond_0

    .line 255
    .end local v0           #actionType:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    :goto_0
    return-object v0

    .restart local v0       #actionType:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->START_ACTIVITY:Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    goto :goto_0
.end method

.method private final initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomKey()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setKey(Ljava/lang/String;)V

    .line 148
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomTitleRes()I

    move-result v3

    .line 155
    .local v3, textRes:I
    if-lez v3, :cond_2

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setTitle(I)V

    .line 160
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomTitle()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2       #text:Ljava/lang/String;
    if-eqz v2, :cond_3

    if-gtz v3, :cond_3

    .line 162
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomSummary()Ljava/lang/String;

    move-result-object v2

    .line 167
    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getCustomIntent()Landroid/content/Intent;

    move-result-object v1

    .line 173
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_5

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setIntent(Landroid/content/Intent;)V

    .line 177
    :cond_5
    invoke-virtual {p0, p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 178
    return-void
.end method


# virtual methods
.method protected abstract getCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;
.end method

.method protected getCustomIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomIntent()Landroid/content/Intent;
.end method

.method protected getCustomKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getCustomTitle()Ljava/lang/String;
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public final onDispatchHandlers(Landroid/app/Activity;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0
    .parameter "activity"
    .parameter "UIHandler"
    .parameter "nonUIHandler"

    .prologue
    .line 461
    iput-object p1, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mActivity:Landroid/app/Activity;

    .line 462
    iput-object p2, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mUIHandler:Landroid/os/Handler;

    .line 463
    iput-object p3, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mNonUIHandler:Landroid/os/Handler;

    .line 464
    return-void
.end method

.method public final onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 469
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eq v2, p0, :cond_0

    .line 470
    const/4 v2, 0x0

    .line 491
    :goto_0
    return v2

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 474
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 476
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 477
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$2;->$SwitchMap$com$android$settings$framework$preference$HtcAbstractActionPreference$ActionType:[I

    invoke-direct {p0}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->getInternalCustomActionType()Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference$ActionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 491
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 479
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->doBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 482
    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->doStartActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 485
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->doStartFragment(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 488
    :cond_1
    sget-object v2, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The intent of the preference ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onHandleUIMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method

.method public final onPreferenceClick(Lcom/htc/preference/HtcPreference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 261
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->mNonUIHandler:Landroid/os/Handler;

    invoke-static {v0, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    :goto_0
    return v2

    .line 268
    :cond_0
    sget-object v0, Lcom/android/settings/framework/preference/HtcAbstractActionPreference;->TAG:Ljava/lang/String;

    const-string v1, "Can not find the non-UI handler to handle the click event"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
