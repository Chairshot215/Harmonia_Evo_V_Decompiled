.class Lcom/google/android/finsky/widget/TrampolineActivity$1;
.super Ljava/lang/Object;
.source "TrampolineActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/widget/TrampolineActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/google/android/finsky/widget/TrampolineActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/widget/TrampolineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 64
    new-instance v0, Lcom/google/android/finsky/api/model/DfeToc;

    invoke-direct {v0, p1}, Lcom/google/android/finsky/api/model/DfeToc;-><init>(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    .line 65
    .local v0, newToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/FinskyApp;->setToc(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 66
    iget-object v1, p0, Lcom/google/android/finsky/widget/TrampolineActivity$1;->this$0:Lcom/google/android/finsky/widget/TrampolineActivity;

    #calls: Lcom/google/android/finsky/widget/TrampolineActivity;->initialize(Lcom/google/android/finsky/api/model/DfeToc;)V
    invoke-static {v1, v0}, Lcom/google/android/finsky/widget/TrampolineActivity;->access$000(Lcom/google/android/finsky/widget/TrampolineActivity;Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 67
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/widget/TrampolineActivity$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Toc$TocResponse;)V

    return-void
.end method
