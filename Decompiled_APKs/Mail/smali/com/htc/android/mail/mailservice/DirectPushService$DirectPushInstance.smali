.class abstract Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;
.super Ljava/lang/Thread;
.source "DirectPushService.java"

# interfaces
.implements Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/mailservice/DirectPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DirectPushInstance"
.end annotation


# static fields
.field public static final sTypeDp:I = 0x1

.field public static final sTypePoll:I = 0x2


# instance fields
.field private mIsStoped:Z

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1032
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1037
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mType:I

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mIsStoped:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/mailservice/DirectPushService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 1050
    iget v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mType:I

    return v0
.end method

.method public isStoped()Z
    .locals 1

    .prologue
    .line 1042
    iget-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mIsStoped:Z

    return v0
.end method

.method public listen()V
    .locals 1

    .prologue
    .line 1058
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mIsStoped:Z

    .line 1059
    invoke-virtual {p0}, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->start()V

    .line 1060
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1054
    iput p1, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mType:I

    .line 1055
    return-void
.end method

.method public abstract stopListening()V
.end method

.method public stoped()V
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/mailservice/DirectPushService$DirectPushInstance;->mIsStoped:Z

    .line 1047
    return-void
.end method
