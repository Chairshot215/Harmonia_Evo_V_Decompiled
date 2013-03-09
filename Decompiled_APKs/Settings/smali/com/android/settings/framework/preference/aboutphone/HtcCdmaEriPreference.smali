.class public Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;
.super Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;
.source "HtcCdmaEriPreference.java"


# static fields
.field private static final MESSAGE_ON_GET_CDMA_ERI_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final ERI_CMD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->ERI_CMD:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->ERI_CMD:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/framework/preference/HtcAbstractTelephonyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->ERI_CMD:Ljava/lang/String;

    .line 60
    return-void
.end method

.method private static Log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 106
    sget-object v0, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method private retrieveSummary(Landroid/os/AsyncResult;)Ljava/lang/String;
    .locals 1
    .parameter "asyncResult"

    .prologue
    .line 102
    const-string v0, "retrieveSummary"

    return-object v0
.end method


# virtual methods
.method protected getCustomTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c03bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isConstantSummary()Z
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onHandleNonUIMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Landroid/os/AsyncResult;

    if-nez v3, :cond_1

    .line 97
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 91
    .local v0, asyncResult:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-ne v3, p0, :cond_0

    .line 95
    invoke-direct {p0, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->retrieveSummary(Landroid/os/AsyncResult;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, summary:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/preference/aboutphone/HtcCdmaEriPreference;->updateSummary(Ljava/lang/String;)V

    .line 97
    const/4 v2, 0x1

    goto :goto_0
.end method
