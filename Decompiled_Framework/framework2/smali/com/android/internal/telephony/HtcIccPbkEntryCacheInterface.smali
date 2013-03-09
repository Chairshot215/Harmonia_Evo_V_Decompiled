.class public interface abstract Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;
.super Ljava/lang/Object;
.source "HtcIccPbkEntryCacheInterface.java"


# virtual methods
.method public abstract addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
.end method

.method public abstract deletePBKEntry(ILandroid/os/Message;)V
.end method

.method public abstract dispose()V
.end method

.method public abstract dropSimPbkEntries()V
.end method

.method public abstract isSIMPhonebookFileId(I)Z
.end method

.method public abstract requestLoadAllPBEntry(Landroid/os/Message;)V
.end method

.method public abstract setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
.end method

.method public abstract updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method
