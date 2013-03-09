.class Lcom/htc/Weather/StorageFull$3;
.super Ljava/lang/Object;
.source "StorageFull.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/Weather/StorageFull;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/Weather/StorageFull;


# direct methods
.method constructor <init>(Lcom/htc/Weather/StorageFull;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/Weather/StorageFull$3;->this$0:Lcom/htc/Weather/StorageFull;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 43
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/Weather/StorageFull$3;->this$0:Lcom/htc/Weather/StorageFull;

    invoke-virtual {v2, v1}, Lcom/htc/Weather/StorageFull;->startActivity(Landroid/content/Intent;)V

    .line 45
    iget-object v2, p0, Lcom/htc/Weather/StorageFull$3;->this$0:Lcom/htc/Weather/StorageFull;

    invoke-virtual {v2}, Lcom/htc/Weather/StorageFull;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "StorageFull"

    const-string v3, "Failed to start MANAGE_PACKAGE_STORAGE!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
