.class public interface abstract Lcom/htc/dlnamiddlelayer/IServerCommandNotify;
.super Ljava/lang/Object;
.source "IServerCommandNotify.java"


# virtual methods
.method public abstract contentAddedMsg(ILjava/lang/String;Ljava/lang/String;JJ)V
.end method

.method public abstract contentBrowsingDoneMsg(ILjava/lang/String;Ljava/lang/String;JJZ)V
.end method

.method public abstract contentBrowsingErrorMsg(ILjava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
.end method

.method public abstract getContentDetailsMsg(ILjava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
.end method

.method public abstract serverAddedMsg(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract serverRemovedMsg(Ljava/lang/String;)V
.end method

.method public abstract serverThumbnailUpdateMsg(ILjava/lang/String;Ljava/lang/String;)V
.end method
