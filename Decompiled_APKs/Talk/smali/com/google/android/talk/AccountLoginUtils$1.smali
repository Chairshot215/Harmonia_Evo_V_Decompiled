.class final Lcom/google/android/talk/AccountLoginUtils$1;
.super Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;
.source "AccountLoginUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountLoginUtils;->asyncCreateConnectionForAccount(Lcom/google/android/gtalkservice/IGTalkService;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$connectionCreatedListener:Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/talk/AccountLoginUtils$1;->val$username:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/talk/AccountLoginUtils$1;->val$connectionCreatedListener:Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IGTalkConnectionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionCreated(Lcom/google/android/gtalkservice/IGTalkConnection;)V
    .locals 2
    .parameter "connection"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/talk/AccountLoginUtils$1;->val$username:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/talk/AccountLoginUtils$1;->val$connectionCreatedListener:Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;

    #calls: Lcom/google/android/talk/AccountLoginUtils;->signInForConnection(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V
    invoke-static {p1, v0, v1}, Lcom/google/android/talk/AccountLoginUtils;->access$000(Lcom/google/android/gtalkservice/IGTalkConnection;Ljava/lang/String;Lcom/google/android/talk/AccountLoginUtils$ConnectionCreatedListener;)V

    .line 181
    return-void
.end method

.method public onConnectionCreationFailed(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 184
    const-string v0, "asyncCreateConnectionForAccount: creating connection failed"

    #calls: Lcom/google/android/talk/AccountLoginUtils;->loge(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/google/android/talk/AccountLoginUtils;->access$100(Ljava/lang/String;)V

    .line 186
    return-void
.end method
