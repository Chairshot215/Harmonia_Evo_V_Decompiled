.class Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse$1;
.super Ljava/lang/Object;
.source "BaseLoginActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;


# direct methods
.method constructor <init>(Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 690
    iput-object p1, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse$1;->this$1:Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse$1;->this$1:Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;

    iget-object v0, v0, Lcom/htc/socialnetwork/account/BaseLoginActivity$DefaultResponse;->this$0:Lcom/htc/socialnetwork/account/BaseLoginActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/htc/socialnetwork/account/BaseLoginActivity;->showDialog(I)V

    .line 693
    return-void
.end method
