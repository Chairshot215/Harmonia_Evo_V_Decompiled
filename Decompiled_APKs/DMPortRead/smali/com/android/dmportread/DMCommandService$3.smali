.class Lcom/android/dmportread/DMCommandService$3;
.super Landroid/database/ContentObserver;
.source "DMCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCommandService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 1654
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$3;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfUpdate"

    .prologue
    const/4 v1, 0x1

    .line 1669
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$3;->this$0:Lcom/android/dmportread/DMCommandService;

    #setter for: Lcom/android/dmportread/DMCommandService;->mSMSDirty:Z
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$1402(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 1670
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$3;->this$0:Lcom/android/dmportread/DMCommandService;

    #setter for: Lcom/android/dmportread/DMCommandService;->mSMSChanged:Z
    invoke-static {v0, v1}, Lcom/android/dmportread/DMCommandService;->access$902(Lcom/android/dmportread/DMCommandService;Z)Z

    .line 1671
    return-void
.end method
