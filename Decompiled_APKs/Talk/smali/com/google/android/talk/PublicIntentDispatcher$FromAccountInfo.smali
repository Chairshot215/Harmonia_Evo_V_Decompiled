.class public Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;
.super Lcom/google/android/talk/TalkApp$AccountInfo;
.source "PublicIntentDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/PublicIntentDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FromAccountInfo"
.end annotation


# instance fields
.field public mHasTargetUser:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 714
    return-void
.end method

.method public constructor <init>(Lcom/google/android/talk/TalkApp$AccountInfo;Z)V
    .locals 2
    .parameter "as"
    .parameter "hasTargetUser"

    .prologue
    .line 716
    invoke-direct {p0}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 717
    iget-object v0, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->username:Ljava/lang/String;

    .line 718
    iget-wide v0, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    iput-wide v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->accountId:J

    .line 719
    iget-boolean v0, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    iput-boolean v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->signedIn:Z

    .line 720
    iget-boolean v0, p1, Lcom/google/android/talk/TalkApp$AccountInfo;->active:Z

    iput-boolean v0, p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->active:Z

    .line 721
    iput-boolean p2, p0, Lcom/google/android/talk/PublicIntentDispatcher$FromAccountInfo;->mHasTargetUser:Z

    .line 722
    return-void
.end method
