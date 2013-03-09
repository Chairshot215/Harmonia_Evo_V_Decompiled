.class Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;
.super Landroid/os/AsyncTask;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallLogAsync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetLastOutgoingCallTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

.field private mNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/CallLogAsync;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;)V
    .locals 0
    .parameter
    .parameter "callback"

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    .line 257
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, [Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;)Ljava/lang/String;
    .locals 7
    .parameter "list"

    .prologue
    .line 265
    array-length v2, p1

    .line 266
    .local v2, count:I
    const-string v5, ""

    .line 267
    .local v5, number:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 269
    .local v0, args:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    iget-object v6, v0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;->context:Landroid/content/Context;

    invoke-static {v6}, Landroid/provider/CallLog$Calls;->getLastOutgoingCall(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v0           #args:Lcom/android/phone/CallLogAsync$GetLastOutgoingCallArgs;
    :cond_0
    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 252
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->this$0:Lcom/android/phone/CallLogAsync;

    #calls: Lcom/android/phone/CallLogAsync;->assertUiThread()V
    invoke-static {v0}, Lcom/android/phone/CallLogAsync;->access$100(Lcom/android/phone/CallLogAsync;)V

    .line 279
    iget-object v0, p0, Lcom/android/phone/CallLogAsync$GetLastOutgoingCallTask;->mCallback:Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;

    invoke-interface {v0, p1}, Lcom/android/phone/CallLogAsync$OnLastOutgoingCallComplete;->lastOutgoingCall(Ljava/lang/String;)V

    .line 280
    return-void
.end method
