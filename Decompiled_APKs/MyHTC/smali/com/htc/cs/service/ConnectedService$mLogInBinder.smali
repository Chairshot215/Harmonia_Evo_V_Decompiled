.class public Lcom/htc/cs/service/ConnectedService$mLogInBinder;
.super Landroid/os/Binder;
.source "ConnectedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/service/ConnectedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "mLogInBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/service/ConnectedService;


# direct methods
.method public constructor <init>(Lcom/htc/cs/service/ConnectedService;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/cs/service/ConnectedService$mLogInBinder;->this$0:Lcom/htc/cs/service/ConnectedService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginService()Lcom/htc/cs/service/ConnectedService;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/cs/service/ConnectedService$mLogInBinder;->this$0:Lcom/htc/cs/service/ConnectedService;

    return-object v0
.end method
