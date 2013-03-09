.class public final Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;
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
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->initialize(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "DEFAULT_CONNECTION_TYPE"

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->setKey(Ljava/lang/String;)V

    .line 64
    :cond_0
    const v0, 0x7f08003a

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->setTitle(I)V

    .line 65
    return-void
.end method


# virtual methods
.method protected onClick()V
    .locals 4

    .prologue
    .line 69
    invoke-super {p0}, Lcom/htc/preference/HtcPreference;->onClick()V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.android.psclient"

    const-string v3, "com.htc.android.psclient.RestoreUsbSettings"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/dockmode/preference/HtcDefaultConnectionTypePreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 74
    return-void
.end method
