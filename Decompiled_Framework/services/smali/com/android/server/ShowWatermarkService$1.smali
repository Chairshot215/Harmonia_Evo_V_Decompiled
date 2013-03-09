.class Lcom/android/server/ShowWatermarkService$1;
.super Ljava/lang/Object;
.source "ShowWatermarkService.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShowWatermarkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShowWatermarkService;


# direct methods
.method constructor <init>(Lcom/android/server/ShowWatermarkService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->MESSAGE:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ShowWatermarkService;->access$000(Lcom/android/server/ShowWatermarkService;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    iget-object v3, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #calls: Lcom/android/server/ShowWatermarkService;->getAccount()Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ShowWatermarkService;->access$100(Lcom/android/server/ShowWatermarkService;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/server/ShowWatermarkService;->strimString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/ShowWatermarkService;->access$200(Lcom/android/server/ShowWatermarkService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->monitorAccount:Z
    invoke-static {v0}, Lcom/android/server/ShowWatermarkService;->access$300(Lcom/android/server/ShowWatermarkService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #calls: Lcom/android/server/ShowWatermarkService;->removeAccountListener()V
    invoke-static {v0}, Lcom/android/server/ShowWatermarkService;->access$400(Lcom/android/server/ShowWatermarkService;)V

    iget-object v0, p0, Lcom/android/server/ShowWatermarkService$1;->this$0:Lcom/android/server/ShowWatermarkService;

    #getter for: Lcom/android/server/ShowWatermarkService;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/server/ShowWatermarkService;->access$500(Lcom/android/server/ShowWatermarkService;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
