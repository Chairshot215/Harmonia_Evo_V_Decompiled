.class Lcom/google/android/gm/GmailBaseActivity$1;
.super Ljava/lang/Object;
.source "GmailBaseActivity.java"

# interfaces
.implements Lcom/google/android/gm/provider/MailEngine$MailEngineResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/GmailBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/GmailBaseActivity;


# direct methods
.method constructor <init>(Lcom/google/android/gm/GmailBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/google/android/gm/GmailBaseActivity$1;->this$0:Lcom/google/android/gm/GmailBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMailEngineResult(Lcom/google/android/gm/provider/MailEngine;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 124
    invoke-static {}, Lcom/google/android/gm/persistence/Persistence;->getInstance()Lcom/google/android/gm/persistence/Persistence;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/GmailBaseActivity$1;->this$0:Lcom/google/android/gm/GmailBaseActivity;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, realAccount:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/utils/CustomFromUtils;->getDefaultCustomFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, fromAccount:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/GmailBaseActivity;->getMailtoNdef(Ljava/lang/String;)Landroid/nfc/NdefMessage;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/GmailBaseActivity;->setForegroundNdef(Landroid/nfc/NdefMessage;)V

    .line 127
    return-void
.end method
