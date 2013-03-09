.class public interface abstract Lcom/htc/htcmailwidgets/IBase;
.super Ljava/lang/Object;
.source "IBase.java"


# virtual methods
.method public abstract checkAccount()V
.end method

.method public abstract handleMessage(Landroid/os/Message;)V
.end method

.method public abstract handleUIMessage(Landroid/os/Message;)V
.end method

.method public abstract initTilt()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTiltChanged(F)V
.end method

.method public abstract setAdapter(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htcmailwidgets/MailData;",
            ">;)V"
        }
    .end annotation
.end method
