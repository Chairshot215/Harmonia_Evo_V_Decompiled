.class public Lcom/google/android/finsky/billing/AsyncAuthenticator;
.super Ljava/lang/Object;
.source "AsyncAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;
    }
.end annotation


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/Authenticator;


# direct methods
.method public constructor <init>(Lcom/android/volley/toolbox/Authenticator;)V
    .locals 0
    .parameter "authenticator"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/billing/AsyncAuthenticator;)Lcom/android/volley/toolbox/Authenticator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/finsky/billing/AsyncAuthenticator;->mAuthenticator:Lcom/android/volley/toolbox/Authenticator;

    return-object v0
.end method


# virtual methods
.method public getToken(Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;Ljava/lang/String;)V
    .locals 2
    .parameter "listener"
    .parameter "invalidToken"

    .prologue
    .line 36
    new-instance v0, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;-><init>(Lcom/google/android/finsky/billing/AsyncAuthenticator;Ljava/lang/String;Lcom/google/android/finsky/billing/AsyncAuthenticator$Listener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/billing/AsyncAuthenticator$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    return-void
.end method
