.class public Lcom/android/phone/HACSetting;
.super Ljava/lang/Object;
.source "HACSetting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/HACSetting$1;,
        Lcom/android/phone/HACSetting$MyHandler;
    }
.end annotation


# static fields
.field public static final ENABLE_KEY:Ljava/lang/String; = "enabled"

.field public static final HAC_KEY:Ljava/lang/String; = "HACSetting"

.field public static final HAC_VAL_OFF:Ljava/lang/String; = "OFF"

.field public static final HAC_VAL_ON:Ljava/lang/String; = "ON"

.field private static final TAG:Ljava/lang/String; = "HACSetting"


# instance fields
.field private mFromPhoneApp:Z

.field private mMyHandler:Lcom/android/phone/HACSetting$MyHandler;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .parameter "cm"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/phone/HACSetting$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HACSetting$MyHandler;-><init>(Lcom/android/phone/HACSetting;Lcom/android/phone/HACSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/HACSetting;->mMyHandler:Lcom/android/phone/HACSetting$MyHandler;

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CallManager;Z)V
    .locals 2
    .parameter "cm"
    .parameter "fromPhoneApp"

    .prologue
    .line 57
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/android/phone/HACSetting$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/HACSetting$MyHandler;-><init>(Lcom/android/phone/HACSetting;Lcom/android/phone/HACSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/HACSetting;->mMyHandler:Lcom/android/phone/HACSetting$MyHandler;

    .line 58
    iput-boolean p2, p0, Lcom/android/phone/HACSetting;->mFromPhoneApp:Z

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/HACSetting;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/android/phone/HACSetting;->mFromPhoneApp:Z

    return v0
.end method

.method private postToggle(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    .line 66
    iget-object v2, p0, Lcom/android/phone/HACSetting;->mMyHandler:Lcom/android/phone/HACSetting$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/phone/HACSetting$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 68
    iget-object v1, p0, Lcom/android/phone/HACSetting;->mMyHandler:Lcom/android/phone/HACSetting$MyHandler;

    invoke-virtual {v1, v0}, Lcom/android/phone/HACSetting$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void

    .line 67
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toggle(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/HACSetting;->postToggle(Z)V

    .line 63
    return-void
.end method
