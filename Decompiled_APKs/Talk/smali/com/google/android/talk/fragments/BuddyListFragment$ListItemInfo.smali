.class public Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;
.super Ljava/lang/Object;
.source "BuddyListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/BuddyListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItemInfo"
.end annotation


# instance fields
.field public mAccountId:J

.field public mContactId:J

.field public mOpenAudioChat:Z

.field public mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;-><init>(Ljava/lang/String;JZ)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0
    .parameter "username"
    .parameter "accountId"
    .parameter "audioChat"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mUsername:Ljava/lang/String;

    .line 156
    iput-wide p2, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mAccountId:J

    .line 157
    iput-boolean p4, p0, Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;->mOpenAudioChat:Z

    .line 158
    return-void
.end method
