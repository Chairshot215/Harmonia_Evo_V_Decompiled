.class Lcom/google/android/finsky/receivers/TosAckedReceiver$3;
.super Ljava/lang/Object;
.source "TosAckedReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/TosAckedReceiver;->ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$toc:Lcom/google/android/finsky/api/model/DfeToc;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->val$account:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 87
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->val$account:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->val$toc:Lcom/google/android/finsky/api/model/DfeToc;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/TosAckedReceiver$3;->onResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)V

    return-void
.end method
