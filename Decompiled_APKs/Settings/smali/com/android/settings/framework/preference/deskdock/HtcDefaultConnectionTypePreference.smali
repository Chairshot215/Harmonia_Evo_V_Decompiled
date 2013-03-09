.class public final Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcDefaultConnectionTypePreference.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "DEFAULT_CONNECTION_TYPE"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "DEFAULT_CONNECTION_TYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->setKey(Ljava/lang/String;)V

    .line 62
    :cond_0
    const v0, 0x7f0c00e5

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->setTitle(I)V

    .line 63
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 68
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.android.psclient"

    const-string v3, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 70
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/framework/preference/deskdock/HtcDefaultConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    return-void
.end method
