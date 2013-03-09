.class Lcom/google/android/backup/BackupTransportService$MissingAccountsException;
.super Landroid/accounts/AccountsException;
.source "BackupTransportService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/backup/BackupTransportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MissingAccountsException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Landroid/accounts/AccountsException;-><init>()V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "message"
    .parameter "cause"

    .prologue
    .line 159
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "cause"

    .prologue
    .line 162
    invoke-direct {p0, p1}, Landroid/accounts/AccountsException;-><init>(Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method
