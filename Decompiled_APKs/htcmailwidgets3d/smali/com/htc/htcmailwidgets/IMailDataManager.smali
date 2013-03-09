.class public interface abstract Lcom/htc/htcmailwidgets/IMailDataManager;
.super Ljava/lang/Object;
.source "IMailDataManager.java"


# virtual methods
.method public abstract onDoEmptyData(JLjava/lang/String;)V
.end method

.method public abstract onDoFirstRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
.end method

.method public abstract onDoRequeryAllExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
.end method

.method public abstract onDoSecondRunExtractData(Landroid/database/Cursor;Lcom/htc/htcmailwidgets/Components$WidgetInfo;JLjava/lang/String;)V
.end method

.method public abstract onDuringDeleteMail(Z)V
.end method

.method public abstract onGetExtractDataCount()I
.end method

.method public abstract onNewMailsNotify()V
.end method

.method public abstract onRequeryAccountsInfo()V
.end method

.method public abstract onResetOrientation(I)V
.end method

.method public abstract onSetExtractDataCount(I)V
.end method

.method public abstract onWidgetLandscape()V
.end method

.method public abstract onWidgetPause()V
.end method

.method public abstract onWidgetPortrait()V
.end method

.method public abstract onWidgetResume()V
.end method
