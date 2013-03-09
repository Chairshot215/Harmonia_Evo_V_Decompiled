.class Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;
.super Ljava/lang/Object;
.source "FlagItemFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;->postFlag(Landroid/content/Context;Lcom/google/android/finsky/api/model/Document;Ljava/lang/String;)V
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
        "Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;->this$0:Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType;

    iput-object p2, p0, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;->val$context:Landroid/content/Context;

    const v1, 0x7f070207

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 403
    check-cast p1, Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/activities/FlagItemFragment$AppFlagType$1;->onResponse(Lcom/google/android/vending/remoting/protos/VendingProtos$ModifyCommentResponseProto;)V

    return-void
.end method
