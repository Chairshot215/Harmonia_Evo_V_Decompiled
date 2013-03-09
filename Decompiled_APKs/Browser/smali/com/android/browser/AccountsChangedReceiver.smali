.class public Lcom/android/browser/AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountsChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;
    }
.end annotation


# static fields
.field private static final DELETE_SELECTION:Ljava/lang/String; = "account_name=? AND account_type=?"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SELECTION:Ljava/lang/String; = "account_name IS NOT NULL"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/AccountsChangedReceiver;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/android/browser/AccountsChangedReceiver;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 43
    new-instance v0, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;

    invoke-direct {v0, p1}, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/browser/AccountsChangedReceiver$DeleteRemovedAccounts;->start()V

    .line 44
    return-void
.end method
