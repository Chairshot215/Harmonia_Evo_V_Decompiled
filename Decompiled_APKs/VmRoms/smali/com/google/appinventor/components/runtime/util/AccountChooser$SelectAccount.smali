.class Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;
.super Ljava/lang/Thread;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/AccountChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectAccount"
.end annotation


# instance fields
.field private accountNames:[Ljava/lang/String;

.field private queue:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/AccountChooser;[Landroid/accounts/Account;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/Account;",
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->queue:Ljava/util/concurrent/SynchronousQueue;

    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->accountNames:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->accountNames:[Ljava/lang/String;

    aget-object v2, p2, v0

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->accountNames:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "AccountChooser"

    const-string v1, "Chose: canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->accountNames:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v1, "AccountChooser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chose: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->queue:Ljava/util/concurrent/SynchronousQueue;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;->this$0:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    #getter for: Lcom/google/appinventor/components/runtime/util/AccountChooser;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->access$200(Lcom/google/appinventor/components/runtime/util/AccountChooser;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount$1;-><init>(Lcom/google/appinventor/components/runtime/util/AccountChooser$SelectAccount;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
