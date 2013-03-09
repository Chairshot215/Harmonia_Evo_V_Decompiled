.class public Lcom/htc/BugReport/FakeContext;
.super Ljava/lang/Object;
.source "FakeContext.java"


# instance fields
.field protected MODE_PRIVATE:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/BugReport/FakeContext;->MODE_PRIVATE:I

    .line 16
    return-void
.end method


# virtual methods
.method protected getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "name"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getFilesCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    .line 50
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    .locals 1
    .parameter "name"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/BugReport/FakeContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected stopSelf()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method
