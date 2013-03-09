.class Lcom/android/phone/CSCallForward$MyHandler;
.super Landroid/os/Handler;
.source "CSCallForward.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CSCallForward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_SET_CF:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtraAction:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "extraAction"

    .prologue
    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CSCallForward$MyHandler;->mExtraAction:I

    .line 118
    iput-object p1, p0, Lcom/android/phone/CSCallForward$MyHandler;->mContext:Landroid/content/Context;

    .line 119
    iput p2, p0, Lcom/android/phone/CSCallForward$MyHandler;->mExtraAction:I

    .line 120
    return-void
.end method

.method private handleSetCFResponse(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/phone/CSCallForward$MyHandler;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/phone/CSCallForward$MyHandler;->mExtraAction:I

    #calls: Lcom/android/phone/CSCallForward;->updateCSCallForwardStatus(Landroid/content/Context;I)Z
    invoke-static {v0, v1}, Lcom/android/phone/CSCallForward;->access$000(Landroid/content/Context;I)Z

    .line 134
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CSCallForward$MyHandler;->mContext:Landroid/content/Context;

    .line 141
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/CSCallForward$MyHandler;->handleSetCFResponse(Landroid/os/Message;)V

    goto :goto_0
.end method
