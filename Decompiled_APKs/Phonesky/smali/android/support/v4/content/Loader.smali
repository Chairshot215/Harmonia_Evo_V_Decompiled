.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mReset:Z

.field mStarted:Z


# virtual methods
.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    .local p1, data:Ljava/lang/Object;,"TD;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 342
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 343
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 366
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    const-string v0, " mListener="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    const-string v0, " mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    const-string v0, " mAbandoned="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    const-string v0, " mReset="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 304
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 206
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 253
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    .local p2, listener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;,"Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is already a listener registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-object p2, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 133
    iput p1, p0, Landroid/support/v4/content/Loader;->mId:I

    .line 134
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onReset()V

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 292
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 293
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 294
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 295
    return-void
.end method

.method public final startLoading()V
    .locals 2

    .prologue
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    const/4 v1, 0x0

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 195
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mReset:Z

    .line 196
    iput-boolean v1, p0, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 197
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 198
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 242
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 243
    invoke-virtual {p0}, Landroid/support/v4/content/Loader;->onStopLoading()V

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 349
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 350
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    iget v1, p0, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Landroid/support/v4/content/Loader;,"Landroid/support/v4/content/Loader<TD;>;"
    .local p1, listener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;,"Landroid/support/v4/content/Loader$OnLoadCompleteListener<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No listener register"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    iget-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eq v0, p1, :cond_1

    .line 146
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempting to unregister the wrong listener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 149
    return-void
.end method
