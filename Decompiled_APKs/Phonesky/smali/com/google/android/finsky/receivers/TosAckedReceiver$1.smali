.class Lcom/google/android/finsky/receivers/TosAckedReceiver$1;
.super Ljava/lang/Object;
.source "TosAckedReceiver.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/receivers/TosAckedReceiver;->fetchToc(Ljava/lang/String;Z)V
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
        "Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

.field final synthetic val$account:Ljava/lang/String;

.field final synthetic val$optIn:Z


# direct methods
.method constructor <init>(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    iput-object p2, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$account:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$optIn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->this$0:Lcom/google/android/finsky/receivers/TosAckedReceiver;

    iget-object v1, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$account:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->val$optIn:Z

    new-instance v3, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v3, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    #calls: Lcom/google/android/finsky/receivers/TosAckedReceiver;->ackTos(Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/finsky/receivers/TosAckedReceiver;->access$000(Lcom/google/android/finsky/receivers/TosAckedReceiver;Ljava/lang/String;ZLcom/google/android/finsky/api/model/DfeToc;)V

    .line 66
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/receivers/TosAckedReceiver$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
