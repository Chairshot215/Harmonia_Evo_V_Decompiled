.class public Lcom/android/dmportread/DMCommandService$DMServiceBinder;
.super Landroid/os/Binder;
.source "DMCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dmportread/DMCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DMServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCommandService;


# direct methods
.method public constructor <init>(Lcom/android/dmportread/DMCommandService;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/android/dmportread/DMCommandService$DMServiceBinder;->this$0:Lcom/android/dmportread/DMCommandService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/android/dmportread/DMCommandService;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/dmportread/DMCommandService$DMServiceBinder;->this$0:Lcom/android/dmportread/DMCommandService;

    return-object v0
.end method
