.class Lcom/htc/Weather/StorageFull$1;
.super Ljava/lang/Object;
.source "StorageFull.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 53
    iput-object p1, p0, Lcom/htc/Weather/StorageFull$1;->this$0:Lcom/htc/Weather/StorageFull;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/htc/Weather/StorageFull$1;->this$0:Lcom/htc/Weather/StorageFull;

    invoke-virtual {v0}, Lcom/htc/Weather/StorageFull;->finish()V

    .line 56
    return-void
.end method
