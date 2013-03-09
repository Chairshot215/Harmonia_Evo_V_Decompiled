.class final Lcom/google/android/gm/WaitActivity$2;
.super Ljava/lang/Object;
.source "WaitActivity.java"

# interfaces
.implements Lcom/google/android/gm/AccountHelper$GmailAccountValidityResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/WaitActivity;->verifyAccountValidity(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gm/WaitActivity$AccountValidityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accountName:Ljava/lang/String;

.field final synthetic val$callback:Lcom/google/android/gm/WaitActivity$AccountValidityCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gm/WaitActivity$AccountValidityCallback;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/google/android/gm/WaitActivity$2;->val$callback:Lcom/google/android/gm/WaitActivity$AccountValidityCallback;

    iput-object p2, p0, Lcom/google/android/gm/WaitActivity$2;->val$accountName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/accounts/Account;Z)V
    .locals 2
    .parameter "account"
    .parameter "valid"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$2;->val$callback:Lcom/google/android/gm/WaitActivity$AccountValidityCallback;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/WaitActivity$2;->val$callback:Lcom/google/android/gm/WaitActivity$AccountValidityCallback;

    iget-object v1, p0, Lcom/google/android/gm/WaitActivity$2;->val$accountName:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/google/android/gm/WaitActivity$AccountValidityCallback;->onResult(Ljava/lang/String;Z)V

    .line 253
    :cond_0
    return-void
.end method
