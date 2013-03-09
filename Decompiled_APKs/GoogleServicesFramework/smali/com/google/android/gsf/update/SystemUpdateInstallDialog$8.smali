.class Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;
.super Ljava/lang/Object;
.source "SystemUpdateInstallDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    iput-wide p2, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;->val$endTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;->this$0:Lcom/google/android/gsf/update/SystemUpdateInstallDialog;

    iget-wide v1, p0, Lcom/google/android/gsf/update/SystemUpdateInstallDialog$8;->val$endTime:J

    #calls: Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->updateCountdownMessage(J)V
    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/update/SystemUpdateInstallDialog;->access$1000(Lcom/google/android/gsf/update/SystemUpdateInstallDialog;J)V

    return-void
.end method
