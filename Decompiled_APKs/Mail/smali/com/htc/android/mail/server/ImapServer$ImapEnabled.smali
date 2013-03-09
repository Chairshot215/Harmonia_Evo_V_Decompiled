.class public Lcom/htc/android/mail/server/ImapServer$ImapEnabled;
.super Ljava/lang/Object;
.source "ImapServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ImapServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ImapEnabled"
.end annotation


# instance fields
.field private mCondstoreEnabled:Z

.field private mQrsyncEnabled:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 6176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public condstoreEnabled()Z
    .locals 1

    .prologue
    .line 6185
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->mCondstoreEnabled:Z

    return v0
.end method

.method public qrsyncEnabled()Z
    .locals 1

    .prologue
    .line 6193
    iget-boolean v0, p0, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->mQrsyncEnabled:Z

    return v0
.end method

.method public setCondStoreEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 6181
    iput-boolean p1, p0, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->mCondstoreEnabled:Z

    .line 6182
    return-void
.end method

.method public setQrsyncEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 6189
    iput-boolean p1, p0, Lcom/htc/android/mail/server/ImapServer$ImapEnabled;->mQrsyncEnabled:Z

    .line 6190
    return-void
.end method
