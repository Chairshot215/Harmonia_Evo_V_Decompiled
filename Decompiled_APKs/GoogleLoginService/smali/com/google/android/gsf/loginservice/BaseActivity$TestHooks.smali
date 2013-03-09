.class public Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;
.super Ljava/lang/Object;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestHooks"
.end annotation


# instance fields
.field public mBackupUserSet:Ljava/lang/String;

.field public mForceNoNetwork:Z

.field public mGPlus:Ljava/lang/String;

.field public mMarketIntent:Landroid/content/Intent;

.field public mSkipCreditCard:Z

.field public mSkipExistingAccountCheck:Z

.field public mSyncEnabledCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mForceNoNetwork:Z

    .line 167
    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipExistingAccountCheck:Z

    .line 172
    iput-boolean v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSkipCreditCard:Z

    .line 177
    iput v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mSyncEnabledCount:I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/loginservice/BaseActivity$TestHooks;->mGPlus:Ljava/lang/String;

    return-void
.end method
