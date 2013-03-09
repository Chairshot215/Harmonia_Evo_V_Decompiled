.class Lcom/android/phone/CallCard$RichPhoneCanvasQuery;
.super Ljava/lang/Object;
.source "CallCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RichPhoneCanvasQuery"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;
    }
.end annotation


# static fields
.field private static final KEY_SN:Ljava/lang/String; = "sn"


# instance fields
.field private isDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

.field final synthetic this$0:Lcom/android/phone/CallCard;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallCard;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 2988
    iput-object p1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->this$0:Lcom/android/phone/CallCard;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2989
    iput-object p2, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mHandler:Landroid/os/Handler;

    .line 2990
    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Lcom/android/internal/telephony/CallerInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2979
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 2979
    invoke-direct {p0}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->destroy()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->setListener(Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2979
    iget-boolean v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->isDestroyed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2979
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->setCallerInfo(Lcom/android/internal/telephony/CallerInfo;)V

    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->isDestroyed:Z

    .line 3031
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 3032
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3035
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    if-eqz v0, :cond_1

    .line 3036
    iput-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    .line 3038
    :cond_1
    return-void
.end method

.method private setCallerInfo(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 3020
    iput-object p1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3021
    return-void
.end method

.method private setListener(Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 3024
    iput-object p1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mListener:Lcom/android/phone/CallCard$OnRichPhoneCanvasQueryListener;

    .line 3025
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2993
    monitor-enter p0

    .line 2994
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v1, :cond_3

    .line 2998
    iget-boolean v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->isDestroyed:Z

    if-nez v1, :cond_3

    .line 2999
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v3, "sn"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallerInfo;->getUserData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3001
    .local v0, isQueryed:Z
    if-nez v0, :cond_2

    .line 3002
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->date:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3003
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v2, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iget-object v4, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    #calls: Lcom/android/phone/CallCard;->getEventQuery(Landroid/content/Context;JLcom/android/internal/telephony/CallerInfo;)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/CallCard;->access$1000(Landroid/content/Context;JLcom/android/internal/telephony/CallerInfo;)V

    .line 3006
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->SN_status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3007
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->this$0:Lcom/android/phone/CallCard;

    #getter for: Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v1}, Lcom/android/phone/CallCard;->access$900(Lcom/android/phone/CallCard;)Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    #calls: Lcom/android/phone/CallCard;->getStatusQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V
    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->access$1100(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V

    .line 3009
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mInfo:Lcom/android/internal/telephony/CallerInfo;

    const-string v2, "sn"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/CallerInfo;->addUserData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    invoke-static {}, Lcom/android/phone/util/Auxiliary;->notify3DLockscreen()V

    .line 3013
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard$RichPhoneCanvasQuery;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/phone/CallCard$RichPhoneCanvasQuery$OnQueryComplete;-><init>(Lcom/android/phone/CallCard$RichPhoneCanvasQuery;Lcom/android/phone/CallCard$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3016
    .end local v0           #isQueryed:Z
    :cond_3
    monitor-exit p0

    .line 3017
    return-void

    .line 3016
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
