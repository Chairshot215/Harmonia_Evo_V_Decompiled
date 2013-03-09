.class Lcom/htc/android/mail/easclient/EASClient$15;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Lcom/htc/android/mail/easclient/EASProgressDialog$DialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$15;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$15;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    .line 798
    return-void
.end method
