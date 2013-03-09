.class Lcom/google/android/finsky/activities/TosActivity$1;
.super Ljava/lang/Object;
.source "TosActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/TosActivity;->onPositiveButtonClick()V
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
.field final synthetic this$0:Lcom/google/android/finsky/activities/TosActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/TosActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/google/android/finsky/activities/TosActivity$1;->this$0:Lcom/google/android/finsky/activities/TosActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 142
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->acceptedTosToken:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity$1;->this$0:Lcom/google/android/finsky/activities/TosActivity;

    #getter for: Lcom/google/android/finsky/activities/TosActivity;->mAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/finsky/activities/TosActivity;->access$100(Lcom/google/android/finsky/activities/TosActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/activities/TosActivity$1;->this$0:Lcom/google/android/finsky/activities/TosActivity;

    #getter for: Lcom/google/android/finsky/activities/TosActivity;->mToc:Lcom/google/android/finsky/api/model/DfeToc;
    invoke-static {v1}, Lcom/google/android/finsky/activities/TosActivity;->access$000(Lcom/google/android/finsky/activities/TosActivity;)Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/DfeToc;->getTosToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 138
    check-cast p1, Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/TosActivity$1;->onResponse(Lcom/google/android/finsky/remoting/protos/Tos$AcceptTosResponse;)V

    return-void
.end method
