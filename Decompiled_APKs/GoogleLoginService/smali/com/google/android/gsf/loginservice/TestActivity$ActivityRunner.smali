.class public abstract Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;
.super Ljava/lang/Object;
.source "TestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/loginservice/TestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActivityRunner"
.end annotation


# static fields
.field public static result:Ljava/lang/Object;

.field static tokenCondition:Ljava/util/concurrent/locks/Condition;

.field static tokenLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->result:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 48
    sget-object v0, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/loginservice/TestActivity$ActivityRunner;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    .line 49
    return-void
.end method


# virtual methods
.method public onActivityResult(Lcom/google/android/gsf/loginservice/TestActivity;IILandroid/content/Intent;)V
    .locals 0
    .parameter "testActivity"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 69
    return-void
.end method

.method public onCreate(Lcom/google/android/gsf/loginservice/TestActivity;Landroid/os/Bundle;)V
    .locals 0
    .parameter "activity"
    .parameter "icicle"

    .prologue
    .line 58
    return-void
.end method

.method public runInBackground(Lcom/google/android/gsf/loginservice/TestActivity;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "activity"
    .parameter "icicle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method
